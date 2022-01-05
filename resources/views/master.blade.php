<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{ asset('favicon.ico') }}" rel="shortcut icon" type="image/x-icon">
    <title>@yield('title') - {{ config('app.name') }}</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body style="background-color: #f2f3f5;">
    <div class="container">
        <div class="mx-auto">
            <div class="bg-white my-4 p-4 shadow-sm">
                @yield('content')
            </div>
        </div>
    </div>
    <script type="text/javascript" src="{{ asset('js/app.js') }}"></script>
</body>
</html>
