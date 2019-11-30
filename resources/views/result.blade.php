@extends('template')

@section('title')
<title>test MBTI</title>
@endsection

@section('content')
<div id="breadcrumb" class="hoc clear"> 
	<ul></ul>
</div>
@endsection

@section('content2')
<div class="wrapper row1">
	<section id="ctdetails" class="hoc clear"> 
		<ul class="nospace clear">
			<li class="one_quarter first"></li>
			<li class="one_quarter">
				<div class="block clear"><i class="far fa-edit"></i><br><strong>Inilah Hasilnya</strong></div>
			</li>
			<li class="one_quarter"></li>
		</ul>
	</section>
</div>
<div class="wrapper row3">
	<main class="hoc container clear"> 
		<!-- main body -->
		<div class="content"> 			
			<p>Dari tes yang telah kau kerjakan, inilah hasil yang kau dapatkan.</p>
			<p>Kamu memiliki tipe kepribadian <b>{{ $kepribadian }}</b></p> 
			{!! str_replace("•", "<br>•", $details->Detail) !!}
			<br><p>berikut jurusan beserta top universitas di tiap jurusan yang cocok sesuai kepribadian anda : </p>
			@foreach($jurusan as $j)
				<b>{{ $j->jurusan }}</b> <br>
				<ul>
					@foreach($j->kampus as $kampus)
						<li>{{ $kampus->kampus }}</li>
					@endforeach
				</ul>
			@endforeach
		</div>
		<!-- / main body -->
		<div class="clear"></div>
	</main>
</div>
@endsection
