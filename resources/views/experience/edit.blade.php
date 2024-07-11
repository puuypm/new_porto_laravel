@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">Edit Data Pengalaman</div>
        <div class="card-body">
            <form action="{{ route('experience.update', $edit->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="">Nama Jabatan</label>
                    <input value="{{ $edit->job_name }}" type="text" name="job_name"
                        placeholder="Masukkan Nama Jabatan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Perusahaan</label>
                    <input value="{{ $edit->place }}" type="text" name="place"
                        placeholder="Masukkan Nama Perusahaan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Lokasi</label>
                    <input value="{{ $edit->location }}" type="text" name="location"
                        placeholder="Masukkan Nama Lokasi Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Masuk</label>
                    <input value="{{ $edit->tahunmasuk }}" type="date" name="tahunmasuk"
                        placeholder="Masukkan Tahun Mulai Anda Bekerja" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Keluar</label>
                    <input value="{{ $edit->tahunkeluar }}" type="date" name="tahunkeluar"
                        placeholder="Masukkan Tahun Keluar Anda Bekerja" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Deskripsi Pekerjaan</label>
                    <input value="{{ $edit->job_desk }}" type="text" name="job_desk"
                        placeholder="Masukkan Deskripsi Pekerjaan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
