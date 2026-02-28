<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <?php
    header('Permissions-Policy: interest-cohort=()');
    ?>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('lorekeeper.settings.site_name', 'Dreadfarer') }} -@yield('title')</title>

    <!-- Primary Meta Tags -->
    <meta name="title" content="{{ config('lorekeeper.settings.site_name', 'Dreadfarer') }} -@yield('title')">
    <meta name="description" content="@if (View::hasSection('meta-desc')) @yield('meta-desc') @else {{ config('lorekeeper.settings.site_desc', 'A Dreadfarer ARPG') }} @endif">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ config('app.url', 'http://localhost') }}">
    <meta property="og:image" content="@if (View::hasSection('meta-img')) @yield('meta-img') @else {{ asset('images/meta-image.png') }} @endif">
    <meta property="og:title" content="{{ config('lorekeeper.settings.site_name', 'Dreadfarer') }} -@yield('title')">
    <meta property="og:description" content="@if (View::hasSection('meta-desc')) @yield('meta-desc') @else {{ config('lorekeeper.settings.site_desc', 'A Dreadfarer ARPG') }} @endif">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="{{ config('app.url', 'http://localhost') }}">
    <meta property="twitter:image" content="@if (View::hasSection('meta-img')) @yield('meta-img') @else {{ asset('images/meta-image.png') }} @endif">
    <meta property="twitter:title" content="{{ config('lorekeeper.settings.site_name', 'Dreadfarer') }} -@yield('title')">
    <meta property="twitter:description" content="@if (View::hasSection('meta-desc')) @yield('meta-desc') @else {{ config('lorekeeper.settings.site_desc', 'A Dreadfarer ARPG') }} @endif">

    <!-- No AI scraping directives -->
    <meta name="robots" content="noai">
    <meta name="robots" content="noimageai">

    @php
        $faviconPath = public_path('favicon.ico');
        $faviconUrl = file_exists($faviconPath)
            ? asset('favicon.ico').'?v='.filemtime($faviconPath)
            : asset('favicon.ico');
    @endphp
    <link rel="icon" type="image/x-icon" href="{{ $faviconUrl }}">
    <link rel="shortcut icon" href="{{ $faviconUrl }}">

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/site.js') }}"></script>
    <script src="{{ asset('js/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap4-toggle.min.js') }}"></script>
    <script src="{{ asset('js/tinymce.min.js') }}"></script>
    <script src="{{ asset('js/jquery.tinymce.min.js') }}"></script>
    <script src="{{ asset('js/lightbox.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-colorpicker.min.js') }}"></script>
    <script src="{{ asset('js/selectize.min.js') }}"></script>
    <script src="{{ asset('js/jquery-ui-timepicker-addon.js') }}"></script>
    <script src="{{ asset('js/croppie.min.js') }}"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600&display=swap" rel="stylesheet">

    <style>
        h1,
        h2,
        h3,
        h4,
        .card-title,
        .page-title {
            font-family: 'Orbitron', 'Nunito', sans-serif;
            letter-spacing: 0.5px;
        }

        .global-sci-fi-bg {
            position: fixed;
            inset: 0;
            background: #0a0e1a;
            pointer-events: none;
            z-index: 0;
        }

        .global-sci-fi-bg::before {
            content: '';
            position: absolute;
            inset: 0;
            background-image:
                radial-gradient(circle at 15% 40%, rgba(0, 204, 255, 0.05) 0%, transparent 25%),
                radial-gradient(circle at 85% 70%, rgba(0, 180, 220, 0.04) 0%, transparent 30%),
                repeating-linear-gradient(
                    0deg,
                    rgba(0, 204, 255, 0.015) 0px,
                    rgba(0, 204, 255, 0.015) 1.5px,
                    transparent 1.5px,
                    transparent 3px
                ),
                repeating-linear-gradient(
                    90deg,
                    rgba(0, 204, 255, 0.01) 0px,
                    rgba(0, 204, 255, 0.01) 1.5px,
                    transparent 1.5px,
                    transparent 3px
                );
        }

        .global-sci-fi-bg::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(0, 204, 255, 0.15) 0%, transparent 70%);
            filter: blur(40px);
        }

        .global-sci-fi-line {
            position: fixed;
            left: 0;
            right: 0;
            bottom: 150px;
            height: 2px;
            background: linear-gradient(90deg, transparent, #00ccff, #00ccff, transparent);
            box-shadow: 0 0 30px rgba(0, 204, 255, 0.9);
            pointer-events: none;
            z-index: 0;
        }

        .global-circuit-left {
            position: fixed;
            left: -100px;
            top: 20%;
            width: 500px;
            height: 500px;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 500"><defs><filter id="glow"><feGaussianBlur stdDeviation="2" result="coloredBlur"/><feMerge><feMergeNode in="coloredBlur"/><feMergeNode in="SourceGraphic"/></feMerge></filter></defs><circle cx="100" cy="150" r="80" stroke="%2300ccff" stroke-width="2" fill="none" filter="url(%23glow)"/><path d="M 180 150 L 300 150 M 300 100 L 300 200" stroke="%2300ccff" stroke-width="1.5" fill="none" opacity="0.8"/><circle cx="100" cy="280" r="40" stroke="%2300ccff" stroke-width="1" fill="none" opacity="0.6"/><path d="M 140 280 L 200 280 L 200 350" stroke="%2300ccff" stroke-width="1" fill="none" opacity="0.6"/><rect x="50" y="350" width="100" height="100" stroke="%2300ccff" stroke-width="1" fill="none" opacity="0.5"/></svg>') no-repeat center;
            opacity: 0.25;
            z-index: 0;
            pointer-events: none;
        }

        .global-circuit-right {
            position: fixed;
            right: -150px;
            bottom: -50px;
            width: 600px;
            height: 600px;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 500"><defs><filter id="glow"><feGaussianBlur stdDeviation="2" result="coloredBlur"/><feMerge><feMergeNode in="coloredBlur"/><feMergeNode in="SourceGraphic"/></feMerge></filter></defs><circle cx="100" cy="100" r="4" fill="%2300ccff" filter="url(%23glow)"/><line x1="100" y1="100" x2="180" y2="150" stroke="%2300ccff" stroke-width="1.5"/><circle cx="180" cy="150" r="4" fill="%2300ccff" filter="url(%23glow)"/><line x1="180" y1="150" x2="100" y2="220" stroke="%2300ccff" stroke-width="1.5"/><circle cx="100" cy="220" r="4" fill="%2300ccff" filter="url(%23glow)"/><line x1="100" y1="220" x2="250" y2="200" stroke="%2300ccff" stroke-width="1"/><circle cx="250" cy="200" r="6" fill="none" stroke="%2300ccff" stroke-width="1.5" filter="url(%23glow)"/><line x1="250" y1="200" x2="350" y2="280" stroke="%2300ccff" stroke-width="1"/><circle cx="350" cy="280" r="3" fill="%2300ccff" filter="url(%23glow)"/><path d="M 150 350 L 150 450 L 250 450 L 250 350" stroke="%2300ccff" stroke-width="1" fill="none" opacity="0.7"/></svg>') no-repeat center;
            opacity: 0.3;
            z-index: 0;
            pointer-events: none;
        }

        .global-corner {
            position: fixed;
            z-index: 0;
            pointer-events: none;
        }

        .global-corner-tl {
            top: 30px;
            left: 30px;
            width: 120px;
            height: 120px;
            border-top: 3px solid #00ccff;
            border-left: 3px solid #00ccff;
            box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
        }

        .global-corner-tr {
            top: 30px;
            right: 30px;
            width: 120px;
            height: 120px;
            border-top: 3px solid #00ccff;
            border-right: 3px solid #00ccff;
            box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
        }

        .global-corner-bl {
            bottom: 30px;
            left: 30px;
            width: 120px;
            height: 120px;
            border-bottom: 3px solid #00ccff;
            border-left: 3px solid #00ccff;
            box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
        }

        .global-corner-br {
            bottom: 30px;
            right: 30px;
            width: 120px;
            height: 120px;
            border-bottom: 3px solid #00ccff;
            border-right: 3px solid #00ccff;
            box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
        }

        #app {
            position: relative;
            z-index: 1;
        }
    </style>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/lorekeeper.css') }}" rel="stylesheet">

    {{-- Font Awesome --}}
    <link href="{{ asset('css/all.min.css') }}" rel="stylesheet">

    {{-- jQuery UI --}}
    <link href="{{ asset('css/jquery-ui.min.css') }}" rel="stylesheet">

    {{-- Bootstrap Toggle --}}
    <link href="{{ asset('css/bootstrap4-toggle.min.css') }}" rel="stylesheet">


    <link href="{{ asset('css/lightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/bootstrap-colorpicker.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/jquery-ui-timepicker-addon.css') }}" rel="stylesheet">
    <link href="{{ asset('css/croppie.css') }}" rel="stylesheet">
    <link href="{{ asset('css/selectize.bootstrap4.css') }}" rel="stylesheet">

    @if (file_exists(public_path() . '/css/custom.css'))
        <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    @endif

    @if ($theme?->prioritize_css)
        @include('layouts.editable_theme')
    @endif
    @if ($theme?->has_css)
        <style type="text/css" media="screen">
            @php include_once($theme?->cssUrl)
            @endphp
            {{-- css in style tag to so that order matters --}}
        </style>
    @endif
    @if (!$theme?->prioritize_css)
        @include('layouts.editable_theme')
    @endif

    {{-- Conditional Themes are dependent on other site features --}}
    @if ($conditionalTheme?->prioritize_css)
        @include('layouts.editable_theme', ['theme' => $conditionalTheme])
    @endif
    @if ($conditionalTheme?->has_css)
        <style type="text/css" media="screen">
            @php include_once($conditionalTheme?->cssUrl)
            @endphp
            {{-- css in style tag to so that order matters --}}
        </style>
    @endif
    @if (!$conditionalTheme?->prioritize_css)
        @include('layouts.editable_theme', ['theme' => $conditionalTheme])
    @endif

    @if ($decoratorTheme?->prioritize_css)
        @include('layouts.editable_theme', ['theme' => $decoratorTheme])
    @endif
    @if ($decoratorTheme?->has_css)
        <style type="text/css" media="screen">
            @php include_once($decoratorTheme?->cssUrl)
            @endphp
            {{-- css in style tag to so that order matters --}}
        </style>
    @endif
    @if (!$decoratorTheme?->prioritize_css)
        @include('layouts.editable_theme', ['theme' => $decoratorTheme])
    @endif

