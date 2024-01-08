@extends('layouts.main2')
@section('container')
<div class="row">
    <div class="col-md-6">
        @if($errors->any())
        @foreach($errors->all() as $err)
        <p class="alert alert-danger">{{ $err }}</p>
        @endforeach
        @endif
        <form action="{{ route('mahasiswa.update', $row) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label>Nama <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama" value="{{ old('nama', $row->nama) }}" />
            </div>
            <div class="form-group">
                <label>NIM <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nim" value="{{ old('nim', $row->nim) }}" />
            </div>
            <div class="form-group">
                <label>Program STudi <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="prodi" value="{{ old('prodi', $row->prodi) }}" />
            </div>
            <div class="form-group">
                <label>Alamat <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="alamat" value="{{ old('alamat', $row->alamat) }}" />
            </div>
            <div class="form-group">
                <label>Published <span class="text-danger">*</span></label>
                <input class="form-control" type="time" name="created_at" value="{{ old('created_at', $row->created_at) }}" />
            </div>
            <div class="form-group">
                <button class="btn btn-primary">Simpan</button>
                <a class="btn btn-danger" href="{{ route('mahasiswa.index') }}">Kembali</a>
            </div>
        </form>
    </div>
</div>
@endsection