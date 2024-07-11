<?php

namespace App\Http\Controllers;

use App\Models\SkillSoftware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class SkillSoftwareController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = SkillSoftware::get();
        $title = "Data Keahlian Software";
        return view('skillsoftware.index', compact('datas','title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Tambah Keahlian Software";
        return view('skillsoftware.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        SkillSoftware::create([
            'software_skill' => $request->software_skill,
        ]);

        return redirect()->to('admin/skillsoftware')->with('message', 'Data berhasil ditambah');
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
        $edit = SkillSoftware::find($id);
        $title = "Edit Data Keahlian Software" . $edit->software_skill;
        return view('skillsoftware.edit', compact('edit', 'title'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        SkillSoftware::where('id', $id)->update([
            'software_skill' => $request->software_skill,
        ]);

        return redirect()->to('admin/skillsoftware')->with('message', 'Keahlian Software berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        SkillSoftware::where('id', $id)->delete();
        return redirect()->to('admin/skillsoftware')->with('message', 'Data berhasil dihapus');
    }
}
