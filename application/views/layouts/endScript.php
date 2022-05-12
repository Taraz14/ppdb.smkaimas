</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<!-- <script src="<?= base_url(); ?>assets/5b43112/bower_components/jquery/dist/jquery.min.js"></script> -->
<!-- jQuery UI 1.11.4 -->
<!-- <script src="<?= base_url(); ?>assets/5b43112/bower_components/jquery-ui/jquery-ui.min.js"></script> -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<!-- <script src="<?= base_url(); ?>assets/5b43112/bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->
<!-- SWAL -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<!-- <script src="<?= base_url(); ?>assets/5b43112/bower_components/morris.js/morris.min.js"></script> -->
<!-- Sparkline -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<!-- <script src="<?= base_url(); ?>assets/5b43112/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?= base_url(); ?>assets/5b43112/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script> -->
<!-- jQuery Knob Chart -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/moment/min/moment.min.js"></script>
<script src="<?= base_url(); ?>assets/5b43112/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?= base_url(); ?>assets/5b43112/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url(); ?>assets/5b43112/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?= base_url(); ?>assets/5b43112/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url(); ?>assets/5b43112/dist/js/demo.js"></script>
<!-- iCheck 1.0.1 -->
<script src="<?= base_url(); ?>assets/5b43112/plugins/iCheck/icheck.min.js"></script>
<!-- CK Editor -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?= base_url(); ?>assets/5b43112/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Datatables -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url(); ?>assets/5b43112/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="<?= base_url(); ?>assets/5b43112/bower_components/datatables/datatables.js"></script>
<script src="<?= base_url(); ?>assets/5b43112/bower_components/datatables/Buttons-1.6.1/js/buttons.print.min.js"></script>
<script type="text/javascript">
  // jQuery.ready();
  var a_table;
  $(function() {

    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()

    //Datatable : data_guru
    $('#data_guru').dataTable({
      "processing": true,
      "serverSide": true,
      "scrollX": true,
      "scrollY": "200px",
      "order": [],
      "ajax": {
        url: '<?= site_url('admin/DataGuru/guru') ?>',
        'responsive': true
      }
    });

    //Datatable : berita -> Guru
    $('#tb_berita').DataTable({
      "processing": true,
      "serverSide": true,
      "scrollX": true,
      "scrollY": "200px",
      "order": [],
      "ajax": {
        url: '<?= site_url('guru/Forum/berita_table') ?>',
        'responsive': true
      }
    });

    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    })
  });
</script>
</body>

</html>