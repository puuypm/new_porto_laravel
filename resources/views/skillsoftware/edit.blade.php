@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">Edit Data Keahlian Software</div>
        <div class="card-body">
            <form action="{{ route('skillsoftware.update', $edit->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="">Software Skills</label>
                    <input value="{{ $edit->software_skill }}" type="text" name="software_skill"
                        placeholder="Masukkan Software Skills Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
