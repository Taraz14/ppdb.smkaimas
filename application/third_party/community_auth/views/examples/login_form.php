<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Community Auth - Login Form View
 *
 * Community Auth is an open source authentication application for CodeIgniter 3
 *
 * @package     Community Auth
 * @author      Robert B Gottier
 * @copyright   Copyright (c) 2011 - 2018, Robert B Gottier. (http://brianswebdesign.com/)
 * @license     BSD - http://www.opensource.org/licenses/BSD-3-Clause
 * @link        http://community-auth.com
 */
?>
	<style>
	    .daftar-thumb {
			border: 10px solid transparent;
			padding: 0px;
			border-image: url(<?= base_url('assets/image/content/border.png')?>) 30 stretch;
		}
	</style>
<?php
if( ! isset( $optional_login ) )
{
	echo '<div class="login-box mt-n3">
			<div class="login-logo">
				<img src="'.base_url('assets/image/logo/logo.png').'" width="40%" class="img daftar-thumb"/>
			</div>
		';
}

if( ! isset( $on_hold_message ) )
{
	if( isset( $login_error_mesg ) )
	{
		echo '<div class="alert alert-danger alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4><i class="icon fa fa-ban"></i> Alert!</h4>
				Login Error! '. $this->authentication->login_errors_count . '/' . config_item('max_allowed_attempts') .': Invalid Username, Email Address, or Password.
				</div>
			';
	}

	if( $this->input->get(AUTH_LOGOUT_PARAM) )
	{
		// redirect('auth', 'refresh');
		echo '
			<div class="alert alert-info alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4><i class="icon fa fa-info"></i> Alert!</h4>
				You are logged out successfully.
			</div>
			';
	}

	echo form_open( $login_url, ['class' => 'std-form'] ); 
?>

	<div class="login-box-body">
		<div class="box box-widget widget-user">

			<div class="widget-user header text-center">
				
				<h3 class="widget-user-username">SMK Negeri 1</h3>
				<h5 class="widget-user-desc">Kabupaten Sorong</h5>
			</div>
			<div class="widget-user-image text-center">
				<!-- <p class="login-box-msg">Silakan Masuk</p> -->
			</div>

			<div class="box-footer">
				<div class="row">
				
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="login_string" id="login_string" autocomplete="off" maxlength="255" placeholder="Username">
						<span class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>

					<div class="form-group has-feedback">
						<input type="password" name="login_pass" id="login_pass" class="form-control"<?php 
						if( config_item('max_chars_for_password') > 0 )
							echo 'maxlength="' . config_item('max_chars_for_password') . '"'; 
					?> autocomplete="off" readonly="readonly" onfocus="this.removeAttribute('readonly');" placeholder="Password"/>
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>

					<?php
						if( config_item('allow_remember_me') )
						{
					?>

						<br />

						<label for="remember_me" class="form_label">Remember Me</label>
						<input type="checkbox" id="remember_me" name="remember_me" value="yes" />

					<?php
						}
					?>
					<div class="row">
						<div class="col-xs-8">	
							<p>
							<?php
								$link_protocol = USE_SSL ? 'https' : NULL;
							?>
							<!-- <a href="<?php echo site_url('auth/recover', $link_protocol); ?>">
								Tidak bisa mengakses akun?
							</a><br/> -->
							<!-- <br/> -->
							<a href="<?= site_url(); ?>">
								Kembali ke Homepage
							</a>
							</p>
						</div>

						<div class="col-xs-4">
							<button type="submit" class="btn btn-success btn-block btn-flat" name="submit" value="Login" id="submit_button">Login</button>
						<div>
					</div>
				</div>
			</div>
		</div>
	</div>

</form>
</div>
<?php

	}
	else
	{
		// EXCESSIVE LOGIN ATTEMPTS ERROR MESSAGE
		echo '
			<div style="border:1px solid red;">
				<p>
					Excessive Login Attempts
				</p>
				<p>
					You have exceeded the maximum number of failed login<br />
					attempts that this website will allow.
				<p>
				<p>
					Your access to login and account recovery has been blocked for ' . ( (int) config_item('seconds_on_hold') / 60 ) . ' minutes.
				</p>
				<p>
					Please use the <a href="/examples/recover">Account Recovery</a> after ' . ( (int) config_item('seconds_on_hold') / 60 ) . ' minutes has passed,<br />
					or contact us if you require assistance gaining access to your account.
				</p>
			</div>
		';
	}

/* End of file login_form.php */
/* Location: /community_auth/views/examples/login_form.php */ 