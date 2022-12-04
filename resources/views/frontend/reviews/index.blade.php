@extends('layouts.front')

@section('title', 'Write a Review')
 

@section('content')
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        @if($verified_purchase->count() > 0)
                            <h5>You are writing a review for {{ $product->name }}</h5>
                            <form action="{{ url('/add-review') }}" method="POST">
                                @csrf
                                <input type="hidden" name="product_id" value="{{ $product->id }}">
                                <textarea class="form-control" name="user_review" rows="5" placeholder="Write a review"></textarea>
                                <button type="submit" class="btn btn-primary mt-3">Submit Review</button>
                            </form>
                        @else
                             <div class="alert alert-danger">
                                <h5>bạn không đủ điều kiện để đánh giá sản phẩm này</h5>
                                <p>
                                    Đối với độ tin cậy của các đánh giá, chỉ những khách hàng đã mua sản phẩm 
                                    mới có thể viết đánh giá về sản phẩm.
                                </p>
                                <a href="{{ url('/') }}" class="btn btn-primary mt-3">Go to home page</a>
                             </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection