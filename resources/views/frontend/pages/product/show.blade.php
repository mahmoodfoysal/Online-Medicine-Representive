@extends('frontend.layouts.master')

@section('title')
  {{ $product->title }} | Medico
@endsection

@section('content')

  <!-- Start Sidebar + Content -->
  <link rel="shortcut icon" href="images/logo.png" />
  <div class='container margin-top-20'>
    <div class="row">
      <div class="col-md-4">

        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            @php $i = 1; @endphp
            @foreach ($product->images as $image)
              <div class="product-item carousel-item {{ $i == 1 ? 'active':'' }}">
                <img class="d-block w-100" src="{!! asset('images/products/'.$image->image) !!}" alt="First slide">
              </div>
              @php $i++; @endphp
            @endforeach
          </div>
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="mt-3">
          <p>Category <span class="badge badge-info">{{ $product->category->name }}</span></p>
          <p>Brand <span class="badge badge-info">{{ $product->brand->name }}</span></p>
        </div>

          <form class="form-inline" action="{{ route('carts.store') }}" method="post">
  @csrf
  <input type="hidden" name="product_id" value="{{ $product->id }}">
  <button type="submit" class="btn btn-warning" onclick="addToCart({{ $product->id }})"><i class="fa fa-plus"></i> Add to cart</button>
</form>

      </div>

      <div class="col-md-8">
        <div class="widget">
          <h3> {{ $product->title }}</h3>
          <h3> {{ $product->price }} Taka
            <span class="badge badge-primary">
              {{ $product->quantity  < 1 ? 'No Item is Available' : $product->quantity.' Pices in Box' }}
            </span>
          </h3>
          <hr>

          <div class="product-description">
            {!! $product->description !!}
          </div>
        </div>
        <div class="widget">

        </div>
      </div>


    </div>
  </div>

  <!-- End Sidebar + Content -->
@endsection
