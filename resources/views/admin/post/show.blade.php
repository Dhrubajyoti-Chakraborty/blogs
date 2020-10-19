@extends('admin.layouts.app')

@section('headSection')

<link rel="stylesheet" href="{{asset('admin/plugins/datatables/dataTables.bootstrap.css')}}">

@endSection

@section('main-content')
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    @include('admin.layouts.pagehead')

      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Posts</h3>
          @can('posts.create',Auth::user())
          <a href="{{route('post.create')}}" class="col-lg-offset-5 btn btn-success">Add New</a>
          @endcan
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
         
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <td>S.No.</td>
                  <td>Title</td>
                  <td>Sub Title</td>
                  <td>Slug</td>
                  <td>Created At</td>
                  @can('posts.update',Auth::user())
                  <td>Edit</td>
                  @endcan
                  @can('posts.delete',Auth::user())
                  <td>Delete</td>
                  @endcan
                </tr>
                </thead>
                <tbody>
              @foreach($posts as $post)
              <tr>
                  <th>{{$loop->index + 1}}</th>
                  <th>{{$post->title}}</th>
                  <th>{{$post->subtitle}}</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                  <th>{{$post->slug}}</th>
                  <th>{{$post->created_at}}</th>
                  @can('posts.update',Auth::user())
                  <th><a href="{{route('post.edit',$post->id)}}"> <span class="glyphicon glyphicon-edit"></a></span></th>
                  @endcan
                  @can('posts.delete',Auth::user())
                  <th>
                  <form id="delete-form-{{$post->id}}" action="{{route('post.destroy',$post->id)}}" method="post" style="display:none">
                  {{csrf_field()}}
                  {{method_field('DELETE')}}
                  </form>
                  <a href="" onclick="
                  if(confirm('Are you sur to delete?')){
                  event.preventDefault(); document.getElementById('delete-form-{{$post->id}}').submit();
                  }else{
                    event.preventDefault();}">
                    <span class="glyphicon glyphicon-trash"></a></span>
                  </th>
                  @endcan
                </tr> 
              @endforeach
            
               
                </tbody>
                <tfoot>
                <tr>
                  <td>S.No.</td>
                  <td>Title</td>
                  <td>Sub Title</td>
                  <td>Slug</td>
                  <td>Created At</td>
                  @can('posts.update',Auth::user())
                  <td>Edit</td>
                  @endcan
                  @can('posts.delete',Auth::user())
                  <td>Delete</td>
                  @endcan
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>

        </div>
</div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  @endsection

@section('footerSection')

<script src="{{asset('admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables/dataTables.bootstrap.min.js')}}"></script>

<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
@endsection
