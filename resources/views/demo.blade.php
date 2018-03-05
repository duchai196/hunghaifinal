 <div class="input-group">
   <span class="input-group-btn">
     <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
       <i class="fa fa-picture-o"></i> Choose
     </a>
   </span>
   <input id="thumbnail" class="form-control" type="text" name="filepath">
 </div>
 <img id="holder" style="margin-top:15px;max-height:100px;">
         <script src="admin_assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>

  <script src="/vendor/laravel-filemanager/js/lfm.js"></script>
<script type="text/javascript">
	    var domain = "";
 $('#lfm').filemanager('image', {prefix: domain});
</script>