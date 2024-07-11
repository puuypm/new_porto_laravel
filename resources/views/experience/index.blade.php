@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <div align="right" class="mb-3">
                <a href="{{ route('experience.create') }}" class="btn btn-primary">Tambah Pengalaman</a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Jabatan</th>
                            <th>Nama Perusahaan</th>
                            <th>Nama Lokasi</th>
                            <th>Tahun Masuk</th>
                            <th>Tahun Keluar</th>
                            <th>Deskripsi Pekerjaan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($datas as $data)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $data->job_name }}</td>
                                <td>{{ $data->place }}</td>
                                <td>{{ $data->location }}</td>
                                <td>{{ $data->tahunmasuk }}</td>
                                <td>{{ $data->tahunkeluar }}</td>
                                <td>{{ $data->job_desk }}</td>
                                <td>
                                    <a href="{{ route('experience.edit', $data->id) }}"
                                        class="btn btn-success btn-sm">Edit</a>

                                    <form method="POST" action="{{ route('experience.destroy', $data->id) }}"
                                        class="d-inline">
                                        @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button class="btn btn-danger btn-sm" type="submit">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>
@endsection