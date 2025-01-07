<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;

class OverdueNotification extends Mailable
{
    public $book;

    public function __construct($book)
    {
        $this->book = $book;
    }

    public function build()
    {
        return $this->subject('Overdue Book Notification')
            ->view('emails.overdue_notification')
            ->with([
                'title' => $this->book->title,
                'due_date' => $this->book->due_date->format('Y-m-d'),
            ]);
    }
}
