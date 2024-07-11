<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = Project::get();
        $title = "Data Project";
        return view('project.index', compact('datas', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Tambah Project";
        return view('project.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        Project::create([
            'nama_project' => $request->nama_project,
            'project_desk' => $request->project_desk,
            'gambar' => $request->gambar,
        ]);

        return back();
        return redirect()->to('admin/project')->with('message', 'Data berhasil ditambah');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        // select * from tbluser where id = id
        $edit = Project::find($id);
        $title = "Edit Data Project" . $edit->nama_project;
        return view('project.edit', compact('edit', 'title'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        Project::where('id', $id)->update([
            'nama_project' => $request->nama_project,
            'project_desk' => $request->project_desk,
            'gambar' => $request->gambar,
        ]);

        return redirect()->to('admin/project')->with('message', 'Project berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Project::where('id', $id)->delete();
        return redirect()->to('admin/project')->with('message', 'Data berhasil dihapus');
    }
}
