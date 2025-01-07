<<<<<<< HEAD
# Book Library Management System

This Laravel application is designed to manage books in a library. It includes features for adding, borrowing, and returning books, with overdue notifications.

## Features
- Two user roles: `Admin` and `Member`.
- Upload books via CSV file.
- Borrow and return books.
- Overdue notifications sent via email using Artisan commands.
- Pagination for book lists.

## Installation Instructions
1. **Clone the GIT repository**

   git clone https://github.com/Mani190701/bookLibrary.git
   cd bookLibrary
   

2. **Install dependencies.**
  
   composer install
   

3. **Set up the `.env` file.**
   - Copy `.env.example` to `.env`.
   - Update database and email configuration.

4. **Run migrations and seed the database.**
  
   php artisan migrate --seed


5. **Serve the application.**
   npm run dev
   php artisan serve


## Usage
1. Access the application at [http://localhost:8000].
2. Log in with seeded accounts or create a new user.
3. Upload the provided sample CSV file (`books.csv`) to add books.
4. Borrow or return books as needed.

## Commands
**Installing a Laravel Project**

composer create-project laravel/laravel BookLibrary
cd BookLibrary


**Install Spatie for Roles and permission**
composer require spatie/laravel-permission
php artisan vendor:publish --provider="Spatie\Permission\PermissionServiceProvider"
php artisan migrate

**Install Laravel UI (For Basic Authentication):**
composer require laravel/ui
php artisan ui:auth
npm install && npm run dev
php artisan migrate

**Seed Roles (Admin and Member):**
php artisan make:seeder RoleSeeder
**Run the seeder:**
php artisan db:seed --class=RoleSeeder

**Assign Roles to Users**
php artisan tinker

$user = User::find(1); 
$user->assignRole('Admin');

**Create Book Model and Migration:**

php artisan make:model Book -m
php artisan migrate

**Create an AdminController:**
php artisan make:controller AdminController

**Book Controller for Member Actions:**
php artisan make:controller BookController

**Add Indexing**
php artisan make:migration add_indexes_to_books_table --table=books
php artisan migrate

**Overdue Notifications**:
**Sends email notifications for overdue books.**

php artisan make:command SendOverdueNotifications
php artisan make:mail OverdueNotification
php artisan notify:overdue-books
php artisan schedule:run



## Sample Data
- Sample CSV file: `sample_books.csv`.

## Technologies Used
- Laravel 11
- MySQL
- Mailtrap for email testing

## Credits
- Developed by Manikandan S
=======
# bookLibrary
>>>>>>> 0be3be88414753ec06784336cae52cc6e7aafc16
