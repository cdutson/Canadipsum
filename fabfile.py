import os
from hashlib import md5

from fabric.api import run, env, cd
from fabric.contrib import files

config = {
    'release': {
        'user': 'corey',
        'hosts': ['whahay.net'],
        'port': '1189',
        'root': '/home/corey/domains',
        'project_name': 'Canadipsum',
        'git_clone_url': 'https://github.com/cdutson/Canadipsum.git',
        'git_branch': 'master',
        'virtualenv': '/home/corey/.virtualenvs',
        'gunicorn': {
            'app': 'app:app',
            'flags': {
                'p': '/tmp/canadipsum.pid',
                'b': '127.0.0.1:8010',
                'D': '',  # daemon mode.
            },
        }
    }
}

settings = os.environ.get('IPSUM_DEPLOY', 'release')

for k, v in config[settings].iteritems():
    setattr(env, k, v)

def hexhash(path):
    m = md5()
    m.update(open(path, 'r').read())
    return m.hexdigest()

def requirements_need_update(reqfile):
    """
    Do our requirements need an update? Returns a boolean
    """
    current_hash = hexhash(reqfile)

    if not files.exists('.requirements.hash'):
        run('touch .requirements.hash')
    existing_hash = run('cat .requirements.hash')

    if current_hash != existing_hash:
        run('echo {0} > .requirements.hash'.format(current_hash))
        return True
    return False

def deploy():
    project_path = os.path.join(env.root, env.project_name)

    with cd(env.root):
        if not files.exists(project_path):
            run('git clone {0} {1}'.format(env.git_clone_url, project_path))

    with cd(project_path):
        run('git fetch; git checkout -f origin/{0}'.format(env.git_branch))

        venv_path = os.path.join(env.virtualenv, env.project_name)
        if not files.exists(venv_path):
            run('virtualenv {0}'.format(venv_path))

        if requirements_need_update('requirements.txt'):
            run('{0}/bin/pip install -r requirements.txt'.format(venv_path))

        # Boot worker.
        if files.exists(env.gunicorn['flags']['p']):
            # Worker exists, so gracefully restart it.
            run('kill -HUP `cat {0}`'.format(env.gunicorn['flags']['p']))
        else:
            run('{0}/bin/gunicorn {1} {2}'.format(venv_path,
                env.gunicorn['app'],
                ' '.join('-{0} {1}'.format(k, v) for k, v in env.gunicorn['flags'].items())
                ))
