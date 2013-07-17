
//Yeah I ended up using jquery cause LAZY.
$(document).ready(function(){
	$.backstretch('/static/img/bg/'+document.getElementsByTagName('html')[0].getAttribute('data-bg'));
});