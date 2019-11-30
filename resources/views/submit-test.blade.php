@extends('template')

@section('title')
    <title>test MBTI</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style type="text/css">
        /*Tabs*/
        body {
            background: #191828;
            color: #efedef;
            font-family: "Roboto", Arial, Helvetica, sans-serif;
            font-size: 16px;
            font-weight: 300;
            letter-spacing: 0.01em;
            line-height: 1.6em;
            margin: 0;
            padding: 100px;
        }

        /*h1 {
          font-size: 40px;
          line-height: 0.8em;
          color: rgba(255,255,255,0.2);}
        a {
            background: #fd264f;
            color: #fff;
            display: block;
            font-size: 12px;
            line-height: 1em;
            margin: 0;
            padding: 5px 110px;
            position: fixed;
            top: 20px;
            right: -100px;
            text-align: center;
            text-decoration: none;
            transform: rotate(45deg);
        }*/
        button:focus,
        input:focus,
        textarea:focus,
        select:focus {
            outline: none;
        }


        .tabs {
            display: block;
            display: -webkit-flex;
            display: -moz-flex;
            display: flex;
            -webkit-flex-wrap: wrap;
            -moz-flex-wrap: wrap;
            flex-wrap: wrap;
            margin: 0;
            overflow: hidden;
        }

        .tabs [class^="tab"] label,
        .tabs [class*=" tab"] label {
            color: #03a5d5;
            cursor: pointer;
            display: block;
            font-size: 1.1em;
            font-weight: 300;
            line-height: 1em;
            padding: 2rem 0;
            text-align: center;
        }

        .tabs [class^="tab"] [type="radio"],
        .tabs [class*=" tab"] [type="radio"] {
            border-bottom: 1px solid rgba(239, 237, 239, 0.5);
            cursor: pointer;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            display: block;
            width: 100%;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }

        .tabs [class^="tab"] [type="radio"]:hover, .tabs [class^="tab"] [type="radio"]:focus,
        .tabs [class*=" tab"] [type="radio"]:hover,
        .tabs [class*=" tab"] [type="radio"]:focus {
            border-bottom: 1px solid #03a5d5;
        }

        .tabs [class^="tab"] [type="radio"]:checked,
        .tabs [class*=" tab"] [type="radio"]:checked {
            border-bottom: 2px solid #03a5d5;
        }

        .tabs [class^="tab"] [type="radio"]:checked + div,
        .tabs [class*=" tab"] [type="radio"]:checked + div {
            opacity: 1;
        }

        .tabs [class^="tab"] [type="radio"] + div,
        .tabs [class*=" tab"] [type="radio"] + div {
            display: block;
            opacity: 0;
            padding: 2rem 0;
            width: 90%;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }

        .tabs .tab-2 {
            width: 20%;
        }

        .tabs .tab-2 [type="radio"] + div {
            width: 500%;
            margin-left: 500%;
        }

        .tabs .tab-2 [type="radio"]:checked + div {
            margin-left: 0;
        }

        .tabs .tab-2 #tab2-2 [type="radio"] + div {
            margin-left: 100%;
        }

        .tabs .tab-2 #tab2-2 [type="radio"]:checked + div {
            margin-left: -100%;
        }

        .tabs .tab-2:last-child [type="radio"] + div {
            margin-left: 100%;
        }

        .tabs .tab-2:last-child [type="radio"]:checked + div {
            margin-left: -400%;
        }
    </style>
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
                    <div class="block clear"><i class="far fa-edit"></i><br><strong>Ketahui Potensimu Sekarang</strong>
                    </div>
                </li>
                <li class="one_quarter"></li>
            </ul>
        </section>
    </div>
    <div class="wrapper row3" id="test">
        <main class="hoc container clear">
            <!-- main body -->
            <div class="content">
                <h4>{{ $title }}</h4>
                <form method="post" @isset($action) action="{{ $action }}" @endisset>
                    @csrf
                    <table class="table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Soal</th>
                            <th>A</th>
                            <th>B</th>
                            <th>Jawab</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($soal as $key => $val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->soal }}</td>
                                <td>{{ $val->a }}</td>
                                <td>{{ $val->b }}</td>
                                <td>
                                    <label for="" style="float: left">
                                        <input type="radio" id="rad-1" name="answer[{{ $key }}]" value="a" required>
                                        A
                                    </label>
                                    <label for="" style="float: right">
                                        <input type="radio" id="rad-1" name="answer[{{ $key }}]" value="b">
                                        B
                                    </label>
                                </td>
                            </tr>
                        @endforeach

                        </tbody>
                    </table>
                    <button class="right btn btn-primary" type="submit">Selanjutnya</button>
                </form>
            </div>
            <!-- / main body -->
            <div class="clear"></div>
        </main>
    </div>
@endsection

@section('js')
    <script>
    </script>
@endsection