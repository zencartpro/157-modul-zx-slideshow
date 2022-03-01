<script language="javascript" type="text/javascript" src="<?php echo($template->get_template_dir('jquery.nivo.slider.pack.js',DIR_WS_TEMPLATE, $current_page_base,'jscript'). '/jquery.nivo.slider.pack.js'); ?>"></script>

<script language="javascript" type="text/javascript">
    jQuery(window).on("load",function(){
        jQuery('#slider').nivoSlider({
			effect: '<?php echo ZX_SLIDESHOW_EFFECT; ?>',
			animSpeed: <?php echo ZX_SLIDESHOW_ANIM_SPEED; ?>,
 	        pauseTime: <?php echo ZX_SLIDESHOW_PAUSE; ?>,
			directionNav: <?php echo ZX_SLIDESHOW_NAV; ?>,
			directionNavHide: <?php echo ZX_SLIDESHOW_NAV_HIDE; ?>,
 	        controlNav: <?php echo ZX_SLIDESHOW_CONTROL_NAV; ?>,
			pauseOnHover: <?php echo ZX_SLIDESHOW_HOVER_PAUSE; ?>
			});
    });

</script>

<div class="slider-wrapper theme-<?php echo ZX_SLIDESHOW_THEME; ?>">
    	<div id="slider" class="nivoSlider">
			<?php
  
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET9 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET9 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner); 
    }
  }
?>
			
			<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET10 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET10 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner); 
    }
  }
?>

			<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET11 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET11 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET12 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET12 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET13 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET13 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET14 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET14 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET15 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET15 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET16 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET16 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET17 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET17 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET18 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET18 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET19 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET19 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET20 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET20 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET21 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET21 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET22 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET22 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET23 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET23 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET24 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET24 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET25 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET25 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET26 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET26 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET27 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET27 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
<?php
  if (ZX_SLIDESHOW_BANNERS_GROUP_SET28 != '' && $banner = zen_banner_exists('dynamic', ZX_SLIDESHOW_BANNERS_GROUP_SET28 .'-' . $_SESSION['languages_id'])){
    if ($banner->RecordCount() > 0) {
		echo zen_display_zx_slide('static', $banner);
    }
  }
?>
		</div>
    </div>