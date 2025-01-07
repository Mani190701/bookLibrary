# Book Library Management System

This Laravel application is designed to manage books in a library. It includes features for adding, borrowing, and returning books, with overdue notifications.

## Features
- Upload books via CSV file.
- Borrow and return books.
- Overdue notifications sent via email using Artisan commands.
- Pagination for book lists.

## Installation Instructions
1. Clone the repository or extract the ZIP file.
   ```bash
   git clone https://github.com/your-repo/book-library.git
   cd book-library
   ```

2. Install dependencies.
   ```bash
   composer install
   ```

3. Set up the `.env` file.
   - Copy `.env.example` to `.env`.
   - Update database and email configuration.

4. Run migrations and seed the database.
   ```bash
   php artisan migrate --seed
   ```

5. Serve the application.
   ```bash
   php artisan serve
   ```

## Usage
1. Access the application at [http://localhost:8000](http://localhost:8000).
2. Log in with seeded accounts or create a new user.
3. Upload the provided sample CSV file (`sample_books.csv`) to add books.
4. Borrow or return books as needed.

## Commands
- **Overdue Notifications**:
  Sends email notifications for overdue books.
  ```bash
  php artisan notify:overdue-books
  ```

## Sample Data
- Sample CSV file: `sample_books.csv`.

## Technologies Used
- Laravel 11
- MySQL
- Mailtrap for email testing

## Credits
- Developed by Manikandan S
