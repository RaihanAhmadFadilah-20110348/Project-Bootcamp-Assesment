@extends('layouts.main2')
@section('container')
<div class="row">
    <div class="col-md-6">
        @if($errors->any())
        @foreach($errors->all() as $err)
        <p class="alert alert-danger">{{ $err }}</p>
        @endforeach
        @endif
        <form action="{{ route('prodi.update', $row) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label>Program Studi <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="prodi" value="{{ old('prodi', $row->prodi) }}" />
            </div>
            <div class="form-group">
                <label>Semester <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="semester" value="{{ old('semester', $row->semester) }}" />
            </div>
            <div class="form-group">
                <button class="btn btn-primary">Simpan</button>
                <a class="btn btn-danger" href="{{ route('prodi.index') }}">Kembali</a>
            </div>
        </form>
    </div>
</div>
@endsection