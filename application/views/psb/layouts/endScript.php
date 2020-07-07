<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>


<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- datepicker -->
<script src="<?= base_url(); ?>assets/5b43112/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function() {
        $("#datepicker").datepicker();
        $("#datehasil").datepicker();

        $("#yearpicker").datepicker({
            format: "yyyy",
            viewMode: "years",
            minViewMode: "years"
        });
    });
</script>

</body>

</html>