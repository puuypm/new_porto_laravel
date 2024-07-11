@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">Edit Data Keahlian Bahasa</div>
        <div class="card-body">
            <form action="{{ route('skillbahasa.update', $edit->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="">Bahasa</label>
                    <input value="{{ $edit->bahasa }}" type="text" name="bahasa"
                        placeholder="Masukkan Keahlian Bahasa Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
