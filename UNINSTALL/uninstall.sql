##########################################################################
# ZX Slideshow Uninstall - 2024-04-12 - webchills
# NUR AUSFÜHREN WENN SIE DAS MODUL AUS DER DATENBANK ENTFERNEN WOLLEN!!!!!
##########################################################################

DELETE FROM configuration_group WHERE configuration_group_title = 'ZX Slideshow';
DELETE FROM configuration WHERE configuration_key LIKE '%ZX_SLIDESHOW%';
DELETE FROM configuration_language WHERE configuration_key LIKE '%ZX_SLIDESHOW%';
DELETE FROM admin_pages WHERE page_key='configZXSlideshow';