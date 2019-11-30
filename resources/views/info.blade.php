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
				<div class="block clear"><i class="far fa-edit"></i><br><strong>Tes MBTI (Myer Briggs Type Indicator)</strong></div>
			</li>
			<li class="one_quarter"></li>
		</ul>
	</section>
</div>
<div class="wrapper row3">
	<main class="hoc container clear"> 
		<!-- main body -->
		<div class="content"> 			
			<p>MBTI dikembangkan oleh Katharine Cook Briggs dan putrinya yang bernama Isabel Briggs Myers berdasarkan teori kepribadian dari Carl Gustav Jung. MBTI bersandar pada empat dimensi utama yang saling berlawanan (dikotomis). Walaupun berlawanan sebetulnya kita memiliki semuanya, hanya saja kita lebih cenderung/nyaman pada salah satu arah tertentu. Empat dimensi yang saling berlawanan yaitu Extrovert vs. Introvert, Sensing vs. Intuition, Thinking vs. Feeling, dan Judging vs. Perceiving.</p>
			<p>Manfaat yang diperoleh dari tes ini adalah dapat mengembangkan diri, dapat memahami orang lain, juga dapat bimbingan konseling yang lebih sesuai. Selain itu, disini kamu bisa melakukan tes untuk mengetahui jurusan kuliah yang cocok denganmu.</p>
			<p>Ambil tesnya <a href="{{ route('test') }}">di sini</a>.</p>
		</div>
		<!-- / main body -->
		<div class="clear"></div>
	</main>
</div>
@endsection
