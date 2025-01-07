@extends('layouts.app')

@section('content')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="row">
    <div class="col"></div>
    <div class="col-10">
        <h3 class="text-center">Manage Books..</h3>
        <input type="text" class="form-control" id="search" placeholder="Search Book Title/ISBN/Author">
        <table class="table table-hover mt-3" id="resultTable">
            <thead >
                <tr class="table-success ">
                    <th>S.No</th>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    
                    {{-- <th>Status</th> --}}
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($books as $book)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $book->ISBN }}</td>
                        <td>{{ $book->title }}</td>
                        <td>{{ $book->author }}</td>
                  
                        {{-- <td><span class="badge badge-pill badge-danger text-primary">{{ $book->status }}</span></td> --}}
                        @if(  $book->status == 'available' )
                        <td>
                            <form action="{{ route('books.borrow', $book->id) }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-success">Borrow</button>
                            </form>
                        </td>
                        @endif
                        @if(  $book->status == 'borrowed' )
                        <td>
                            <form action="{{ route('books.return', $book->id) }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-primary">Return</button>
                            </form>
                        </td>
                        @endif
                    </tr>
        
               
                @endforeach
         
            </tbody>
        </table>
        <tr> <td colspan="3">{{ $books->links('pagination::bootstrap-5') }} </td></tr>
    </div>
    <div class="col"></div>
</div>

<script>
    $(document).ready(function () {
        $('#search').on('input', function () {
            let query = $(this).val().toLowerCase();
            $('#resultTable tbody tr').filter(function () {
                $(this).toggle(
                    $(this).text().toLowerCase().includes(query)
                );
            });
        });
    });
</script>
@endsection