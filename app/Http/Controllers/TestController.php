<?php

namespace App\Http\Controllers;

use App\Jurusan;
use App\Type;
use \Illuminate\Support\Facades\Cookie;
use Illuminate\Http\Request;
use App\SoalExI;
use App\SoalSxI;
use App\SoalTxF;
use App\SoalJxP;
use function Sodium\compare;

class TestController extends Controller
{
    public function getSoalExI(Request $request)
    {
        $soal = SoalExI::get()->random(5)->toArray();
        dd($soal);
    }

    public function getTest1(Request $request)
    {
        Cookie::queue(Cookie::forget('test-1'));
        Cookie::queue(Cookie::forget('test-2'));
        Cookie::queue(Cookie::forget('test-3'));
        Cookie::queue(Cookie::forget('test-4'));

        $soal = SoalExI::get()->random(5);
        $title = 'Soal bagian 1/4 "Introvert vs. Extrovert"';
        return view('submit-test', compact('soal', 'title'));
    }

    public function getTest2(Request $request)
    {
        $soal = SoalSxI::get()->random(5);
        $title = 'Soal bagian 2/4 "Sensing vs. Intuitive"';
        return view('submit-test', compact('soal', 'title'));
    }

    public function getTest3(Request $request)
    {
        $soal = SoalTxF::get()->random(5);
        $title = 'Soal bagian 3/4 "Thinking vs. Feeling"';
        return view('submit-test', compact('soal', 'title'));
    }

    public function getTest4(Request $request)
    {
        $soal = SoalJxP::get()->random(5);
        $title = 'Soal bagian 4/4 "Judging vs. Perceiving"';
        $action = "result";
        return view('submit-test', compact('soal', 'title', 'action'));
    }

    public function submitTest1(Request $request)
    {
        Cookie::queue('test-1', json_encode($request->answer));
        return redirect('submit-test-2');
    }

    public function submitTest2(Request $request)
    {
        Cookie::queue('test-2', json_encode($request->answer));
        return redirect('submit-test-3');
    }

    public function submitTest3(Request $request)
    {
        Cookie::queue('test-3', json_encode($request->answer));
        return redirect('submit-test-4');
    }

    public function submitTest4(Request $request)
    {
        Cookie::queue('test-4', json_encode($request->answer));
        // TODO : Calculation
        $exi_ = $this->checkArray(array_count_values(json_decode(Cookie::get('test-1'))));
        $sxn_ = $this->checkArray(array_count_values(json_decode(Cookie::get('test-2'))));
        $txf_ = $this->checkArray(array_count_values(json_decode(Cookie::get('test-3'))));
        $jxp_ = $this->checkArray(array_count_values($request->answer));

        $exi = $exi_["a"] > $exi_["b"] ? "E" : "I";
        $sxn = $sxn_["a"] > $sxn_["b"] ? "S" : "N";
        $txf = $txf_["a"] > $txf_["b"] ? "T" : "F";
        $jxp = $jxp_["a"] > $jxp_["b"] ? "J" : "P";
        $kepribadian = $exi . $sxn . $txf . $jxp;

        $details = Type::whereTypeName($kepribadian)->first();

        $jurusan = Jurusan::with('kampus')->where('tipe', $kepribadian)->get();
        return view('result', compact('kepribadian', 'details', 'jurusan'));
    }

    private function checkArray($arr){
        if(!isset($arr["a"])){
            $arr["a"] = 0;
        }
        if(!isset($arr["b"])){
            $arr["b"] = 0;
        }
        return $arr;
    }
}
