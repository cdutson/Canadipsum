
//Yeah I ended up using jquery cause LAZY.
$(document).ready(function(){
	document.getElementsByTagName('html')[0].className += " js";
	$.backstretch('/static/img/bg/'+document.getElementsByTagName('html')[0].getAttribute('data-bg'));
});