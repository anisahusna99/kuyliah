<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\DomCrawler\Crawler;

class HomeController extends Controller
{
    public function index()
    {
        $client = new \Goutte\Client();
        $crawler = $client->request("get", "http://beasiswa.id/category/beasiswa/beasiswa-sarjana/");
//        $crawler = $client->request("get", "http://localhost:3000/test.html");
        $beasiswas = [];
        foreach ($crawler->filter("article") as $item) {
            array_push($beasiswas, (new Crawler($item)));
        }
        $beasiswas = collect($beasiswas);
        return view('welcome', compact('beasiswas'));
    }
}
