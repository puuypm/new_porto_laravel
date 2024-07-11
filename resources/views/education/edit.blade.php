@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">Edit Data Pendidikan</div>
        <div class="card-body">
            <form action="{{ route('education.update', $edit->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="">Nama Sekolah</label>
                    <input value="{{ $edit->nama_sekolah }}" type="text" name="nama_sekolah"
                        placeholder="Masukkan Nama Sekolah Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Jurusan</label>
                    <input value="{{ $edit->jurusan }}" type="text" name="jurusan"
                        placeholder="Masukkan Nama Jurusan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Fakultas</label>
                    <input value="{{ $edit->fakultas }}" type="text" name="fakultas"
                        placeholder="Masukkan Nama Fakultas Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Masuk</label>
                    <input value="{{ $edit->tahunmasuk }}" type="date" name="tahunmasuk"
                        placeholder="Masukkan Tahun Mulai Anda Sekolah" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Selesai</label>
                    <input value="{{ $edit->tahunselesai }}" type="date" name="tahunselesai"
                        placeholder="Masukkan Tahun Selesai Anda Sekolah" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Kegiatan</label>
                    <input value="{{ $edit->kegiatan }}" type="text" name="kegiatan"
                        placeholder="Masukkan Deskripsi Kegiatan Anda di Sekolah" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
