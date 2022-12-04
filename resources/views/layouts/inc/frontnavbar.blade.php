<nav class="navbar navbar-expand-lg bg-dark">
  <div class="container">
    <a class="navbar-brand" href="{{ url('/') }}">E-Shop</a>
    <div class="search-bar">
      <form action="{{ url('searchproduct') }}" method="POST">
          @csrf
          <div class="input-group">
            <input type="search" class="form-control" id="search_product" name="product_name" required placeholder="Search Product.." aria-describedby="basic-addon1">
            <button type="submit" class="input-group-text"><i class="fa fa-search"></i></button>
          </div>
      </form>
    </div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="{{ url('/') }}" href="{{ url('/') }}">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{ route('login') }}">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ url('category')}}">Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ url('cart')}}">Cart
            <span class="badge badge-pill bg-primary cart-count">0</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ url('wishlist')}}">Wishlist
            <span class="badge badge-pill bg-success wishlist-count">0</span>
          </a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            
            {{ Auth::user()->name ?? '' }}
          </a>
          <ul class="dropdown-menu">
            <a class="dropdown-item" href="{{ url('my-orders') }}">My Orders</a>
                  <a class="dropdown-item" href="#">My Profile</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    {{ __('Logout') }}
                  </a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                     @csrf
                  </form>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>