<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function edit(User $user)
    {   
        $user = Auth::user();
        return view('profile', compact('user'));
    }

    public function update(Request $request, $id)
    { 
        $user = User::findOrFail($id);
        $user->update($request->all());
        // $user->role()->sync(array_filter((array)$request->input('role')));

        // return back();
        return back()->with('message', 'Data updated successfully.');
    }
}