<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Book;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;

class SendOverdueNotifications extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'notify:overdue-books';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send email notifications to members with overdue books';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        // Fetch all overdue books
        $overdueBooks = Book::where('status', 'borrowed')
            ->where('due_date', '<', Carbon::now())
            ->get();

        if ($overdueBooks->isEmpty()) {
            $this->info('No overdue books found.');
            return;
        }

        // Notify each user with overdue books
        foreach ($overdueBooks as $book) {
            $user = $book->borrower_id; // Assuming `borrowedBy` is a relation to the User model
$userid= User::find($user);
            if ($userid) {
                Mail::to($userid->email)->send(new \App\Mail\OverdueNotification($book));
                $this->info("Notification sent to {$userid->email} for book: {$book->title}");
            }
        }
    }
}
