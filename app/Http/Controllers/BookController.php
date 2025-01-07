<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BookController extends Controller
{
    

public function index()
{
    $books = Book::paginate(10);;
    return view('book.index', compact('books'));
}

public function borrow($id)
{
    $book = Book::findOrFail($id);
    if ($book->status === 'available') {
        $book->update([
            'status' => 'borrowed',
            'borrowed_date' => Carbon::now(),
            'due_date' => Carbon::now()->addDays(7),
            'borrower_id' => Auth::id(),
        ]);
    }

    return back()->with('success', 'Book borrowed.');
}

public function return($id)
{
    $book = Book::findOrFail($id);
    $book->update([
        'status' => 'available',
        'borrowed_date' => null,
        'due_date' => null,
    ]);

    return back()->with('success', 'Book returned.');
}

}
