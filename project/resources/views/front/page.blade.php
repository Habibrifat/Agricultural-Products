@extends('layouts.front')
@section('content')

<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ul class="pages">
          <li>
            <a href="{{ route('front.index') }}">
              {{ $langg->lang17 }}
            </a>
          </li>
          <li>
            <a href="{{ route('front.page',$page->slug) }}">
              {{ $page->title }}
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb Area End -->



<section class="about" style="background-image: url({{asset('assets/images/vendorbanner/vegetable_about.jpg')}});
height: 50%;background-size: cover; background-attachment: scroll; background-repeat: no-repeat; background-position: right top;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="about-info">
            <h4 class="display-4 text-center text-white"> About Us </h4>
              <!-- {{ $page->title }} -->
              
            
            <p class=" font-weight-bold text-white">
              {!! $page->details !!}
            </p>

          </div>
        </div>
      </div>
    </div>
  </section>

@endsection