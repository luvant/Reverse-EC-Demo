@extends('admin.layouts.menu')
@section('content')

<section id="main-content">
  <section class="wrapper">
    <!-- page start-->

    <div class="row">
      <div class="col-lg-12">
        <section class="panel">
          <header class="panel-heading">
           Product Form
         </header>
         <div class="panel-body">
          <form class="form-horizontal tasi-form" method="post" action="{{ route('addproductPost') }}"  role="form" enctype="multipart/form-data">
            {{ csrf_field() }}

            <div class="form-group">
              <label class="col-sm-2 col-sm-2 control-label">Name Product</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="name">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 col-sm-2 control-label">Price</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="price">
                <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
              </div>
            </div>

                   
            <div class="form-group">
              <label class="col-sm-2 control-label col-lg-2" for="inputSuccess">Categories</label>
              <div class="col-lg-10">
                <select class="form-control m-bot15" id="categorie">
                  <option></option>
                  @foreach($categories as $categorie)
                  <option value="{{$categorie->id_categorie}}">{{$categorie->name}}</option>
                  @endforeach
                </select>

                <select multiple class="form-control" id="subcategorie" name="subcategorie">
                  
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-md-3">Imagine</label>
              <div class="col-md-2">
              <img id="blah" src="http://placehold.it/180" alt="" style="max-width: 180px;" />
            </div>
              <div class="col-md-4">
                <input type="file" class="default" name="image" onchange="readURL(this);" />
              </div>
              
            </div>
            <div class="row">
              <div class="col-lg-12">
                <section class="panel">
                  
                  <div class="panel-body">
                    <div class="form">

                      <div class="form-group">
                        <label class="col-sm-2 control-label col-sm-2">Description</label>
                        <div class="col-sm-10">
                          <textarea id="description" class="form-control" name="description" rows="12"></textarea>
                        </div>
                      </div>
                      
                    </div>
                  </div>
                </section>
              </div>
              <div class="col-md-4"> </div>
              <div class="col-md-6">

              </div>
            </div>

            <button type="submit" class="btn btn-success">SUBMIT</button>
          </form>
        </div>
      </section>










    </div>
  </div>
  <!-- page end-->
</section>
</section>

@endsection