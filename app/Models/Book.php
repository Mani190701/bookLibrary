<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'author',
        'ISBN',
        'published_date',
        'status',
        'borrowed_date',
        'borrower_id',
        'due_date',
    ];

    
}
