@extends('template')

@section('title')
    <title>kuyliah</title>
@endsection

@section('content')
    <div id="pageintro" class="hoc clear">
        <article>
            <h3 class="heading">Ketahui Potensimu</h3>
            <p>Cari tahu minat dan bakatmu. Ketahui potensimu. Ambil jurusan sesuai passionmu!</p>
            <footer>
                <ul class="nospace inline pushright">
                    <li><a class="btn" href="{{ route('test') }}">Ambil Tes</a></li>
                    <li><a class="btn inverse" href="{{ route('info') }}">Info Tes</a></li>
                </ul>
            </footer>
        </article>
    </div>
    <div class="wrapper row2" id="beasiswa">
        <section class="hoc container clear">
            <div class="sectiontitle">
                <p class="nospace font-xs"></p>
                <h6 class="heading"><b>BEASISWA</b></h6>
            </div>
            <ul id="latest" class="nospace group sd-third">
                @foreach($beasiswas->take(3) as $index => $beasiswa)
                    <li class="one_third {{ $index == 0 ? 'first' : '' }}">
                        <article>
                            <figure>
                                <a class="imgover" href="{{ $beasiswa->filter(".entry-title > a")->attr("href") }}" target="_blank">
                                    <img src="https://asset.kompas.com/crops/1iNFWz6WxgMKn-FMteZsxuHhCAc=/0x0:0x0/750x500/data/photo/2016/08/22/1529400ThinkstockPhotos-484058790p.jpg" alt="">
                                </a>
                                <figcaption>
                                    <ul class="nospace meta clear">
                                        <li><i class="fas fa-user"></i> <a href="{{ $beasiswa->filter(".entry-title > a")->attr("href") }}" target="_blank">Beasiswa</a></li>
                                        <li>
                                            <time>{{ $beasiswa->filter('span > .ht-day')->text() . " " . $beasiswa->filter('span > .ht-month-year')->text() }}</time>
                                        </li>
                                    </ul>
                                    <h6 class="heading"><a href="{{ $beasiswa->filter(".entry-title > a")->attr("href") }}" target="_blank">{{ $beasiswa->filter("h1 > a")->text() }}</a></h6>
                                </figcaption>
                            </figure>
                            <p>{{ substr($beasiswa->filter('.entry-content')->text(), 0, 160) . "..." }}</p>
                        </article>
                    </li>
                @endforeach
            </ul>
        </section>
    </div>
@endsection
