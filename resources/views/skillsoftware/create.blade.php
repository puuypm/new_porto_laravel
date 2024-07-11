@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('skillsoftware.store') }}" method="post">
                @csrf
                <div class="form-group mb-3">
                    <label for="">Software Skills</label>
                    <input type="text" name="software_skill" placeholder="Masukkan Software Skill Anda"
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
