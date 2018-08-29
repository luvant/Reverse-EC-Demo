@extends('admin.layouts.menu')
@section('content')

<section id="main-content">
  <section class="wrapper">
    <!-- page start-->

    <div class="row">
      <div class="col-lg-12">
        <section class="panel">
          <header class="panel-heading">
           Categorie Form
         </header>
         <div class="panel-body">
          <form class="form-horizontal tasi-form" method="post" action="{{ route('addcategoriePost') }}"  role="form" enctype="multipart/form-data">
            {{ csrf_field() }}

            <div class="form-group">
              <label class="col-sm-2 col-sm-2 control-label">Categorie Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="name">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 col-sm-2 control-label">Description</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="description">
                <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
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