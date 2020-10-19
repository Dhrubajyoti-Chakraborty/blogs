@extends('user/app')

@section('bg-img',Storage::disk('local')->url($post->image))
@section('title',$post->title)
@section('sub-heading',$post->subtitle)

@section('main-content')
   <!-- Post Content -->
   <article>
   <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v7.0&appId=236307274117959&autoLogAppEvents=1"></script>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <small>Created at {{$post->created_at}}</small> 
                <!-- ->diffForHumans() -->
                    @foreach($post->categories as $category)
                <small class="pull-right" style="margin-right:20px;">
               <a href="{{route('category',$category)}}"> {{$category->name}} </a>
            </small> 
                @endforeach
                <br>
                <br>

                {!! htmlspecialchars_decode($post->body) !!}

                <br>
                <h3>Tag Clouds</h3>
                @foreach($post->tags as $tag)
                <a href="{{route('tag',$tag)}}">
                <small class="pull-left" style="margin-right:20px; border-radius:5px; border:1px solid grey; padding:5px;">
               {{$tag->name}}
            </small> 
            </a>
            @endforeach

                </div>
        <div class="fb-comments" data-href="{{Request::url() }}" data-numposts="5" data-width=""></div>

            
            </div>
        </div>
    </article>

    <hr>



@endsection