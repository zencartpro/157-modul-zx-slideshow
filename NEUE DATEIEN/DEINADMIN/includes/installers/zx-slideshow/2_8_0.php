<?php
/**
 * @package ZX Slideshow
 * @copyright Copyright 2003-2024 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license https://www.zen-cart-pro.at/license/3_0.txt GNU General Public License V3.0
 * @version $Id: 2_8_0.php  2024-04-12 11:44:51Z webchills $
 */
 
$db->Execute(" SELECT @gid:=configuration_group_id
FROM ".TABLE_CONFIGURATION_GROUP."
WHERE configuration_group_title= 'ZX Slideshow'
LIMIT 1;");


$db->Execute("INSERT IGNORE INTO ".TABLE_CONFIGURATION." (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES
('Slideshow - Image Height', 'ZX_SLIDESHOW_MAX_HEIGHT', '600', 'Set the maximum height of the slideshow images in pixel', @gid, 30, NOW(), NULL, NULL),
('Slideshow - Image Width', 'ZX_SLIDESHOW_MAX_WIDTH', '900', 'Set the maximum width of the slideshow images in pixel', @gid, 31, NOW(), NULL, NULL)");                        


$db->Execute("REPLACE INTO ".TABLE_CONFIGURATION_LANGUAGE." (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Slideshow Bildhöhe', 'ZX_SLIDESHOW_MAX_HEIGHT', 'Stellen Sie hier die maximale Höhe der Slideshow Bilder in Pixel ein:',	43),
('Slideshow Bildbreite', 'ZX_SLIDESHOW_MAX_WIDTH', 'Stellen Sie hier die maximale Breite der Slideshow Bilder in Pixel ein:',	43)");

$db->Execute("UPDATE " . TABLE_CONFIGURATION . " SET configuration_value = '2.8.0' WHERE configuration_key = 'ZX_SLIDESHOW_VERSION' LIMIT 1;");