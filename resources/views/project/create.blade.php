@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('project.store') }}" method="post">
                @csrf
                <div class="form-group mb-3">
                    <label for="">Nama Project</label>
                    <input type="text" name="nama_project" placeholder="Masukkan Nama Project Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Deskripsi Project</label>
                    <textarea name="project_desk" id="" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="gambar" class="form-label">Gambar Project</label>
                    <input type="file" name="gambar" class="form-control" id="gambar" accept=".png, .jpg, .jpeg, .gif, .svg, .webp" required>
                  </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
