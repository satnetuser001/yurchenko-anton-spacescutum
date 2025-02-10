<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    /**
     * Show user dashboard.
     */
    public function index()
    {
        return view('dashboard', ['user' => Auth::user()]);
    }

    /**
     * Regenerate API token.
     */
    public function regenerateToken()
    {
        $user = Auth::user();
        $user->tokens()->delete();
        $newToken = $user->createToken('web_regen')->plainTextToken;

        return back()->with('token', $newToken);
    }
}
