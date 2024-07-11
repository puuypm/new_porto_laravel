@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('experience.store') }}" method="post">
                @csrf
                <div class="form-group mb-3">
                    <label for="">Nama Jabatan</label>
                    <input type="text" name="job_name" placeholder="Masukkan Nama Jabatan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Perusahaan</label>
                    <input type="text" name="place" placeholder="Masukkan Nama Perusahaan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Lokasi</label>
                    <input type="text" name="location" placeholder="Masukkan Nama Lokasi Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Masuk</label>
                    <input type="date" name="tahunmasuk" placeholder="Masukkan Tahun Masuk Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Keluar</label>
                    <input type="date" name="tahunkeluar" placeholder="Masukkan Tahun Keluar Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Deskripsi Pekerjaan</label>
                    <input type="text" name="job_desk" placeholder="Masukkan Deskripsi Pekerjaan Anda"
                        class="form-control">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
