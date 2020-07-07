    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?= $header; ?>
        <small>Panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?= site_url($auth_role.'/dashboard')?>"><i class="glyphicon glyphicon-home"></i> Home</a></li>
        <li class="active"><?= $header; ?></li>
      </ol>
    </section>