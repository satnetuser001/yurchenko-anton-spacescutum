@extends('layouts.app')

@section('content')
    <h2>Welcome, {{ $user->name }}</h2>
    <p>Your email: {{ $user->email }}</p>

    @if(session('token'))
        <div class="alert alert-info">
            Ваш API-токен: <strong>{{ session('token') }}</strong>
        </div>
    @endif

    <form method="POST" action="{{ route('regenerate.token') }}">
        @csrf
        <button type="submit">Regenerate API Token</button>
    </form>

    <form method="POST" action="{{ route('logout') }}">
        @csrf
        <button type="submit">Logout</button>
    </form>
@endsection
