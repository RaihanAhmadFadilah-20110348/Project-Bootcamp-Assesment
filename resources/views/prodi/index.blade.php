@extends('layouts.main2')
@section('container')
<h2 class="text-center mb-4">Data Program Studi</h2>
    @if(session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
<div class="card card-default">
    <div class="card-header">
        <form class="form-inline">
            <div class="form-group mr-1">
                <input class="form-control" type="text" name="a" value="{{ $a}}" placeholder="Pencarian..." />
            </div>
            <div class="form-group mr-1">
                <button class="btn btn-success">Cari</button>
            </div>
            <div class="form-group mr-1">
                <a class="btn btn-primary" href="{{ route('prodi.create') }}">Tambah</a>
            </div>
        </form>
    </div>
    <div class="card-body p-0 table-responsive">
        <table class="table table-sm table-bordered table-dark table-hover mb-0">
            <thead>
                <tr class="bg-secondary text-white">
                    <th>No</th>
                    <th>Program Studi</th>
                    <th>Semester</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <?php $no = 1 ?>
            @foreach($rows as $row)
            <tr>
                <td>{{ $no++ }}</td>
                <td>{{ $row->prodi }}</td>
                <td>{{ $row->semester }}</td>
                <td>
                    <a class="btn btn-sm btn-warning text-white" href="{{ route('prodi.edit', $row) }}">Ubah</a>
                    <form method="POST" action="{{ route('prodi.destroy', $row) }}" style="display: inline-block;">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-sm btn-danger" onclick="return confirm('Hapus Data?')">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
    <div class="card-footer">
        <div class="form-group mr-1">
            <a class="btn btn-secondary float-right" href="/dashboard">Kembali</a>
        </div>
    </div>
</div>
@endsection