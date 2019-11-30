<!DOCTYPE html>
<html lang="">
<head>
	@yield('title')
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<link rel="icon" href="icons8-graduation-cap-64.png" sizes="16x16" type="image/png">
</head>
<body id="top">
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay padtop" style="background-image:url('images/demo/backgrounds/wisuda.png');"> 
		<header id="header" class="hoc clear">
			<div id="logo" class="fl_left"> 
				<h1><a href="{{ route('home') }}"><i class="fas fa-user-graduate"></i>kuyliah</a></h1>
			</div>
			<nav id="mainav" class="fl_right"> 
				<ul class="clear">
					<li class="active"><a href="{{ route('test') }}">Test</a></li>
					<li><a href="#beasiswa">Beasiswa</a></li>
				</ul>
			</nav>
		</header>

		@yield('content')

	</div>
	<!-- End Top Background Image Wrapper -->

	@yield('content2')

	<div class="wrapper row5">
		<div id="copyright" class="hoc clear"> 
			<p class="fl_left">Copyright &copy; 2019 - All Rights Reserved - <a href="#">kuyliah</a></p>
		</div>
	</div>
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.beasiswa.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	{{--<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>--}}
	@yield('js')
</body>
</html>