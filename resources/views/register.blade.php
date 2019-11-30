<!doctype html>
<html lang="en">
<head>
	<title>Daftar</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="icon" href="icons8-graduation-cap-64.png" sizes="16x16" type="image/png">

	<!-- Main CSS --> 
	<link rel="stylesheet" href="css/style.css">

	<!-- Font Awesome -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body class="right" style="background-image:url('images/demo/backgrounds/wisuda.png'); background-size: cover;">

	<div class="wrapper">

		<div class="container">
			<!-- Header -->
			<header>
				<h1>Daftar</h1>
			</header>

			<!-- Main content area -->
			<main>
				<form action="{{ route('proses') }}" method="POST">
					<input type="text" size="3" class="stretch" placeholder="email" /><br>
					<input type="password" size="3" class="stretch" placeholder="password" /><br>
					<input type="submit" value="Sign Up" />
				</form>
			</main>
			<h4>Sudah punya akun? Masuk <a href="http://localhost/kuyliah/public/login">di sini</a></h4>
		</div>
	</div>
</body>
</html>
