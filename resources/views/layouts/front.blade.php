<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>
        @yield('title')
    </title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

    <!-- CSS Files -->
    <!-- <link href="{{ asset('admin/css/material-dashboard.css?v=2.1.2') }} " rel="stylesheet" /> -->
    <!-- @vite(['frontend/css/bootstrap5.css', 'frontend/css/custom.css']) -->
    <link href="{{ asset('frontend/css/bootstrap5.css') }}" rel="stylesheet">
    <link href="{{ asset('frontend/css/custom.css') }}" rel="stylesheet">
    <!-- owl carousel -->
    <link href="{{ asset('frontend/css/owl.carousel.min.css') }}" rel="stylesheet">
    <link href="{{ asset('frontend/css/owl.theme.default.min.css') }}" rel="stylesheet">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/fontawesome.min.css" integrity="sha384-z4tVnCr80ZcL0iufVdGQSUzNvJsKjEtqYZjiQrrYKlpGow+btDHDfQWkFjoaz/Zr" crossorigin="anonymous">
    <style>
        a{
            text-decoration: none !important;
        }
    </style>
</head>
<body>
    @include('layouts.inc.frontnavbar')

    <div class="content">   
        @yield('content')
    </div>

    <div class="whatsapp-chat">
        <a href="https://wa.me/15551234567?text=I'm%20interested%20in%20your%20car%20for%20sale" target="_blank">
            <img src="{{ asset('assets/images/whatsapp_icon.png')}}" alt="whatsapp-logo" height="80px" width="80px">
        </a>
    </div>

    <!-- <script src="{{ asset('frontend/js/bootstrap.bundle.min.js') }}" defer> </script>
    <script src="{{ asset('admin/js/jquery.min.js') }}" defer> </script>
    <script src="{{ asset('admin/js/popper.min.js') }}" defer> </script>
    <script src="{{ asset('admin/js/bootstrap-material-design.min.js') }}" defer> </script> -->
    
    <script src="{{ asset('frontend/js/jquery-3.6.1.min.js') }}" defer> </script>
    <script src="{{ asset('frontend/js/bootstrap.bundle.min.js') }}" defer> </script>
    <script src="{{ asset('frontend/js/owl.carousel.min.js') }}" defer> </script>
    <script src="{{ asset('frontend/js/custom.js') }}" defer> </script>
    <script src="{{ asset('frontend/js/checkout.js') }}" defer> </script>

    <!--Start of Tawk.to Script-->
        <script type="text/javascript">
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/63567601b0d6371309cb3695/1gg4rpu29';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
        })();
        </script>
    <!--End of Tawk.to Script-->

    <!-- <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script> -->

    <script>
        var availableTags = [];
        $.ajax({
            method: "GET",
            url: "/product-list",
            success: function (response) {
                //console.log(response);
                startAutoComplete(response);  
            }
        });

        function startAutoComplete(availableTags) {
            $( "#search_product" ).autocomplete({
                source: availableTags
            });
        }
  </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    @if(session('status'))
        <script>
            swal("{{ session('status') }}");
        </script>
    @endif
    @yield('scripts')
</body>
</html>
