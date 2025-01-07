<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class AdminController extends Controller
{

    public function dashboard(){
return view('admin.upload');
    }
    public function uploadCsv(Request $request)
{
    $request->validate(['file' => 'required|file|mimes:csv,txt']);
    $file = fopen($request->file('file')->getRealPath(), 'r');

    while (($data = fgetcsv($file)) !== false) {
        Book::create([
            'title' => $data[0],
            'author' => $data[1],
            'ISBN' => $data[2],
            'published_date' => $data[3],
            'status' => $data[4] ?? 'available',
        ]);
    }

    fclose($file);

    return back()->with('success', 'CSV uploaded successfully.');
}
}
