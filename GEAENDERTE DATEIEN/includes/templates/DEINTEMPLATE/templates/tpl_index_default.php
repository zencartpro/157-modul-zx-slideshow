<?php
/**
 * Page Template
 *
 * Main index page
 * Displays greetings, welcome text (define-page content), and various centerboxes depending on switch settings in Admin
 * Centerboxes are called as necessary
 *
 * @package templateSystem
 * @copyright Copyright 2003-2023 Zen Cart Development Team
 * Zen Cart German Version - www.zen-cart-pro.at
 * @copyright Portions Copyright 2003 osCommerce
 * @license https://www.zen-cart-pro.at/license/3_0.txt GNU General Public License V3.0
 * @version $Id: tpl_index_default.php for ZX Slideshow 2023-11-15 18:20:16Z webchills $
 */
?>
<div class="centerColumn" id="indexDefault">

<!-- begin edit for ZX Slideshow -->
<?php if(ZX_SLIDESHOW_STATUS == 'true') { ?>
	<?php require($template->get_template_dir('zx_slideshow.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/zx_slideshow.php'); ?>
<?php } ?>    
<!-- end edit for ZX Slideshow -->

<h1 id="indexDefaultHeading"><?php echo HEADING_TITLE; ?></h1>

<?php if (SHOW_CUSTOMER_GREETING == 1) { ?>
<h2 class="greeting"><?php echo zen_customer_greeting(); ?></h2>
<?php } ?>

<?php if (DEFINE_MAIN_PAGE_STATUS >= 1 and DEFINE_MAIN_PAGE_STATUS <= 2) { ?>
<?php
/**
 * get the Define Main Page Text
 */
?>
<div id="indexDefaultMainContent" class="content"><?php require($define_page); ?></div>
<?php } ?>

<?php
  $show_display_category = $db->Execute(SQL_SHOW_PRODUCT_INFO_MAIN);
  while (!$show_display_category->EOF) {
?>

<?php if ($show_display_category->fields['configuration_key'] == 'SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS') { ?>
<?php
/**
 * display the Featured Products Center Box
 */
?>
<?php require($template->get_template_dir('tpl_modules_featured_products.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_modules_featured_products.php'); ?>
<?php } ?>

<?php if ($show_display_category->fields['configuration_key'] == 'SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS') { ?>
<?php
/**
 * display the Special Products Center Box
 */
?>
<?php require($template->get_template_dir('tpl_modules_specials_default.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_modules_specials_default.php'); ?>
<?php } ?>

<?php if ($show_display_category->fields['configuration_key'] == 'SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS') { ?>
<?php
/**
 * display the New Products Center Box
 */
?>
<?php require($template->get_template_dir('tpl_modules_whats_new.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_modules_whats_new.php'); ?>
<?php } ?>

<?php if ($show_display_category->fields['configuration_key'] == 'SHOW_PRODUCT_INFO_MAIN_UPCOMING') { ?>
<?php
/**
 * display the Upcoming Products Center Box
 */
?>
<?php include(DIR_WS_MODULES . zen_get_module_directory(FILENAME_UPCOMING_PRODUCTS)); ?><?php } ?>


<?php
  $show_display_category->MoveNext();
} // !EOF
?>
</div>