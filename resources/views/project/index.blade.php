@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <div align="right" class="mb-3">
                <a href="{{ route('project.create') }}" class="btn btn-primary">Tambah Project</a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Project</th>
                            <th>Deskripsi Project</th>
                            <th>Gambar Project</th>
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
                                <td>{{ $data->nama_project }}</td>
                                <td>{{ $data->project_desk }}</td>
                                <td>{{ $data->gambar }}</td>
                                <td>
                                    <a href="{{ route('project.edit', $data->id) }}" class="btn btn-success btn-sm">Edit</a>

                                    <form method="POST" action="{{ route('project.destroy', $data->id) }}"
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