</head>

<body>
    <div class="global-sci-fi-bg"></div>
    <div class="global-sci-fi-line"></div>
    <div class="global-circuit-left"></div>
    <div class="global-circuit-right"></div>
    <div class="global-corner global-corner-tl"></div>
    <div class="global-corner global-corner-tr"></div>
    <div class="global-corner global-corner-bl"></div>
    <div class="global-corner global-corner-br"></div>
    <div id="app">

        <div class="site-header-image" id="header" style="background-image: url('{{ $decoratorTheme?->headerImageUrl ?? ($conditionalTheme?->headerImageUrl ?? ($theme?->headerImageUrl ?? asset('images/header.png'))) }}');"></div>

        @include('layouts._nav')
        @if (View::hasSection('sidebar'))
            <div class="site-mobile-header bg-secondary"><a href="#" class="btn btn-sm btn-outline-light" id="mobileMenuButton">Menu <i class="fas fa-caret-right ml-1"></i></a></div>
        @endif

        <main class="container-fluid" id="main">
            <div class="row">

                <div class="sidebar col-lg-2" id="sidebar">
                    @yield('sidebar')
                </div>
                <div class="main-content col-lg-8 p-4">
                    <div>
                        @if (Auth::check() && !Config::get('lorekeeper.extensions.navbar_news_notif'))
                            @if (Auth::user()->is_news_unread)
                                <div class="alert alert-info"><a href="{{ url('news') }}">There is a new news post!</a></div>
                            @endif
                            @if (Auth::user()->is_sales_unread)
                                <div class="alert alert-info"><a href="{{ url('sales') }}">There is a new sales post!</a></div>
                            @endif
                        @endif
                        @include('flash::message')
                        @yield('content')
                    </div>

                    <div class="site-footer mt-4" id="footer">
                        @include('layouts._footer')
                    </div>
                </div>
            </div>

        </main>


        <div class="modal fade" id="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <span class="modal-title h5 mb-0"></span>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                    </div>
                </div>
            </div>
        </div>

        @yield('scripts')
        <script>
            $(function() {
                $('[data-toggle="tooltip"]').tooltip({
                    html: true
                });

                class BlurValid extends $.colorpicker.Extension {
                    constructor(colorpicker, options = {}) {
                        super(colorpicker, options);

                        if (this.colorpicker.inputHandler.hasInput()) {
                            const onBlur = function(colorpicker, fallback) {
                                return () => {
                                    colorpicker.setValue(colorpicker.blurFallback._original.color);
                                }
                            };
                            this.colorpicker.inputHandler.input[0].addEventListener('blur', onBlur(this.colorpicker));
                        }
                    }

                    onInvalid(e) {
                        const color = this.colorpicker.colorHandler.getFallbackColor();
                        if (color._original.valid)
                            this.colorpicker.blurFallback = color;
                    }
                }

                $.colorpicker.extensions.blurvalid = BlurValid;
                console.log($['colorpicker'].extensions);



                $('.cp').colorpicker({
                    'autoInputFallback': false,
                    'autoHexInputFallback': false,
                    'format': 'auto',
                    'useAlpha': true,
                    extensions: [{
                        name: 'blurValid'
                    }]
                });

                tinymce.init({
                    selector: '.wysiwyg',
                    height: 500,
                    menubar: false,
                    convert_urls: false,
                    plugins: [
                        'advlist autolink lists link image charmap print preview anchor',
                        'searchreplace visualblocks code fullscreen spoiler',
                        'insertdatetime media table paste code help wordcount'
                    ],
                    toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | spoiler-add spoiler-remove | removeformat | code',
                    content_css: [
                        '{{ asset('css/app.css') }}',
                        '{{ asset('css/lorekeeper.css') }}',
                        '{{ asset('css/custom.css') }}',
                        '{{ asset($theme?->cssUrl) }}',
                        '{{ asset($conditionalTheme?->cssUrl) }}',
                        '{{ asset($decoratorTheme?->cssUrl) }}',
                        '{{ asset('css/all.min.css') }}' //fontawesome
                    ],
                    content_style: `
                    {{ str_replace(['<style>', '</style>'], '', view('layouts.editable_theme', ['theme' => $theme])) }}
                    {{ str_replace(['<style>', '</style>'], '', view('layouts.editable_theme', ['theme' => $conditionalTheme])) }}
                    {{ str_replace(['<style>', '</style>'], '', view('layouts.editable_theme', ['theme' => $decoratorTheme])) }}
                    `,
                    spoiler_caption: 'Toggle Spoiler',
                    target_list: false
                });
                var $mobileMenuButton = $('#mobileMenuButton');
                var $sidebar = $('#sidebar');
                $('#mobileMenuButton').on('click', function(e) {
                    e.preventDefault();
                    $sidebar.toggleClass('active');
                });

                $('.inventory-log-stack').on('click', function(e) {
                    e.preventDefault();
                    loadModal("{{ url('items') }}/" + $(this).data('id') + "?read_only=1", $(this).data('name'));
                });

                $('.spoiler-text').hide();
                $('.spoiler-toggle').click(function() {
                    $(this).next().toggle();
                });
            });
        </script>
    </div>
</body>

</html>
