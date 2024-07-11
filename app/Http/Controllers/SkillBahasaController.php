<?php

namespace App\Http\Controllers;

use App\Models\SkillBahasa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class SkillBahasaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = SkillBahasa::get();
        $title = "Data Keahlian Bahasa";
        return view('skillbahasa.index', compact('datas', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Tambah Keahlian Bahasa";
        return view('skillbahasa.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        SkillBahasa::create([
            'bahasa' => $request->bahasa,
        ]);

        return redirect()->to('admin/skillbahasa')->with('message', 'Data berhasil ditambah');
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
        $edit = SkillBahasa::find($id);
        $title = "Edit Data Keahlian Bahasa" . $edit->bahasa;
        return view('skillbahasa.edit', compact('edit', 'title'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        SkillBahasa::where('id', $id)->update([
            'bahasa' => $request->bahasa,
        ]);

        return redirect()->to('admin/skillbahasa')->with('message', 'Keahlian Bahasa berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        SkillBahasa::where('id', $id)->delete();
        return redirect()->to('admin/skillbahasa')->with('message', 'Data berhasil dihapus');
    }
}
