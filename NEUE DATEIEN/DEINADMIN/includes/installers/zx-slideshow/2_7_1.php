<?php
$db->Execute("UPDATE " . TABLE_CONFIGURATION . " SET configuration_value = '2.7.1' WHERE configuration_key = 'ZX_SLIDESHOW_VERSION' LIMIT 1;");