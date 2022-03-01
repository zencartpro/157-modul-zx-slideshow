##########################################################################
# ZX Slideshow Uninstall - 2016-11-20 - webchills
# NUR AUSFÜHREN WENN SIE DAS MODUL AUS DER DATENBANK ENTFERNEN WOLLEN!!!!!
##########################################################################

SET @t4=0;
SELECT (@t4:=configuration_group_id) as t4 
FROM configuration_group
WHERE configuration_group_title= 'ZX Slideshow';
DELETE FROM configuration WHERE configuration_group_id = @t4 AND configuration_group_id != 0;
DELETE FROM configuration_group WHERE configuration_group_id = @t4 AND configuration_group_id != 0;
DELETE FROM configuration_language WHERE configuration_key LIKE '%ZX_SLIDESHOW%';
DELETE FROM admin_pages WHERE page_key='configZXSlideshow';