<!DOCTYPE html>
<html>
<head>
    <title>Overdue Book Notification</title>
</head>
<body>
    <h1>Overdue Book Notification</h1>
    <p>Dear Member,</p>
    <p>The following book is overdue:</p>
    <ul>
        <li><strong>Title:</strong> {{ $title }}</li>
        <li><strong>Due Date:</strong> {{ $due_date }}</li>
    </ul>
    <p>Please return the book as soon as possible to avoid further penalties.</p>
    <p>Thank you!</p>
</body>
</html>
