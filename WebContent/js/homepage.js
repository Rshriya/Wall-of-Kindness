window.onload = function(e) {

	logout = document.getElementById('logout');
	logout.onclick = function() {
		if (confirm('Are you sure?')) {
			alert('You have successfully logged out!');
			window.location = 'login.html';
		} else {
			// do other thing
		}
	};

};
