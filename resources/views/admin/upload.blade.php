@extends('layouts.app')

@section('content')
<div class="row mt-5">
    <div class="col"></div>
    <div class="col-6">
        <h1 class="text-center">Upload CSV File</h1>
        <form class="mt-3" action="{{ route('admin.upload.csv') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="file" class="form-control" name="file" required>
            <button type="submit" class="btn btn-success w-100 mt-3"> Upload CSV</button>
        </form>
    </div>
    <div class="col"></div>
</div>


@endsection