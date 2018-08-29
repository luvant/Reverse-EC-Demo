@extends('layouts.app')

@section('content')
<div class="container">



    <form class="form-signin" role="form" method="POST" action="{{ url('/login') }}">
        {{ csrf_field() }}
        <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">                       
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email">

                @if ($errors->has('email'))
                <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
                @endif
            </div>


            <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">



                <input id="password" type="password" class="form-control" name="password" placeholder="Password">

                @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
                @endif

            </div>

            <label class="checkbox">
                <input type="checkbox" name="remember"> Remember me
                <span class="pull-right">
                    <a class="btn btn-link" href="{{ url('/password/reset') }}">Forgot Your Password?</a>

                </span>
            </label>

            <button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>
            <p>or you can sign in via social network</p>
            <div class="login-social-link">
                <a href="index.html" class="facebook">
                    <i class="fa fa-facebook"></i>
                    Facebook
                </a>
                <a href="index.html" class="twitter">
                    <i class="fa fa-twitter"></i>
                    Twitter
                </a>
            </div>
            <div class="registration">
                Don't have an account yet?
                <a class="" href="registration.html">
                    Create an account
                </a>
            </div>
        </div>
    </form>


</div>




@endsection





