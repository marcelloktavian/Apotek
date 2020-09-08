<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>

	<!-- JavaScript -->
	<script type="text/javascript" src="resources/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	
</head>
<body>
	<h1>Test</h1>
	<button onclick="logout()">LogOut</button>
</body>
<script type="text/javascript">
	function logout() {
		Swal.fire({
			title: 'Confirmation',
			text: 'Are you sure you want to logout?',
			icon: 'question',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, logout!'
		}).then((result) => {
			if (result.isConfirmed) {
				window.location.href = "<?php echo PATH; ?>index.php?page=login&&action=logout";
			}
		})
	}
</script>
</html>