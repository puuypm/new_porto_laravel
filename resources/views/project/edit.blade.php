@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('project.update', $edit->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="">Nama Project</label>
                    <input value="{{ $edit->nama_project }}" type="text" name="nama_project"
                        placeholder="Masukkan Nama Project Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Deskripsi Project</label>
                    <textarea name="project_desk" id="" cols="30" rows="10" class="form-control" required>{{ $edit->project_desk }}</textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="gambar" class="form-label">Gambar Project</label>
                    <div class="my-2">
                      <img src="" alt="" width="80" id="pict">
                    </div>
                    <input type="file" name="gambar" class="form-control" id="gambar" accept=".png, .jpg, .jpeg, .gif, .svg, .webp">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
