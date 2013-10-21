window.onload = function(){
	var slideMenuButton = document.getElementById('slide-menu-button');
	slideMenuButton.onclick = function(e) {
		var site = document.getElementById('site');
		var cl = site.classList;
		if (cl.contains('open')) {
			cl.remove('open');
		} else {
			cl.add('open');
		}
	};
};