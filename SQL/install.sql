##################################################################
# ZX Slideshow 2.8.0 Multilanguage Install - 2024-01-24 - webchills
##################################################################

INSERT INTO configuration_group (configuration_group_title, configuration_group_description, sort_order, visible) VALUES
('ZX Slideshow', 'Set Slideshow Options', '1', '1');
SET @gid=last_insert_id();
UPDATE configuration_group SET sort_order = last_insert_id() WHERE configuration_group_id = last_insert_id();

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES 
('ZX Slideshow', 'ZX_SLIDESHOW_STATUS', 'false', 'Activate ZX Slideshow for the main page', @gid, 1, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
('Slideshow Theme', 'ZX_SLIDESHOW_THEME', 'default', 'Select your theme', @gid, 2, NOW(), NULL, 'zen_cfg_select_option(array(\'default\', \'light\', \'dark\', \'bar\'),'),
('Effect', 'ZX_SLIDESHOW_EFFECT', 'fade', 'Effect used for image transition', @gid, 3, NOW(), NULL, 'zen_cfg_select_option(array(\'sliceDown\', \'sliceDownLeft\', \'sliceUp\', \'sliceUpLeft\', \'sliceUpDown\', \'sliceUpDownLeft\', \'fold\', \'fade\', \'random\', \'slideInRight\', \'slideInLeft\', \'boxRandom\', \'boxRain\', \'boxRainReverse\', \'boxRainGrow\', \'boxRainGrowReverse\'),'),
('Slideshow Animation Speed', 'ZX_SLIDESHOW_ANIM_SPEED', '500', 'Slide transition speed in miliseconds', @gid, 4, NOW(), NULL, NULL),
('Slideshow Pause Time', 'ZX_SLIDESHOW_PAUSE', '4000', 'How long each slide will show in miliseconds', @gid, 5, NOW(), NULL, NULL),
('Slideshow Navigation Arrows', 'ZX_SLIDESHOW_NAV', 'true', 'Show Prev/Next navigation arrows', @gid, 6, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
('Slideshow Navigation Hide', 'ZX_SLIDESHOW_NAV_HIDE', 'true', 'Show Prev/Next navigation arrows only on hover', @gid, 7, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
('Slideshow Numbered Navigation', 'ZX_SLIDESHOW_CONTROL_NAV', 'true', 'Show 1,2,3... navigation', @gid, 8, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
('Slideshow Pause on Hover', 'ZX_SLIDESHOW_HOVER_PAUSE', 'true', 'Stop animation while hovering', @gid, 9, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
('Banner Display Groups - Slide1', 'ZX_SLIDESHOW_BANNERS_GROUP_SET9', 'slide1', 'Slide 1', @gid, 10, NOW(), NULL, NULL),
('Banner Display Groups - Slide2', 'ZX_SLIDESHOW_BANNERS_GROUP_SET10', 'slide2', 'Slide 2', @gid, 11, NOW(), NULL, NULL),
('Banner Display Groups - Slide3', 'ZX_SLIDESHOW_BANNERS_GROUP_SET11', 'slide3', 'Slide 3', @gid, 12, NOW(), NULL, NULL),
('Banner Display Groups - Slide4', 'ZX_SLIDESHOW_BANNERS_GROUP_SET12', 'slide4', 'Slide 4', @gid, 13, NOW(), NULL, NULL),
('Banner Display Groups - Slide5', 'ZX_SLIDESHOW_BANNERS_GROUP_SET13', 'slide5', 'Slide 5', @gid, 14, NOW(), NULL, NULL),
('Banner Display Groups - Slide6', 'ZX_SLIDESHOW_BANNERS_GROUP_SET14', 'slide6', 'Slide 6', @gid, 15, NOW(), NULL, NULL),
('Banner Display Groups - Slide7', 'ZX_SLIDESHOW_BANNERS_GROUP_SET15', 'slide7', 'Slide 7', @gid, 16, NOW(), NULL, NULL),
('Banner Display Groups - Slide8', 'ZX_SLIDESHOW_BANNERS_GROUP_SET16', 'slide8', 'Slide 8', @gid, 17, NOW(), NULL, NULL),
('Banner Display Groups - Slide9', 'ZX_SLIDESHOW_BANNERS_GROUP_SET17', 'slide9', 'Slide 9', @gid, 18, NOW(), NULL, NULL),
('Banner Display Groups - Slide10', 'ZX_SLIDESHOW_BANNERS_GROUP_SET18', 'slide10', 'Slide 10', @gid, 19, NOW(), NULL, NULL),
('Banner Display Groups - Slide11', 'ZX_SLIDESHOW_BANNERS_GROUP_SET19', 'slide11', 'Slide 11', @gid, 20, NOW(), NULL, NULL),
('Banner Display Groups - Slide12', 'ZX_SLIDESHOW_BANNERS_GROUP_SET20', 'slide12', 'Slide 12', @gid, 21, NOW(), NULL, NULL),
('Banner Display Groups - Slide13', 'ZX_SLIDESHOW_BANNERS_GROUP_SET21', 'slide13', 'Slide 13', @gid, 22, NOW(), NULL, NULL),
('Banner Display Groups - Slide14', 'ZX_SLIDESHOW_BANNERS_GROUP_SET22', 'slide14', 'Slide 14', @gid, 23, NOW(), NULL, NULL),
('Banner Display Groups - Slide15', 'ZX_SLIDESHOW_BANNERS_GROUP_SET23', 'slide15', 'Slide 15', @gid, 24, NOW(), NULL, NULL),
('Banner Display Groups - Slide16', 'ZX_SLIDESHOW_BANNERS_GROUP_SET24', 'slide16', 'Slide 16', @gid, 25, NOW(), NULL, NULL),
('Banner Display Groups - Slide17', 'ZX_SLIDESHOW_BANNERS_GROUP_SET25', 'slide17', 'Slide 17', @gid, 26, NOW(), NULL, NULL),
('Banner Display Groups - Slide18', 'ZX_SLIDESHOW_BANNERS_GROUP_SET26', 'slide18', 'Slide 18', @gid, 27, NOW(), NULL, NULL),
('Banner Display Groups - Slide19', 'ZX_SLIDESHOW_BANNERS_GROUP_SET27', 'slide19', 'Slide 19', @gid, 28, NOW(), NULL, NULL),
('Banner Display Groups - Slide20', 'ZX_SLIDESHOW_BANNERS_GROUP_SET28', 'slide20', 'Slide 20', @gid, 29, NOW(), NULL, NULL),
('Slideshow - Image Height', 'ZX_SLIDESHOW_MAX_HEIGHT', '300', 'Set the maximum height of the slideshow images in pixel', @gid, 30, NOW(), NULL, NULL),
('Slideshow - Image Width', 'ZX_SLIDESHOW_MAX_WIDTH', '900', 'Set the maximum width of the slideshow images in pixel', @gid, 31, NOW(), NULL, NULL),
('ZX Slideshow Version', 'ZX_SLIDESHOW_VERSION', '2.8.0', 'Currently using: <strong>2.8.0</strong>', @gid, 32, NOW(), NULL, 'trim(');

##############################
# Add values for German admin
##############################

INSERT INTO configuration_group (configuration_group_id, language_id, configuration_group_title, configuration_group_description, sort_order, visible ) VALUES 
(@gid, 43, 'ZX Slideshow', 'Einstellungen zur ZX Slideshow', '1', '1');


REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('ZX Slideshow aktivieren?', 'ZX_SLIDESHOW_STATUS', 'Wollen Sie die Slideshow auf der Startseite aktivieren?',	43),
('Slideshow Theme', 'ZX_SLIDESHOW_THEME', 'Wählen Sie Ihr gewünschtes Theme:',	43),
('Slideshow Effekt', 'ZX_SLIDESHOW_EFFECT', 'Gewünschter Effekt für den Bildwechsel:',	43),
('Slideshow Animationsdauer', 'ZX_SLIDESHOW_ANIM_SPEED', 'Geschwindigkeit in Millisekunden',	43),
('Slideshow Pausenzeit', 'ZX_SLIDESHOW_PAUSE', 'Wie lange soll jedes Bild gezeigt werden (in Millisekunden)?',	43),
('Slideshow Navigationspfeile', 'ZX_SLIDESHOW_NAV', 'Zeige die Vorherige/Nächster Naigationspfeile an?',	43),
('Slideshow Navigation verbergen', 'ZX_SLIDESHOW_NAV_HIDE', 'Sollen die Navigationspfeile nur bei Mouseover über das Bild angezeigt werden?',	43),
('Slideshow numerierte Navigation', 'ZX_SLIDESHOW_CONTROL_NAV', 'Soll die 1,2,3,... Navigation angezeigt werden?',	43),
('Slideshow Pause bei Mouseover', 'ZX_SLIDESHOW_HOVER_PAUSE', 'Animation bei Mouseover stoppen?',	43),
('Banner Anzeigengruppe - Bild 1', 'ZX_SLIDESHOW_BANNERS_GROUP_SET9', 'Bild 1',	43),
('Banner Anzeigengruppe - Bild 2', 'ZX_SLIDESHOW_BANNERS_GROUP_SET10', 'Bild 2',	43),
('Banner Anzeigengruppe - Bild 3', 'ZX_SLIDESHOW_BANNERS_GROUP_SET11', 'Bild 3',	43),
('Banner Anzeigengruppe - Bild 4', 'ZX_SLIDESHOW_BANNERS_GROUP_SET12', 'Bild 4',	43),
('Banner Anzeigengruppe - Bild 5', 'ZX_SLIDESHOW_BANNERS_GROUP_SET13', 'Bild 5',	43),
('Banner Anzeigengruppe - Bild 6', 'ZX_SLIDESHOW_BANNERS_GROUP_SET14',	'Bild 6',	43),
('Banner Anzeigengruppe - Bild 7', 'ZX_SLIDESHOW_BANNERS_GROUP_SET15', 'Bild 7',	43),
('Banner Anzeigengruppe - Bild 8', 'ZX_SLIDESHOW_BANNERS_GROUP_SET16', 'Bild 8',	43),
('Banner Anzeigengruppe - Bild 9', 'ZX_SLIDESHOW_BANNERS_GROUP_SET17', 'Bild 9', 43),
('Banner Anzeigengruppe - Bild 10', 'ZX_SLIDESHOW_BANNERS_GROUP_SET18', 'Bild 10',	43),
('Banner Anzeigengruppe - Bild 11', 'ZX_SLIDESHOW_BANNERS_GROUP_SET19', 'Bild 11',	43),
('Banner Anzeigengruppe - Bild 12', 'ZX_SLIDESHOW_BANNERS_GROUP_SET20', 'Bild 12',	43),
('Banner Anzeigengruppe - Bild 13', 'ZX_SLIDESHOW_BANNERS_GROUP_SET21', 'Bild 13',	43),
('Banner Anzeigengruppe - Bild 14', 'ZX_SLIDESHOW_BANNERS_GROUP_SET22', 'Bild 14',	43),
('Banner Anzeigengruppe - Bild 15', 'ZX_SLIDESHOW_BANNERS_GROUP_SET23', 'Bild 15',	43),
('Banner Anzeigengruppe - Bild 16', 'ZX_SLIDESHOW_BANNERS_GROUP_SET24',	'Bild 16',	43),
('Banner Anzeigengruppe - Bild 17', 'ZX_SLIDESHOW_BANNERS_GROUP_SET25', 'Bild 17',	43),
('Banner Anzeigengruppe - Bild 18', 'ZX_SLIDESHOW_BANNERS_GROUP_SET26', 'Bild 18',	43),
('Banner Anzeigengruppe - Bild 19', 'ZX_SLIDESHOW_BANNERS_GROUP_SET27', 'Bild 19', 43),
('Banner Anzeigengruppe - Bild 20', 'ZX_SLIDESHOW_BANNERS_GROUP_SET28', 'Bild 20',	43),
('Banner Anzeigengruppe - Bild 20', 'ZX_SLIDESHOW_BANNERS_GROUP_SET28', 'Bild 20',	43),
('Slideshow Bildhöhe', 'ZX_SLIDESHOW_MAX_HEIGHT', 'Stellen Sie hier die maximale Höhe der Slideshow Bilder in Pixel ein:',	43),
('Slideshow Bildhöhe', 'ZX_SLIDESHOW_MAX_HEIGHT', 'Stellen Sie hier die maximale Breite der Slideshow Bilder in Pixel ein:',	43),
('Slideshow Bildbreite', 'ZX_SLIDESHOW_MAX_WIDTH', 'Derzeit nutzen Sie <b>2.8.0</b>',	43);

###################################
# Register for Admin Access Control
###################################

INSERT INTO admin_pages (page_key,language_key,main_page,page_params,menu_key,display_on_menu,sort_order)
VALUES ('configZXSlideshow','BOX_CONFIGURATION_ZX_SLIDESHOW','FILENAME_CONFIGURATION',CONCAT('gID=',@gid),'configuration','Y',@gid);