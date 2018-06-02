use upstream;
CREATE TABLE `django_migrations` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `app` varchar(255) NOT NULL, `name` varchar(255) NOT NULL, `applied` datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,`contenttypes`,`0001_initial`,`2018-03-02 10:03:52.744687`);
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2018-03-02 10:03:52.809561');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2018-03-02 10:03:52.874516');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2018-03-02 10:03:52.926370');
INSERT INTO django_migrations VALUES(5,'contenttypes','0002_remove_content_type_name','2018-03-02 10:03:53.001304');
INSERT INTO django_migrations VALUES(6,'auth','0002_alter_permission_name_max_length','2018-03-02 10:03:53.037417');
INSERT INTO django_migrations VALUES(7,'auth','0003_alter_user_email_max_length','2018-03-02 10:03:53.076520');
INSERT INTO django_migrations VALUES(8,'auth','0004_alter_user_username_opts','2018-03-02 10:03:53.125124');
INSERT INTO django_migrations VALUES(9,'auth','0005_alter_user_last_login_null','2018-03-02 10:03:53.169336');
INSERT INTO django_migrations VALUES(10,'auth','0006_require_contenttypes_0002','2018-03-02 10:03:53.181710');
INSERT INTO django_migrations VALUES(11,'auth','0007_alter_validators_add_error_messages','2018-03-02 10:03:53.222500');
INSERT INTO django_migrations VALUES(12,'auth','0008_alter_user_username_max_length','2018-03-02 10:03:53.276066');
INSERT INTO django_migrations VALUES(13,'database','0001_initial','2018-03-02 10:03:53.307524');
INSERT INTO django_migrations VALUES(14,'easy_thumbnails','0001_initial','2018-03-02 10:03:53.375319');
INSERT INTO django_migrations VALUES(15,'easy_thumbnails','0002_thumbnaildimensions','2018-03-02 10:03:53.402760');
INSERT INTO django_migrations VALUES(16,'sessions','0001_initial','2018-03-02 10:03:53.429780');
INSERT INTO django_migrations VALUES(17,'personnel','0001_initial','2018-03-02 10:41:45.277812');
INSERT INTO django_migrations VALUES(18,'personnel','0002_personnel_type_total','2018-03-02 11:54:35.219389');
INSERT INTO django_migrations VALUES(19,'personnel','0003_auto_20180302_2331','2018-03-02 20:31:09.473023');
INSERT INTO django_migrations VALUES(20,'personnel','0004_auto_20180305_1156','2018-03-05 08:57:56.363198');
INSERT INTO django_migrations VALUES(21,'personnel','0005_auto_20180305_1157','2018-03-05 08:57:56.425578');
INSERT INTO django_migrations VALUES(22,'menu','0001_initial','2018-03-05 19:57:53.175411');
INSERT INTO django_migrations VALUES(23,'menu','0002_booleandefaults','2018-03-05 19:57:53.229556');
INSERT INTO django_migrations VALUES(24,'personnel','0006_auto_20180305_2257','2018-03-05 19:57:53.326930');
INSERT INTO django_migrations VALUES(25,'django_mailbox','0001_initial','2018-03-07 21:27:55.425882');
INSERT INTO django_migrations VALUES(26,'django_mailbox','0002_add_eml_to_message','2018-03-07 21:27:55.500878');
INSERT INTO django_migrations VALUES(27,'django_mailbox','0003_auto_20150409_0316','2018-03-07 21:27:55.540975');
INSERT INTO django_migrations VALUES(28,'django_mailbox','0004_bytestring_to_unicode','2018-03-07 21:27:55.601963');
INSERT INTO django_migrations VALUES(29,'django_mailbox','0005_auto_20160523_2240','2018-03-07 21:27:55.635841');
INSERT INTO django_migrations VALUES(30,'django_mailbox','0006_mailbox_last_polling','2018-03-07 21:27:55.668044');
INSERT INTO django_migrations VALUES(31,'django_mailbox','0007_auto_20180308_0001','2018-03-07 21:27:55.711091');
INSERT INTO django_migrations VALUES(32,'homepage','0001_initial','2018-03-07 21:27:55.778810');
INSERT INTO django_migrations VALUES(33,'inventory','0001_initial','2018-03-07 21:27:55.979131');
INSERT INTO django_migrations VALUES(34,'projectManager','0001_initial','2018-03-07 21:27:56.202176');
INSERT INTO django_migrations VALUES(35,'tarlaguard','0001_initial','2018-03-07 21:27:56.506436');
INSERT INTO django_migrations VALUES(36,'personnel','0002_auto_20180308_2205','2018-03-08 19:05:35.522085');
INSERT INTO django_migrations VALUES(37,'actionslog','0001_initial','2018-03-08 19:49:41.397428');
INSERT INTO django_migrations VALUES(38,'actionslog','0002_auto_20180308_2249','2018-03-08 19:49:41.517351');
INSERT INTO django_migrations VALUES(39,'personnel','0003_auto_20180308_2249','2018-03-08 19:49:41.626912');
INSERT INTO django_migrations VALUES(40,'activity_logger','0001_initial','2018-03-08 20:35:22.540291');
INSERT INTO django_migrations VALUES(41,'auditlog','0001_initial','2018-03-08 20:45:40.511749');
INSERT INTO django_migrations VALUES(42,'auditlog','0002_auto_support_long_primary_keys','2018-03-08 20:45:40.582067');
INSERT INTO django_migrations VALUES(43,'auditlog','0003_logentry_remote_addr','2018-03-08 20:45:40.654141');
INSERT INTO django_migrations VALUES(44,'auditlog','0004_logentry_detailed_object_repr','2018-03-08 20:45:40.720379');
INSERT INTO django_migrations VALUES(45,'auditlog','0005_logentry_additional_data_verbose_name','2018-03-08 20:45:40.795893');
INSERT INTO django_migrations VALUES(46,'auditlog','0006_object_pk_index','2018-03-08 20:45:40.880795');
INSERT INTO django_migrations VALUES(47,'auditlog','0007_object_pk_type','2018-03-08 20:45:40.966815');
INSERT INTO django_migrations VALUES(48,'procurement','0001_initial','2018-03-09 17:05:31.302440');
INSERT INTO django_migrations VALUES(49,'procurement','0002_auto_20180129_1832','2018-03-09 17:05:31.376974');
INSERT INTO django_migrations VALUES(50,'procurement','0003_tendertype_bgcolor','2018-03-09 17:05:31.425969');
INSERT INTO django_migrations VALUES(51,'procurement','0004_auto_20180129_1919','2018-03-09 17:05:31.499048');
INSERT INTO django_migrations VALUES(52,'procurement','0005_auto_20180213_1929','2018-03-09 17:05:31.649792');
INSERT INTO django_migrations VALUES(53,'procurement','0006_auto_20180214_1842','2018-03-09 17:05:31.701836');
INSERT INTO django_migrations VALUES(54,'procurement','0007_auto_20180214_1847','2018-03-09 17:05:31.843593');
INSERT INTO django_migrations VALUES(55,'procurement','0008_auto_20180214_1849','2018-03-09 17:05:31.989480');
INSERT INTO django_migrations VALUES(56,'procurement','0009_auto_20180214_2250','2018-03-09 17:05:32.042094');
INSERT INTO django_migrations VALUES(57,'procurement','0010_auto_20180214_2255','2018-03-09 17:05:32.104968');
INSERT INTO django_migrations VALUES(58,'procurement','0011_tender_end_date_notify','2018-03-09 17:05:32.156379');
INSERT INTO django_migrations VALUES(59,'testapp','0001_initial','2018-03-09 20:43:06.544017');
INSERT INTO django_migrations VALUES(60,'testapp','0002_autor','2018-03-09 20:43:06.570840');
INSERT INTO django_migrations VALUES(61,'testapp','0003_addresses','2018-03-09 20:43:06.611144');
INSERT INTO django_migrations VALUES(62,'testapp','0004_auto_20170421_2128','2018-03-09 20:43:06.705620');
INSERT INTO django_migrations VALUES(63,'testapp','0005_auto_20180118_1924','2018-03-09 20:43:06.760003');
INSERT INTO django_migrations VALUES(64,'procurement','0012_auto_20180309_2352','2018-03-09 20:52:05.559919');
INSERT INTO django_migrations VALUES(65,'csvimport','0001_initial','2018-03-09 23:20:54.645248');
INSERT INTO django_migrations VALUES(66,'csvimport','0002_test_models','2018-03-09 23:20:54.761152');
INSERT INTO django_migrations VALUES(67,'procurement','0013_auto_20180310_0222','2018-03-09 23:22:31.518117');
INSERT INTO django_migrations VALUES(68,'csvimport','0003_auto_20180310_0258','2018-03-09 23:58:25.047106');
INSERT INTO django_migrations VALUES(69,'procurement','0014_auto_20180310_0258','2018-03-09 23:58:25.096224');
INSERT INTO django_migrations VALUES(70,'procurement','0015_auto_20180310_1042','2018-03-10 07:42:41.969641');
INSERT INTO django_migrations VALUES(71,'personnel','0004_auto_20180313_2135','2018-03-13 18:36:05.716633');
INSERT INTO django_migrations VALUES(72,'procurement','0016_auto_20180313_2135','2018-03-13 18:36:05.800163');
INSERT INTO django_migrations VALUES(73,'portunes','0001_initial','2018-03-13 18:37:26.831313');
INSERT INTO django_migrations VALUES(74,'procurement','0017_auto_20180321_0933','2018-03-21 06:33:49.296970');
INSERT INTO django_migrations VALUES(75,'personnel','0005_auto_20180321_1016','2018-03-21 07:16:33.527578');
INSERT INTO django_migrations VALUES(76,'personnel','0006_auto_20180322_0953','2018-03-22 06:53:34.387902');
INSERT INTO django_migrations VALUES(77,'portunes','0002_auto_20180322_0953','2018-03-22 06:53:34.708546');
INSERT INTO django_migrations VALUES(78,'generic_positions','0001_initial','2018-03-22 06:58:36.865771');
INSERT INTO django_migrations VALUES(79,'user_media','0001_initial','2018-03-22 06:58:36.958802');
INSERT INTO django_migrations VALUES(80,'user_media','0002_auto_20180322_0958','2018-03-22 06:58:37.029469');
INSERT INTO django_migrations VALUES(81,'sites','0001_initial','2018-03-22 07:10:42.303174');
INSERT INTO django_migrations VALUES(82,'sites','0002_alter_domain_unique','2018-03-22 07:10:42.368034');
INSERT INTO django_migrations VALUES(83,'personnel','0007_auto_20180322_1143','2018-03-22 08:43:37.377280');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auth_group` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(80) NOT NULL UNIQUE);
INSERT INTO auth_group VALUES(1,`portunes`);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auth_group_permissions` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `group_id` integer NOT NULL REFERENCES `auth_group` (`id`), `permission_id` integer NOT NULL REFERENCES `auth_permission` (`id`));
INSERT INTO auth_group_permissions VALUES(1,1,88);
INSERT INTO auth_group_permissions VALUES(2,1,89);
INSERT INTO auth_group_permissions VALUES(3,1,90);
INSERT INTO auth_group_permissions VALUES(4,1,91);
INSERT INTO auth_group_permissions VALUES(5,1,92);
INSERT INTO auth_group_permissions VALUES(6,1,93);
INSERT INTO auth_group_permissions VALUES(7,1,94);
INSERT INTO auth_group_permissions VALUES(8,1,95);
INSERT INTO auth_group_permissions VALUES(9,1,96);
INSERT INTO auth_group_permissions VALUES(10,1,97);
INSERT INTO auth_group_permissions VALUES(11,1,98);
INSERT INTO auth_group_permissions VALUES(12,1,99);
INSERT INTO auth_group_permissions VALUES(13,1,100);
INSERT INTO auth_group_permissions VALUES(14,1,101);
INSERT INTO auth_group_permissions VALUES(15,1,102);
INSERT INTO auth_group_permissions VALUES(16,1,103);
INSERT INTO auth_group_permissions VALUES(17,1,104);
INSERT INTO auth_group_permissions VALUES(18,1,105);
INSERT INTO auth_group_permissions VALUES(19,1,106);
INSERT INTO auth_group_permissions VALUES(20,1,107);
INSERT INTO auth_group_permissions VALUES(21,1,108);
INSERT INTO auth_group_permissions VALUES(22,1,109);
INSERT INTO auth_group_permissions VALUES(23,1,110);
INSERT INTO auth_group_permissions VALUES(24,1,111);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auth_user_groups` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `user_id` integer NOT NULL REFERENCES `auth_user` (`id`), `group_id` integer NOT NULL REFERENCES `auth_group` (`id`));
INSERT INTO auth_user_groups VALUES(1,1,1);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auth_user_user_permissions` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `user_id` integer NOT NULL REFERENCES `auth_user` (`id`), `permission_id` integer NOT NULL REFERENCES `auth_permission` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_admin_log` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `object_id` text NULL, `object_repr` varchar(200) NOT NULL, `action_flag` smallint unsigned NOT NULL, `change_message` text NOT NULL, `content_type_id` integer NULL REFERENCES `django_content_type` (`id`), `user_id` integer NOT NULL REFERENCES `auth_user` (`id`), `action_time` datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,`1`,`Bilal Tonga`,3,``,13,1,`2018-03-05 10:35:04.680364`);
INSERT INTO django_admin_log VALUES(2,'2','hazan',1,'[{\'added\': {}}]',5,1,'2018-03-05 13:22:48.468442');
INSERT INTO django_admin_log VALUES(3,'2','hazan gençay',2,'[{\'changed\': {\'fields\': [\'user\']}}]',13,1,'2018-03-05 13:22:53.355052');
INSERT INTO django_admin_log VALUES(4,'2','hazan',2,'[{\'changed\': {\'fields\': [\'last_login\']}}]',5,1,'2018-03-05 18:36:34.840677');
INSERT INTO django_admin_log VALUES(5,'1','Personel',2,'[{\'changed\': {\'fields\': [\'total\']}}]',12,1,'2018-03-05 19:04:54.436855');
INSERT INTO django_admin_log VALUES(6,'3','Ziyaretçi',2,'[{\'changed\': {\'fields\': [\'total\']}}]',12,1,'2018-03-05 19:05:02.551499');
INSERT INTO django_admin_log VALUES(7,'1','personel',1,'[{\'added\': {}}, {\'added\': {\'object\': \'personel 500. Personelleri Listele\', \'name\': \'menu item\'}}]',20,1,'2018-03-05 20:14:38.813045');
INSERT INTO django_admin_log VALUES(8,'1','Personel Yönetimi',2,'[{\'changed\': {\'fields\': [\'name\', \'slug\']}}]',20,1,'2018-03-05 20:15:34.192623');
INSERT INTO django_admin_log VALUES(9,'1','Personel Yönetimi',2,'[{\'changed\': {\'fields\': [\'slug\']}}]',20,1,'2018-03-05 20:15:59.702381');
INSERT INTO django_admin_log VALUES(10,'1','Personel Yönetimi',2,'[{\'changed\': {\'fields\': [\'link_url\'], \'object\': \'personnel-edit 10. Personelleri Listele\', \'name\': \'menu item\'}}]',20,1,'2018-03-05 20:16:45.734106');
INSERT INTO django_admin_log VALUES(11,'1','Personel Yönetimi',2,'[{\'added\': {\'object\': \'personnel-edit 500. Kullan\u0131c\u0131 T\u00fcrleri\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'title\'], \'object\': \'personnel-edit 10. Kullan\u0131c\u0131lar\', \'name\': \'menu item\'}}]',20,1,'2018-03-05 20:17:22.221474');
INSERT INTO django_admin_log VALUES(12,'1','Personel Yönetimi',2,'[{\'added\': {\'object\': \'personnel-edit 1. Dashboard\', \'name\': \'menu item\'}}]',20,1,'2018-03-05 20:17:46.268060');
INSERT INTO django_admin_log VALUES(13,'2','Personel',1,'[{\'added\': {}}, {\'added\': {\'object\': \'personnel-profile 500. Profil\', \'name\': \'menu item\'}}]',20,1,'2018-03-05 20:20:25.880546');
INSERT INTO django_admin_log VALUES(14,'3','header menu',1,'[{\'added\': {}}, {\'added\': {\'object\': \'header_menu 500. Kullan\u0131c\u0131 Y\u00f6netimi\', \'name\': \'menu item\'}}]',20,1,'2018-03-05 21:34:14.407739');
INSERT INTO django_admin_log VALUES(15,'6','header_menu',2,'[{\'changed\': {\'fields\': [\'title\'], \'object\': \'header_menu 500. Kullan\u0131c\u0131 Y\u00f6netimi\', \'name\': \'menu item\'}}]',20,1,'2018-03-07 21:33:56.517057');
INSERT INTO django_admin_log VALUES(16,'3','mekrem',3,'',5,1,'2018-03-07 22:44:51.560002');
INSERT INTO django_admin_log VALUES(17,'4','mekrem',1,'[{\'added\': {}}]',5,1,'2018-03-07 22:45:18.233175');
INSERT INTO django_admin_log VALUES(18,'4','mekrem',3,'',5,1,'2018-03-07 22:46:47.683828');
INSERT INTO django_admin_log VALUES(19,'5','gunebakan',1,'[{\'added\': {}}]',5,1,'2018-03-07 22:46:59.128465');
INSERT INTO django_admin_log VALUES(20,'2','personnel',2,'[{\'added\': {\'object\': \'personnel 500. Kullan\u0131c\u0131 t\u00fcrleri\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'link_url\', \'title\'], \'object\': \'personnel 500. Kullan\u0131c\u0131lar\', \'name\': \'menu item\'}}]',20,1,'2018-03-07 23:11:24.776272');
INSERT INTO django_admin_log VALUES(21,'2','de',3,'',12,1,'2018-03-08 16:30:33.940553');
INSERT INTO django_admin_log VALUES(22,'4','sdsada',3,'',12,1,'2018-03-08 16:30:34.025872');
INSERT INTO django_admin_log VALUES(23,'2','personnel',2,'[{\'added\': {\'object\': \'personnel 9. Dashboard\', \'name\': \'menu item\'}}]',20,1,'2018-03-08 19:07:15.732971');
INSERT INTO django_admin_log VALUES(24,'33','mehmet',1,'[{\'added\': {}}]',5,1,'2018-03-08 19:17:32.490150');
INSERT INTO django_admin_log VALUES(25,'33','mehmet',2,'[{\'changed\': {\'fields\': [\'first_name\', \'last_name\', \'email\']}}]',5,1,'2018-03-08 19:18:29.859618');
INSERT INTO django_admin_log VALUES(26,'33','mehmet',3,'',5,1,'2018-03-08 19:29:15.442341');
INSERT INTO django_admin_log VALUES(27,'6','Mehmet Tokgöz',3,'',13,1,'2018-03-08 19:58:03.738345');
INSERT INTO django_admin_log VALUES(28,'34','mtokgoz',3,'',5,1,'2018-03-08 20:00:33.377087');
INSERT INTO django_admin_log VALUES(29,'35','mtokgoz',1,'[{\'added\': {}}]',5,1,'2018-03-08 20:00:57.016604');
INSERT INTO django_admin_log VALUES(30,'8','as sfd',3,'',13,1,'2018-03-08 20:08:39.857064');
INSERT INTO django_admin_log VALUES(31,'9','asdsa sadsada',3,'',13,1,'2018-03-08 20:08:39.883059');
INSERT INTO django_admin_log VALUES(32,'7','m t',3,'',13,1,'2018-03-08 20:08:39.893730');
INSERT INTO django_admin_log VALUES(33,'8','as sfd',3,'',13,1,'2018-03-08 20:09:22.320535');
INSERT INTO django_admin_log VALUES(34,'9','asdsa sadsada',3,'',13,1,'2018-03-08 20:09:22.330900');
INSERT INTO django_admin_log VALUES(35,'7','m t',3,'',13,1,'2018-03-08 20:09:22.339912');
INSERT INTO django_admin_log VALUES(36,'15','aaksoy',3,'',5,1,'2018-03-08 22:06:12.349135');
INSERT INTO django_admin_log VALUES(37,'18','ahmet-basaran',3,'',5,1,'2018-03-08 22:06:12.374846');
INSERT INTO django_admin_log VALUES(38,'7','akif-gurer',3,'',5,1,'2018-03-08 22:06:12.399525');
INSERT INTO django_admin_log VALUES(39,'21','ali-ekber',3,'',5,1,'2018-03-08 22:06:12.417317');
INSERT INTO django_admin_log VALUES(40,'29','ayhan-aydin',3,'',5,1,'2018-03-08 22:06:12.433691');
INSERT INTO django_admin_log VALUES(41,'31','bilal-tonga',3,'',5,1,'2018-03-08 22:06:12.445182');
INSERT INTO django_admin_log VALUES(42,'10','bulent-yilmaz',3,'',5,1,'2018-03-08 22:06:12.462974');
INSERT INTO django_admin_log VALUES(43,'13','burak-cetindas',3,'',5,1,'2018-03-08 22:06:12.479889');
INSERT INTO django_admin_log VALUES(44,'28','burak-koc',3,'',5,1,'2018-03-08 22:06:12.503900');
INSERT INTO django_admin_log VALUES(45,'24','caglar-kaya',3,'',5,1,'2018-03-08 22:06:12.528946');
INSERT INTO django_admin_log VALUES(46,'11','can-atilla',3,'',5,1,'2018-03-08 22:06:12.544980');
INSERT INTO django_admin_log VALUES(47,'14','cemile-fidan',3,'',5,1,'2018-03-08 22:06:12.554696');
INSERT INTO django_admin_log VALUES(48,'9','denizhan-erenler',3,'',5,1,'2018-03-08 22:06:12.566295');
INSERT INTO django_admin_log VALUES(49,'25','emre-kazanci',3,'',5,1,'2018-03-08 22:06:12.584170');
INSERT INTO django_admin_log VALUES(50,'32','fd-admin',3,'',5,1,'2018-03-08 22:06:12.601411');
INSERT INTO django_admin_log VALUES(51,'5','gunebakan',3,'',5,1,'2018-03-08 22:06:12.610747');
INSERT INTO django_admin_log VALUES(52,'17','hatice-yildiz',3,'',5,1,'2018-03-08 22:06:12.635370');
INSERT INTO django_admin_log VALUES(53,'22','hatice-yilmaz',3,'',5,1,'2018-03-08 22:06:12.652156');
INSERT INTO django_admin_log VALUES(54,'2','hazan',3,'',5,1,'2018-03-08 22:06:12.676727');
INSERT INTO django_admin_log VALUES(55,'20','huseyin-yildiz',3,'',5,1,'2018-03-08 22:06:12.711805');
INSERT INTO django_admin_log VALUES(56,'12','ibrahim-sara',3,'',5,1,'2018-03-08 22:06:12.727243');
INSERT INTO django_admin_log VALUES(57,'23','kadir-evirgen',3,'',5,1,'2018-03-08 22:06:12.737537');
INSERT INTO django_admin_log VALUES(58,'27','mehmet-bozdogan',3,'',5,1,'2018-03-08 22:06:12.749389');
INSERT INTO django_admin_log VALUES(59,'19','mehmet-yildiz',3,'',5,1,'2018-03-08 22:06:12.759399');
INSERT INTO django_admin_log VALUES(60,'8','melike-kaya',3,'',5,1,'2018-03-08 22:06:12.769056');
INSERT INTO django_admin_log VALUES(61,'35','mtokgoz',3,'',5,1,'2018-03-08 22:06:12.787153');
INSERT INTO django_admin_log VALUES(62,'6','mustafa-dogan',3,'',5,1,'2018-03-08 22:06:12.809985');
INSERT INTO django_admin_log VALUES(63,'30','omer-elcim',3,'',5,1,'2018-03-08 22:06:12.826231');
INSERT INTO django_admin_log VALUES(64,'26','ozlem-karsli',3,'',5,1,'2018-03-08 22:06:12.838410');
INSERT INTO django_admin_log VALUES(65,'16','sayyora-artikova',3,'',5,1,'2018-03-08 22:06:12.848407');
INSERT INTO django_admin_log VALUES(66,'36','asdsad',1,'[{\'added\': {}}]',5,1,'2018-03-08 22:10:09.983909');
INSERT INTO django_admin_log VALUES(67,'6','header_menu',2,'[{\'added\': {\'object\': \'header_menu 500. \u0130hale Y\u00f6netimi\', \'name\': \'menu item\'}}]',20,1,'2018-03-09 17:06:18.088883');
INSERT INTO django_admin_log VALUES(68,'7','İhale Yönetimi',1,'[{\'added\': {}}, {\'added\': {\'object\': \'procurement 500. Dashboard\', \'name\': \'menu item\'}}, {\'added\': {\'object\': \'procurement 500. \u0130hale Olu\u015ftur\', \'name\': \'menu item\'}}, {\'added\': {\'object\': \'procurement 500. \u0130haleleri Listele\', \'name\': \'menu item\'}}, {\'added\': {\'object\': \'procurement 500. \u0130hale T\u00fcr\u00fc olu\u015ftur\', \'name\': \'menu item\'}}]',20,1,'2018-03-09 17:07:44.922703');
INSERT INTO django_admin_log VALUES(69,'2','Personel Yönetimi',2,'[{\'changed\': {\'fields\': [\'name\']}}]',20,1,'2018-03-09 18:09:11.648185');
INSERT INTO django_admin_log VALUES(70,'1','Türk Lirası',1,'[{\'added\': {}}]',58,1,'2018-03-09 18:09:54.553615');
INSERT INTO django_admin_log VALUES(71,'2','Dolar',1,'[{\'added\': {}}]',58,1,'2018-03-09 18:10:05.402683');
INSERT INTO django_admin_log VALUES(72,'3','Euro',1,'[{\'added\': {}}]',58,1,'2018-03-09 18:10:17.955304');
INSERT INTO django_admin_log VALUES(73,'1','Hizmet',1,'[{\'added\': {}}]',60,1,'2018-03-09 18:10:46.226427');
INSERT INTO django_admin_log VALUES(74,'2','Donanım',1,'[{\'added\': {}}]',60,1,'2018-03-09 18:11:07.004857');
INSERT INTO django_admin_log VALUES(75,'3','Sarf',1,'[{\'added\': {}}]',60,1,'2018-03-09 18:11:24.772993');
INSERT INTO django_admin_log VALUES(76,'4','Bakım Onarım',1,'[{\'added\': {}}]',60,1,'2018-03-09 18:11:56.829254');
INSERT INTO django_admin_log VALUES(77,'1','İhalesi Yapıldı',1,'[{\'added\': {}}]',57,1,'2018-03-09 18:12:19.478841');
INSERT INTO django_admin_log VALUES(78,'2','İhale iptali istendi',1,'[{\'added\': {}}]',57,1,'2018-03-09 18:12:35.616145');
INSERT INTO django_admin_log VALUES(79,'3','Faturası ödendi',1,'[{\'added\': {}}]',57,1,'2018-03-09 18:12:50.984434');
INSERT INTO django_admin_log VALUES(80,'4','Onayı alındı-İhalesi Yapılacak',1,'[{\'added\': {}}]',57,1,'2018-03-09 18:13:11.486017');
INSERT INTO django_admin_log VALUES(81,'1','İhalesi Yapıldı',2,'[{\'changed\': {\'fields\': [\'bgcolor\']}}]',57,1,'2018-03-09 22:09:56.125987');
INSERT INTO django_admin_log VALUES(82,'1','İhalesi Yapıldı',2,'[{\'changed\': {\'fields\': [\'bgcolor\']}}]',57,1,'2018-03-09 22:14:22.772972');
INSERT INTO django_admin_log VALUES(83,'1','İhalesi Yapıldı',2,'[{\'changed\': {\'fields\': [\'bgcolor\']}}]',57,1,'2018-03-09 22:15:52.113651');
INSERT INTO django_admin_log VALUES(84,'1','İhalesi Yapıldı',2,'[{\'changed\': {\'fields\': [\'bgcolor\']}}]',57,1,'2018-03-09 22:16:00.542564');
INSERT INTO django_admin_log VALUES(85,'1','csv/sartname.csv',1,'[{\'added\': {}}]',67,1,'2018-03-09 23:37:01.623484');
INSERT INTO django_admin_log VALUES(86,'5','Ödeme Emri   Strateji Onayı',1,'[{\'added\': {}}]',57,1,'2018-03-09 23:42:43.403976');
INSERT INTO django_admin_log VALUES(87,'6','Ödeme Emri',1,'[{\'added\': {}}]',57,1,'2018-03-09 23:46:22.152895');
INSERT INTO django_admin_log VALUES(88,'5','Strateji Onayı',2,'[{\'changed\': {\'fields\': [\'name\']}}]',57,1,'2018-03-09 23:46:31.716024');
INSERT INTO django_admin_log VALUES(89,'2','csv/supplier.csv',1,'[{\'added\': {}}]',67,1,'2018-03-10 00:00:27.859039');
INSERT INTO django_admin_log VALUES(90,'4','',3,'',55,1,'2018-03-10 00:01:56.035624');
INSERT INTO django_admin_log VALUES(91,'21','Ares',3,'',55,1,'2018-03-10 00:01:56.054209');
INSERT INTO django_admin_log VALUES(92,'38','Barış Isıtma',3,'',55,1,'2018-03-10 00:01:56.072893');
INSERT INTO django_admin_log VALUES(93,'64','OLCA',3,'',55,1,'2018-03-10 00:01:56.084667');
INSERT INTO django_admin_log VALUES(94,'24','Olca',3,'',55,1,'2018-03-10 00:01:56.102030');
INSERT INTO django_admin_log VALUES(95,'13','Zenotek',3,'',55,1,'2018-03-10 00:01:56.117287');
INSERT INTO django_admin_log VALUES(96,'25','Özdemir',3,'',55,1,'2018-03-10 00:01:56.135256');
INSERT INTO django_admin_log VALUES(97,'22','Üçtuğ',3,'',55,1,'2018-03-10 00:01:56.145187');
INSERT INTO django_admin_log VALUES(98,'5','Yazılım',1,'[{\'added\': {}}]',60,1,'2018-03-10 08:00:29.391154');
INSERT INTO django_admin_log VALUES(99,'28','10 Kalem Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.638001');
INSERT INTO django_admin_log VALUES(100,'55','10 Kalem Malzeme Alımı (Step Motor Tip 1 ve Tip2)',3,'',54,1,'2018-03-10 09:02:56.654694');
INSERT INTO django_admin_log VALUES(101,'119','10 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.671327');
INSERT INTO django_admin_log VALUES(102,'110','1000 lt Tekerlekli Sıvı Helyum Taşıma Saklama Tankı',3,'',54,1,'2018-03-10 09:02:56.679969');
INSERT INTO django_admin_log VALUES(103,'35','11 Kalem Sarf Malzeme Alımı (Temiz Oda Sarfları)',3,'',54,1,'2018-03-10 09:02:56.691534');
INSERT INTO django_admin_log VALUES(104,'68','118 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.701911');
INSERT INTO django_admin_log VALUES(105,'31','14 Kalem Yazılım Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.719025');
INSERT INTO django_admin_log VALUES(106,'108','16 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.748428');
INSERT INTO django_admin_log VALUES(107,'43','170 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.756883');
INSERT INTO django_admin_log VALUES(108,'116','19 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.767453');
INSERT INTO django_admin_log VALUES(109,'57','2 Kalem Kontrol Donanım Alımı (Endüstriyel Sunucu ve Endüstriyel Medya Çevirici)',3,'',54,1,'2018-03-10 09:02:56.779196');
INSERT INTO django_admin_log VALUES(110,'53','2 adet dijital veri toplama kartı',3,'',54,1,'2018-03-10 09:02:56.787811');
INSERT INTO django_admin_log VALUES(111,'83','20 Kalem Sarf Malzeme',3,'',54,1,'2018-03-10 09:02:56.802673');
INSERT INTO django_admin_log VALUES(112,'50','23 Kalem Sarf Malzeme Elektrik Alımı',3,'',54,1,'2018-03-10 09:02:56.820314');
INSERT INTO django_admin_log VALUES(113,'24','250 keV Normal İletken Hızlandırıcı Yüksek Gerilim Hattının Elektrik Altyapısı',3,'',54,1,'2018-03-10 09:02:56.835749');
INSERT INTO django_admin_log VALUES(114,'12','26 kalem malzeme',3,'',54,1,'2018-03-10 09:02:56.852314');
INSERT INTO django_admin_log VALUES(115,'16','28 kalem sarf  malzeme alımı',3,'',54,1,'2018-03-10 09:02:56.875428');
INSERT INTO django_admin_log VALUES(116,'66','3 Kalem Hizmet Alımı',3,'',54,1,'2018-03-10 09:02:56.893011');
INSERT INTO django_admin_log VALUES(117,'38','3 Kalem Optik Masa',3,'',54,1,'2018-03-10 09:02:56.910619');
INSERT INTO django_admin_log VALUES(118,'22','3 Kalem İmalat Hizmeti',3,'',54,1,'2018-03-10 09:02:56.934722');
INSERT INTO django_admin_log VALUES(119,'9','3 kalem donanım alımı (Projeksiyon cihazı Tip1,Zayıf İstemci bilg.ve Projeksiyon cihazı Tip2)',3,'',54,1,'2018-03-10 09:02:56.945443');
INSERT INTO django_admin_log VALUES(120,'58','30 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.953961');
INSERT INTO django_admin_log VALUES(121,'30','30 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.962868');
INSERT INTO django_admin_log VALUES(122,'34','32 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.985432');
INSERT INTO django_admin_log VALUES(123,'125','33 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:56.993868');
INSERT INTO django_admin_log VALUES(124,'78','33 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.010960');
INSERT INTO django_admin_log VALUES(125,'95','36 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.032418');
INSERT INTO django_admin_log VALUES(126,'63','4 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.049107');
INSERT INTO django_admin_log VALUES(127,'20','4 kalem Optik Donanım Listesi',3,'',54,1,'2018-03-10 09:02:57.065693');
INSERT INTO django_admin_log VALUES(128,'4','41 kalem malzeme',3,'',54,1,'2018-03-10 09:02:57.082824');
INSERT INTO django_admin_log VALUES(129,'64','53 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.100974');
INSERT INTO django_admin_log VALUES(130,'99','7 Kalem Donanım Alımı',3,'',54,1,'2018-03-10 09:02:57.114362');
INSERT INTO django_admin_log VALUES(131,'109','7 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.144800');
INSERT INTO django_admin_log VALUES(132,'90','7 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.154308');
INSERT INTO django_admin_log VALUES(133,'112','74 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.164567');
INSERT INTO django_admin_log VALUES(134,'96','8 Kalem Donanım Alımı',3,'',54,1,'2018-03-10 09:02:57.179975');
INSERT INTO django_admin_log VALUES(135,'115','8 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:02:57.196931');
INSERT INTO django_admin_log VALUES(136,'105','ANSYS',3,'',54,1,'2018-03-10 09:02:57.220312');
INSERT INTO django_admin_log VALUES(137,'123','Araç Kiralama Hizmeti',3,'',54,1,'2018-03-10 09:02:57.228864');
INSERT INTO django_admin_log VALUES(138,'67','Ayarlanabilir Yüksek Gerilim Güç Kaynağı Tip 1',3,'',54,1,'2018-03-10 09:02:57.239449');
INSERT INTO django_admin_log VALUES(139,'122','Azot Tankı Tip1',3,'',54,1,'2018-03-10 09:02:57.261797');
INSERT INTO django_admin_log VALUES(140,'21','Azot Transfer Hattı İmalat Hizmeti',3,'',54,1,'2018-03-10 09:02:57.272082');
INSERT INTO django_admin_log VALUES(141,'37','Baca Gazı İyonize Hava Monitor Sistemi Tasarım Hizmeti',3,'',54,1,'2018-03-10 09:02:57.286843');
INSERT INTO django_admin_log VALUES(142,'5','Barkod Yazıcısı alımı',3,'',54,1,'2018-03-10 09:02:57.308651');
INSERT INTO django_admin_log VALUES(143,'1','Barkod Yazıcısı alımı',3,'',54,1,'2018-03-10 09:02:57.325178');
INSERT INTO django_admin_log VALUES(144,'6','Baskı Devre Makinası',3,'',54,1,'2018-03-10 09:02:57.342760');
INSERT INTO django_admin_log VALUES(145,'93','CNC torna tezgahı',3,'',54,1,'2018-03-10 09:02:57.352498');
INSERT INTO django_admin_log VALUES(146,'15','Demet Görüntüleme Sistemi Tutucusu İmalatı Hizmeti',3,'',54,1,'2018-03-10 09:02:57.360479');
INSERT INTO django_admin_log VALUES(147,'76','Demet Hattı Elemanları İmalatı Hizmeti',3,'',54,1,'2018-03-10 09:02:57.370367');
INSERT INTO django_admin_log VALUES(148,'73','Demet Taşınım Hattı Sehpası İmalat Hizmeti',3,'',54,1,'2018-03-10 09:02:57.380699');
INSERT INTO django_admin_log VALUES(149,'77','Diagnostik Donanımları İmalatı Hizmeti',3,'',54,1,'2018-03-10 09:02:57.391726');
INSERT INTO django_admin_log VALUES(150,'100','Dipole Magnet Üretim Hizmeti',3,'',54,1,'2018-03-10 09:02:57.415064');
INSERT INTO django_admin_log VALUES(151,'33','Dizel  Jeneratörler için Dizel Yakıt Alımı',3,'',54,1,'2018-03-10 09:02:57.423711');
INSERT INTO django_admin_log VALUES(152,'69','Dizel Jeneratörler İçin Dizel Yakıt Alımı',3,'',54,1,'2018-03-10 09:02:57.433774');
INSERT INTO django_admin_log VALUES(153,'121','Dozimetre Okuyucuları(Dozimetre Okuyucu Tip1, Dozimetre Okuyucu Tip2',3,'',54,1,'2018-03-10 09:02:57.451796');
INSERT INTO django_admin_log VALUES(154,'114','Dozimetre doğrulama ve kalibrasyon hizmeti',3,'',54,1,'2018-03-10 09:02:57.468516');
INSERT INTO django_admin_log VALUES(155,'88','Elektrik Altyapı Otomasyon Bakım Hizmeti',3,'',54,1,'2018-03-10 09:02:57.489808');
INSERT INTO django_admin_log VALUES(156,'45','Elemental Analiz Spektrometresi',3,'',54,1,'2018-03-10 09:02:57.505408');
INSERT INTO django_admin_log VALUES(157,'103','Enjektör Spektrometre İmalat Hizmeti',3,'',54,1,'2018-03-10 09:02:57.529094');
INSERT INTO django_admin_log VALUES(158,'36','Etiket Makinası',3,'',54,1,'2018-03-10 09:02:57.537555');
INSERT INTO django_admin_log VALUES(159,'51','Femto Saniye Lazer Yükselteç Sistemi',3,'',54,1,'2018-03-10 09:02:57.546221');
INSERT INTO django_admin_log VALUES(160,'106','Fiber Optik Fusion Cihazı',3,'',54,1,'2018-03-10 09:02:57.556464');
INSERT INTO django_admin_log VALUES(161,'39','Frekans Kontrollü AC Motor Sürücü Alımı',3,'',54,1,'2018-03-10 09:02:57.564856');
INSERT INTO django_admin_log VALUES(162,'61','Güvenlik Giriş Kapısı ve Çevre Düzenlemesi Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:02:57.576349');
INSERT INTO django_admin_log VALUES(163,'59','Güçmetre',3,'',54,1,'2018-03-10 09:02:57.585024');
INSERT INTO django_admin_log VALUES(164,'23','Güçmetre',3,'',54,1,'2018-03-10 09:02:57.595497');
INSERT INTO django_admin_log VALUES(165,'18','Havalandırma Sistemi ve Kazan Brulör Bakım ve Tadilatı Hizmeti',3,'',54,1,'2018-03-10 09:02:57.612177');
INSERT INTO django_admin_log VALUES(166,'79','Helyum Odası Sıcak Hava Tahliye Sistemi Kurulumu Hizmeti',3,'',54,1,'2018-03-10 09:02:57.633948');
INSERT INTO django_admin_log VALUES(167,'8','Hızlandırıcı Kontrol Sistemi Danışmanlık Hizmeti (cosylab)',3,'',54,1,'2018-03-10 09:02:57.651378');
INSERT INTO django_admin_log VALUES(168,'113','KGS Kontrol Panoları',3,'',54,1,'2018-03-10 09:02:57.668317');
INSERT INTO django_admin_log VALUES(169,'91','Kesintisiz Güç Kaynağı Sistemi',3,'',54,1,'2018-03-10 09:02:57.677375');
INSERT INTO django_admin_log VALUES(170,'26','Kişisel Doz Takip Sistemi Yazılım Hizmeti',3,'',54,1,'2018-03-10 09:02:57.694382');
INSERT INTO django_admin_log VALUES(171,'56','Kompanzasyon Bakım Onarım İşleri',3,'',54,1,'2018-03-10 09:02:57.710552');
INSERT INTO django_admin_log VALUES(172,'124','Konferans Salonu Sandalyesi',3,'',54,1,'2018-03-10 09:02:57.720743');
INSERT INTO django_admin_log VALUES(173,'81','Kontrol Sistemi Donanımları (Ağ Anahtarları, Server, Endüstriyel PC, İş İstasyonları, Bilgisayarlar, ADC vb)',3,'',54,1,'2018-03-10 09:02:57.735514');
INSERT INTO django_admin_log VALUES(174,'48','Kontrol odası tasarım üretim ve kurulum hizmeti',3,'',54,1,'2018-03-10 09:02:57.745979');
INSERT INTO django_admin_log VALUES(175,'92','Kütle Spektrometresi',3,'',54,1,'2018-03-10 09:02:57.756939');
INSERT INTO django_admin_log VALUES(176,'14','LLRF Tasarım Hizmeti',3,'',54,1,'2018-03-10 09:02:57.768442');
INSERT INTO django_admin_log VALUES(177,'70','Leak Dedektörü Bakım Onarım ve Kalibrasyonu',3,'',54,1,'2018-03-10 09:02:57.793588');
INSERT INTO django_admin_log VALUES(178,'41','Master Osilatör',3,'',54,1,'2018-03-10 09:02:57.802116');
INSERT INTO django_admin_log VALUES(179,'25','Mekanik Tasarım Destek Hizmeti',3,'',54,1,'2018-03-10 09:02:57.818917');
INSERT INTO django_admin_log VALUES(180,'75','Mekanik İmalat ve Montaj Destek Hizmeti',3,'',54,1,'2018-03-10 09:02:57.829144');
INSERT INTO django_admin_log VALUES(181,'104','Mekanik İmalat İşleri- Korkuluk',3,'',54,1,'2018-03-10 09:02:57.859962');
INSERT INTO django_admin_log VALUES(182,'29','Monitör Askı Aparatı',3,'',54,1,'2018-03-10 09:02:57.884365');
INSERT INTO django_admin_log VALUES(183,'86','Muhtelif Hizmet Alımı 1',3,'',54,1,'2018-03-10 09:02:57.905577');
INSERT INTO django_admin_log VALUES(184,'71','Muhtelif Hizmet Alımı 1',3,'',54,1,'2018-03-10 09:02:57.920613');
INSERT INTO django_admin_log VALUES(185,'107','Muhtelif Hizmet Alımı1',3,'',54,1,'2018-03-10 09:02:57.936331');
INSERT INTO django_admin_log VALUES(186,'89','Muhtelif Hizmet Alımı1',3,'',54,1,'2018-03-10 09:02:57.946536');
INSERT INTO django_admin_log VALUES(187,'54','Muhtelif Kimyasal Sıvı ve Gazlar(Helyum=25 adet)',3,'',54,1,'2018-03-10 09:02:57.956706');
INSERT INTO django_admin_log VALUES(188,'60','Muhtelif Kimyasal Sıvı ve Gazlar(Helyum=70 adet)',3,'',54,1,'2018-03-10 09:02:57.973577');
INSERT INTO django_admin_log VALUES(189,'102','Muhtelif İş Güvenliği Ekipmanları ve Güvenlik Uyarı Levhaları',3,'',54,1,'2018-03-10 09:02:57.991817');
INSERT INTO django_admin_log VALUES(190,'42','Nano Boyutlu FTIR Spektroskopi Sistemi',3,'',54,1,'2018-03-10 09:02:58.001725');
INSERT INTO django_admin_log VALUES(191,'97','Network Analizör ve Spektrum Analizör',3,'',54,1,'2018-03-10 09:02:58.018715');
INSERT INTO django_admin_log VALUES(192,'19','RF Sinyal Üreteci',3,'',54,1,'2018-03-10 09:02:58.036297');
INSERT INTO django_admin_log VALUES(193,'87','Radyasyon Donanımları',3,'',54,1,'2018-03-10 09:02:58.045084');
INSERT INTO django_admin_log VALUES(194,'82','Radyasyon Ölçüm Cihazları ve Ekipmanları',3,'',54,1,'2018-03-10 09:02:58.055275');
INSERT INTO django_admin_log VALUES(195,'3','Rf Dalga kılavuzu Tutturucu Destek Aparatı İmalatı Hizmeti, Faraday Kafesi imalatı hizmeti',3,'',54,1,'2018-03-10 09:02:58.066848');
INSERT INTO django_admin_log VALUES(196,'32','Rogar Kapağı Tadilat Hizmeti',3,'',54,1,'2018-03-10 09:02:58.084573');
INSERT INTO django_admin_log VALUES(197,'7','Seksiyonel Kapı İmalat ve Kurulum Hizmet',3,'',54,1,'2018-03-10 09:02:58.093437');
INSERT INTO django_admin_log VALUES(198,'80','Seminer Salonu Tadilatı ve Onarımı Hizmeti',3,'',54,1,'2018-03-10 09:02:58.117688');
INSERT INTO django_admin_log VALUES(199,'49','Seminer Salonu Tadilatı ve Onarımı Hizmeti',3,'',54,1,'2018-03-10 09:03:04.203803');
INSERT INTO django_admin_log VALUES(200,'65','Sirkülatör Tip 1,Sirkülatör Tip 2',3,'',54,1,'2018-03-10 09:03:04.215079');
INSERT INTO django_admin_log VALUES(201,'101','Solenoid Magnet Üretim Hizmeti',3,'',54,1,'2018-03-10 09:03:04.226428');
INSERT INTO django_admin_log VALUES(202,'118','Solvent Kabini',3,'',54,1,'2018-03-10 09:03:04.249755');
INSERT INTO django_admin_log VALUES(203,'120','Solvent Uçurma Amaçlı Vakum Pompası',3,'',54,1,'2018-03-10 09:03:04.274261');
INSERT INTO django_admin_log VALUES(204,'62','TARLA Tesisi Misafirhane Tadilat Hizmeti',3,'',54,1,'2018-03-10 09:03:04.300029');
INSERT INTO django_admin_log VALUES(205,'17','Tarla Tesisi Misafirhane ve Laboratuvar Mekanları Mutfak tadilat ve Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:03:04.326126');
INSERT INTO django_admin_log VALUES(206,'10','Temiz Oda Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:03:04.344307');
INSERT INTO django_admin_log VALUES(207,'98','Test Ölçüm ve Bağlantı Sistemleri',3,'',54,1,'2018-03-10 09:03:04.354446');
INSERT INTO django_admin_log VALUES(208,'52','Trafo Bakım Onarım İşleri',3,'',54,1,'2018-03-10 09:03:04.379215');
INSERT INTO django_admin_log VALUES(209,'94','UniGraphics NX',3,'',54,1,'2018-03-10 09:03:04.388753');
INSERT INTO django_admin_log VALUES(210,'117','Vakum Fırın',3,'',54,1,'2018-03-10 09:03:04.398053');
INSERT INTO django_admin_log VALUES(211,'11','Vakum Pompaları Bakım Onarım (İyon Pompası, Yağlı Pompa,Turbo Pompa, Leak Dedektörü)',3,'',54,1,'2018-03-10 09:03:04.421840');
INSERT INTO django_admin_log VALUES(212,'40','Vakum sensörü',3,'',54,1,'2018-03-10 09:03:04.446612');
INSERT INTO django_admin_log VALUES(213,'72','Yaka tipi oksijen dedektörü (3 adet) ve Duvar tipi oksijen dedektörü (5 adet)',3,'',54,1,'2018-03-10 09:03:04.463243');
INSERT INTO django_admin_log VALUES(214,'111','Yazılım Destek Hizmeti',3,'',54,1,'2018-03-10 09:03:04.473909');
INSERT INTO django_admin_log VALUES(215,'2','Yazılım Destek Hizmeti',3,'',54,1,'2018-03-10 09:03:04.482339');
INSERT INTO django_admin_log VALUES(216,'74','Yük Asansörleri İmalatı ve Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:03:04.501245');
INSERT INTO django_admin_log VALUES(217,'84','Yüksek Voltaj Dirençleri',3,'',54,1,'2018-03-10 09:03:04.518602');
INSERT INTO django_admin_log VALUES(218,'46','Çözünmüş Oksijen sensörü',3,'',54,1,'2018-03-10 09:03:04.528757');
INSERT INTO django_admin_log VALUES(219,'27','Özel Elektronik Devre Tasarım Destek Hizmeti',3,'',54,1,'2018-03-10 09:03:04.539558');
INSERT INTO django_admin_log VALUES(220,'85','Üyelik Aidatı',3,'',54,1,'2018-03-10 09:03:04.557029');
INSERT INTO django_admin_log VALUES(221,'13','İdari Bina Elektrik Tesisatı Bakım ve Kablolama ve Etiketlendirme Hizmeti',3,'',54,1,'2018-03-10 09:03:04.574285');
INSERT INTO django_admin_log VALUES(222,'47','İnternet Kenar Anahtar',3,'',54,1,'2018-03-10 09:03:04.603523');
INSERT INTO django_admin_log VALUES(223,'3','csv/sartname2017.csv',1,'[{\'added\': {}}]',67,1,'2018-03-10 09:03:38.020071');
INSERT INTO django_admin_log VALUES(224,'167','',3,'',54,1,'2018-03-10 09:04:34.109718');
INSERT INTO django_admin_log VALUES(225,'151','10 Kalem Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.119624');
INSERT INTO django_admin_log VALUES(226,'178','10 Kalem Malzeme Alımı (Step Motor Tip 1 ve Tip2)',3,'',54,1,'2018-03-10 09:04:34.137346');
INSERT INTO django_admin_log VALUES(227,'242','10 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.153184');
INSERT INTO django_admin_log VALUES(228,'233','1000 lt Tekerlekli Sıvı Helyum Taşıma Saklama Tankı',3,'',54,1,'2018-03-10 09:04:34.164391');
INSERT INTO django_admin_log VALUES(229,'158','11 Kalem Sarf Malzeme Alımı (Temiz Oda Sarfları)',3,'',54,1,'2018-03-10 09:04:34.175437');
INSERT INTO django_admin_log VALUES(230,'191','118 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.185656');
INSERT INTO django_admin_log VALUES(231,'154','14 Kalem Yazılım Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.197861');
INSERT INTO django_admin_log VALUES(232,'231','16 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.209484');
INSERT INTO django_admin_log VALUES(233,'166','170 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.219819');
INSERT INTO django_admin_log VALUES(234,'239','19 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.231474');
INSERT INTO django_admin_log VALUES(235,'180','2 Kalem Kontrol Donanım Alımı (Endüstriyel Sunucu ve Endüstriyel Medya Çevirici)',3,'',54,1,'2018-03-10 09:04:34.247538');
INSERT INTO django_admin_log VALUES(236,'176','2 adet dijital veri toplama kartı',3,'',54,1,'2018-03-10 09:04:34.281238');
INSERT INTO django_admin_log VALUES(237,'206','20 Kalem Sarf Malzeme',3,'',54,1,'2018-03-10 09:04:34.297900');
INSERT INTO django_admin_log VALUES(238,'173','23 Kalem Sarf Malzeme Elektrik Alımı',3,'',54,1,'2018-03-10 09:04:34.307272');
INSERT INTO django_admin_log VALUES(239,'147','250 keV Normal İletken Hızlandırıcı Yüksek Gerilim Hattının Elektrik Altyapısı',3,'',54,1,'2018-03-10 09:04:34.318601');
INSERT INTO django_admin_log VALUES(240,'135','26 kalem malzeme',3,'',54,1,'2018-03-10 09:04:34.347925');
INSERT INTO django_admin_log VALUES(241,'139','28 kalem sarf  malzeme alımı',3,'',54,1,'2018-03-10 09:04:34.372206');
INSERT INTO django_admin_log VALUES(242,'189','3 Kalem Hizmet Alımı',3,'',54,1,'2018-03-10 09:04:34.383330');
INSERT INTO django_admin_log VALUES(243,'161','3 Kalem Optik Masa',3,'',54,1,'2018-03-10 09:04:34.394252');
INSERT INTO django_admin_log VALUES(244,'145','3 Kalem İmalat Hizmeti',3,'',54,1,'2018-03-10 09:04:34.411300');
INSERT INTO django_admin_log VALUES(245,'132','3 kalem donanım alımı (Projeksiyon cihazı Tip1,Zayıf İstemci bilg.ve Projeksiyon cihazı Tip2)',3,'',54,1,'2018-03-10 09:04:34.428067');
INSERT INTO django_admin_log VALUES(246,'181','30 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.443479');
INSERT INTO django_admin_log VALUES(247,'153','30 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.460714');
INSERT INTO django_admin_log VALUES(248,'157','32 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.476855');
INSERT INTO django_admin_log VALUES(249,'248','33 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.492865');
INSERT INTO django_admin_log VALUES(250,'201','33 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.508891');
INSERT INTO django_admin_log VALUES(251,'218','36 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.517991');
INSERT INTO django_admin_log VALUES(252,'186','4 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.543682');
INSERT INTO django_admin_log VALUES(253,'143','4 kalem Optik Donanım Listesi',3,'',54,1,'2018-03-10 09:04:34.578779');
INSERT INTO django_admin_log VALUES(254,'127','41 kalem malzeme',3,'',54,1,'2018-03-10 09:04:34.603044');
INSERT INTO django_admin_log VALUES(255,'187','53 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.621050');
INSERT INTO django_admin_log VALUES(256,'222','7 Kalem Donanım Alımı',3,'',54,1,'2018-03-10 09:04:34.633763');
INSERT INTO django_admin_log VALUES(257,'232','7 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.644165');
INSERT INTO django_admin_log VALUES(258,'213','7 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.652683');
INSERT INTO django_admin_log VALUES(259,'235','74 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.661160');
INSERT INTO django_admin_log VALUES(260,'219','8 Kalem Donanım Alımı',3,'',54,1,'2018-03-10 09:04:34.669575');
INSERT INTO django_admin_log VALUES(261,'238','8 Kalem Sarf Malzeme Alımı',3,'',54,1,'2018-03-10 09:04:34.687790');
INSERT INTO django_admin_log VALUES(262,'228','ANSYS',3,'',54,1,'2018-03-10 09:04:34.696314');
INSERT INTO django_admin_log VALUES(263,'246','Araç Kiralama Hizmeti',3,'',54,1,'2018-03-10 09:04:34.705539');
INSERT INTO django_admin_log VALUES(264,'190','Ayarlanabilir Yüksek Gerilim Güç Kaynağı Tip 1',3,'',54,1,'2018-03-10 09:04:34.716753');
INSERT INTO django_admin_log VALUES(265,'245','Azot Tankı Tip1',3,'',54,1,'2018-03-10 09:04:34.733592');
INSERT INTO django_admin_log VALUES(266,'144','Azot Transfer Hattı İmalat Hizmeti',3,'',54,1,'2018-03-10 09:04:34.749651');
INSERT INTO django_admin_log VALUES(267,'160','Baca Gazı İyonize Hava Monitor Sistemi Tasarım Hizmeti',3,'',54,1,'2018-03-10 09:04:34.766888');
INSERT INTO django_admin_log VALUES(268,'128','Barkod Yazıcısı alımı',3,'',54,1,'2018-03-10 09:04:34.784008');
INSERT INTO django_admin_log VALUES(269,'129','Baskı Devre Makinası',3,'',54,1,'2018-03-10 09:04:34.800799');
INSERT INTO django_admin_log VALUES(270,'216','CNC torna tezgahı',3,'',54,1,'2018-03-10 09:04:34.815703');
INSERT INTO django_admin_log VALUES(271,'138','Demet Görüntüleme Sistemi Tutucusu İmalatı Hizmeti',3,'',54,1,'2018-03-10 09:04:34.832195');
INSERT INTO django_admin_log VALUES(272,'199','Demet Hattı Elemanları İmalatı Hizmeti',3,'',54,1,'2018-03-10 09:04:34.842666');
INSERT INTO django_admin_log VALUES(273,'196','Demet Taşınım Hattı Sehpası İmalat Hizmeti',3,'',54,1,'2018-03-10 09:04:34.851555');
INSERT INTO django_admin_log VALUES(274,'200','Diagnostik Donanımları İmalatı Hizmeti',3,'',54,1,'2018-03-10 09:04:34.868714');
INSERT INTO django_admin_log VALUES(275,'223','Dipole Magnet Üretim Hizmeti',3,'',54,1,'2018-03-10 09:04:34.891109');
INSERT INTO django_admin_log VALUES(276,'156','Dizel  Jeneratörler için Dizel Yakıt Alımı',3,'',54,1,'2018-03-10 09:04:34.907623');
INSERT INTO django_admin_log VALUES(277,'192','Dizel Jeneratörler İçin Dizel Yakıt Alımı',3,'',54,1,'2018-03-10 09:04:34.926882');
INSERT INTO django_admin_log VALUES(278,'244','Dozimetre Okuyucuları(Dozimetre Okuyucu Tip1, Dozimetre Okuyucu Tip2',3,'',54,1,'2018-03-10 09:04:34.937635');
INSERT INTO django_admin_log VALUES(279,'237','Dozimetre doğrulama ve kalibrasyon hizmeti',3,'',54,1,'2018-03-10 09:04:34.955130');
INSERT INTO django_admin_log VALUES(280,'211','Elektrik Altyapı Otomasyon Bakım Hizmeti',3,'',54,1,'2018-03-10 09:04:34.970159');
INSERT INTO django_admin_log VALUES(281,'168','Elemental Analiz Spektrometresi',3,'',54,1,'2018-03-10 09:04:34.986984');
INSERT INTO django_admin_log VALUES(282,'226','Enjektör Spektrometre İmalat Hizmeti',3,'',54,1,'2018-03-10 09:04:35.004222');
INSERT INTO django_admin_log VALUES(283,'159','Etiket Makinası',3,'',54,1,'2018-03-10 09:04:35.028906');
INSERT INTO django_admin_log VALUES(284,'174','Femto Saniye Lazer Yükselteç Sistemi',3,'',54,1,'2018-03-10 09:04:35.044183');
INSERT INTO django_admin_log VALUES(285,'229','Fiber Optik Fusion Cihazı',3,'',54,1,'2018-03-10 09:04:35.053010');
INSERT INTO django_admin_log VALUES(286,'162','Frekans Kontrollü AC Motor Sürücü Alımı',3,'',54,1,'2018-03-10 09:04:35.069973');
INSERT INTO django_admin_log VALUES(287,'184','Güvenlik Giriş Kapısı ve Çevre Düzenlemesi Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:04:35.092262');
INSERT INTO django_admin_log VALUES(288,'182','Güçmetre',3,'',54,1,'2018-03-10 09:04:35.115012');
INSERT INTO django_admin_log VALUES(289,'146','Güçmetre',3,'',54,1,'2018-03-10 09:04:35.132256');
INSERT INTO django_admin_log VALUES(290,'141','Havalandırma Sistemi ve Kazan Brulör Bakım ve Tadilatı Hizmeti',3,'',54,1,'2018-03-10 09:04:35.157630');
INSERT INTO django_admin_log VALUES(291,'202','Helyum Odası Sıcak Hava Tahliye Sistemi Kurulumu Hizmeti',3,'',54,1,'2018-03-10 09:04:35.181788');
INSERT INTO django_admin_log VALUES(292,'131','Hızlandırıcı Kontrol Sistemi Danışmanlık Hizmeti (cosylab)',3,'',54,1,'2018-03-10 09:04:35.193035');
INSERT INTO django_admin_log VALUES(293,'236','KGS Kontrol Panoları',3,'',54,1,'2018-03-10 09:04:35.202054');
INSERT INTO django_admin_log VALUES(294,'214','Kesintisiz Güç Kaynağı Sistemi',3,'',54,1,'2018-03-10 09:04:35.219752');
INSERT INTO django_admin_log VALUES(295,'149','Kişisel Doz Takip Sistemi Yazılım Hizmeti',3,'',54,1,'2018-03-10 09:04:35.234577');
INSERT INTO django_admin_log VALUES(296,'179','Kompanzasyon Bakım Onarım İşleri',3,'',54,1,'2018-03-10 09:04:35.245016');
INSERT INTO django_admin_log VALUES(297,'247','Konferans Salonu Sandalyesi',3,'',54,1,'2018-03-10 09:04:35.255951');
INSERT INTO django_admin_log VALUES(298,'204','Kontrol Sistemi Donanımları (Ağ Anahtarları, Server, Endüstriyel PC, İş İstasyonları, Bilgisayarlar, ADC vb)',3,'',54,1,'2018-03-10 09:04:35.268661');
INSERT INTO django_admin_log VALUES(299,'171','Kontrol odası tasarım üretim ve kurulum hizmeti',3,'',54,1,'2018-03-10 09:04:35.292290');
INSERT INTO django_admin_log VALUES(300,'215','Kütle Spektrometresi',3,'',54,1,'2018-03-10 09:04:35.307694');
INSERT INTO django_admin_log VALUES(301,'137','LLRF Tasarım Hizmeti',3,'',54,1,'2018-03-10 09:04:35.323751');
INSERT INTO django_admin_log VALUES(302,'193','Leak Dedektörü Bakım Onarım ve Kalibrasyonu',3,'',54,1,'2018-03-10 09:04:35.333901');
INSERT INTO django_admin_log VALUES(303,'164','Master Osilatör',3,'',54,1,'2018-03-10 09:04:35.344268');
INSERT INTO django_admin_log VALUES(304,'148','Mekanik Tasarım Destek Hizmeti',3,'',54,1,'2018-03-10 09:04:35.352526');
INSERT INTO django_admin_log VALUES(305,'198','Mekanik İmalat ve Montaj Destek Hizmeti',3,'',54,1,'2018-03-10 09:04:35.369280');
INSERT INTO django_admin_log VALUES(306,'227','Mekanik İmalat İşleri- Korkuluk',3,'',54,1,'2018-03-10 09:04:35.379651');
INSERT INTO django_admin_log VALUES(307,'152','Monitör Askı Aparatı',3,'',54,1,'2018-03-10 09:04:35.391002');
INSERT INTO django_admin_log VALUES(308,'209','Muhtelif Hizmet Alımı 1',3,'',54,1,'2018-03-10 09:04:35.401289');
INSERT INTO django_admin_log VALUES(309,'194','Muhtelif Hizmet Alımı 1',3,'',54,1,'2018-03-10 09:04:35.418694');
INSERT INTO django_admin_log VALUES(310,'230','Muhtelif Hizmet Alımı1',3,'',54,1,'2018-03-10 09:04:35.449230');
INSERT INTO django_admin_log VALUES(311,'212','Muhtelif Hizmet Alımı1',3,'',54,1,'2018-03-10 09:04:35.467283');
INSERT INTO django_admin_log VALUES(312,'177','Muhtelif Kimyasal Sıvı ve Gazlar(Helyum=25 adet)',3,'',54,1,'2018-03-10 09:04:35.477889');
INSERT INTO django_admin_log VALUES(313,'183','Muhtelif Kimyasal Sıvı ve Gazlar(Helyum=70 adet)',3,'',54,1,'2018-03-10 09:04:35.494658');
INSERT INTO django_admin_log VALUES(314,'225','Muhtelif İş Güvenliği Ekipmanları ve Güvenlik Uyarı Levhaları',3,'',54,1,'2018-03-10 09:04:35.505357');
INSERT INTO django_admin_log VALUES(315,'165','Nano Boyutlu FTIR Spektroskopi Sistemi',3,'',54,1,'2018-03-10 09:04:35.536230');
INSERT INTO django_admin_log VALUES(316,'220','Network Analizör ve Spektrum Analizör',3,'',54,1,'2018-03-10 09:04:35.544680');
INSERT INTO django_admin_log VALUES(317,'142','RF Sinyal Üreteci',3,'',54,1,'2018-03-10 09:04:35.559667');
INSERT INTO django_admin_log VALUES(318,'210','Radyasyon Donanımları',3,'',54,1,'2018-03-10 09:04:35.574951');
INSERT INTO django_admin_log VALUES(319,'205','Radyasyon Ölçüm Cihazları ve Ekipmanları',3,'',54,1,'2018-03-10 09:04:35.585884');
INSERT INTO django_admin_log VALUES(320,'126','Rf Dalga kılavuzu Tutturucu Destek Aparatı İmalatı Hizmeti, Faraday Kafesi imalatı hizmeti',3,'',54,1,'2018-03-10 09:04:35.596258');
INSERT INTO django_admin_log VALUES(321,'155','Rogar Kapağı Tadilat Hizmeti',3,'',54,1,'2018-03-10 09:04:35.617365');
INSERT INTO django_admin_log VALUES(322,'130','Seksiyonel Kapı İmalat ve Kurulum Hizmet',3,'',54,1,'2018-03-10 09:04:35.640927');
INSERT INTO django_admin_log VALUES(323,'203','Seminer Salonu Tadilatı ve Onarımı Hizmeti',3,'',54,1,'2018-03-10 09:04:35.650008');
INSERT INTO django_admin_log VALUES(324,'172','Seminer Salonu Tadilatı ve Onarımı Hizmeti',3,'',54,1,'2018-03-10 09:04:41.844849');
INSERT INTO django_admin_log VALUES(325,'188','Sirkülatör Tip 1,Sirkülatör Tip 2',3,'',54,1,'2018-03-10 09:04:41.861591');
INSERT INTO django_admin_log VALUES(326,'224','Solenoid Magnet Üretim Hizmeti',3,'',54,1,'2018-03-10 09:04:41.870499');
INSERT INTO django_admin_log VALUES(327,'241','Solvent Kabini',3,'',54,1,'2018-03-10 09:04:41.881090');
INSERT INTO django_admin_log VALUES(328,'243','Solvent Uçurma Amaçlı Vakum Pompası',3,'',54,1,'2018-03-10 09:04:41.889728');
INSERT INTO django_admin_log VALUES(329,'185','TARLA Tesisi Misafirhane Tadilat Hizmeti',3,'',54,1,'2018-03-10 09:04:41.912645');
INSERT INTO django_admin_log VALUES(330,'140','Tarla Tesisi Misafirhane ve Laboratuvar Mekanları Mutfak tadilat ve Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:04:41.921102');
INSERT INTO django_admin_log VALUES(331,'133','Temiz Oda Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:04:41.936552');
INSERT INTO django_admin_log VALUES(332,'221','Test Ölçüm ve Bağlantı Sistemleri',3,'',54,1,'2018-03-10 09:04:41.953247');
INSERT INTO django_admin_log VALUES(333,'175','Trafo Bakım Onarım İşleri',3,'',54,1,'2018-03-10 09:04:41.970123');
INSERT INTO django_admin_log VALUES(334,'217','UniGraphics NX',3,'',54,1,'2018-03-10 09:04:41.988368');
INSERT INTO django_admin_log VALUES(335,'240','Vakum Fırın',3,'',54,1,'2018-03-10 09:04:42.012018');
INSERT INTO django_admin_log VALUES(336,'134','Vakum Pompaları Bakım Onarım (İyon Pompası, Yağlı Pompa,Turbo Pompa, Leak Dedektörü)',3,'',54,1,'2018-03-10 09:04:42.020165');
INSERT INTO django_admin_log VALUES(337,'163','Vakum sensörü',3,'',54,1,'2018-03-10 09:04:42.028659');
INSERT INTO django_admin_log VALUES(338,'195','Yaka tipi oksijen dedektörü (3 adet) ve Duvar tipi oksijen dedektörü (5 adet)',3,'',54,1,'2018-03-10 09:04:42.045573');
INSERT INTO django_admin_log VALUES(339,'234','Yazılım Destek Hizmeti',3,'',54,1,'2018-03-10 09:04:42.064707');
INSERT INTO django_admin_log VALUES(340,'197','Yük Asansörleri İmalatı ve Kurulum Hizmeti',3,'',54,1,'2018-03-10 09:04:42.081153');
INSERT INTO django_admin_log VALUES(341,'207','Yüksek Voltaj Dirençleri',3,'',54,1,'2018-03-10 09:04:42.089901');
INSERT INTO django_admin_log VALUES(342,'169','Çözünmüş Oksijen sensörü',3,'',54,1,'2018-03-10 09:04:42.101447');
INSERT INTO django_admin_log VALUES(343,'150','Özel Elektronik Devre Tasarım Destek Hizmeti',3,'',54,1,'2018-03-10 09:04:42.126482');
INSERT INTO django_admin_log VALUES(344,'208','Üyelik Aidatı',3,'',54,1,'2018-03-10 09:04:42.136875');
INSERT INTO django_admin_log VALUES(345,'136','İdari Bina Elektrik Tesisatı Bakım ve Kablolama ve Etiketlendirme Hizmeti',3,'',54,1,'2018-03-10 09:04:42.151865');
INSERT INTO django_admin_log VALUES(346,'170','İnternet Kenar Anahtar',3,'',54,1,'2018-03-10 09:04:42.183027');
INSERT INTO django_admin_log VALUES(347,'5','',3,'',58,1,'2018-03-10 09:05:04.636645');
INSERT INTO django_admin_log VALUES(348,'4','1',3,'',58,1,'2018-03-10 09:05:04.647398');
INSERT INTO django_admin_log VALUES(349,'7','1٫00 €',3,'',58,1,'2018-03-10 09:05:04.657500');
INSERT INTO django_admin_log VALUES(350,'6','3',3,'',58,1,'2018-03-10 09:05:04.669107');
INSERT INTO django_admin_log VALUES(351,'11','',3,'',60,1,'2018-03-10 09:05:19.405046');
INSERT INTO django_admin_log VALUES(352,'6','1',3,'',60,1,'2018-03-10 09:05:19.435806');
INSERT INTO django_admin_log VALUES(353,'8','2',3,'',60,1,'2018-03-10 09:05:19.451222');
INSERT INTO django_admin_log VALUES(354,'7','3',3,'',60,1,'2018-03-10 09:05:19.466504');
INSERT INTO django_admin_log VALUES(355,'9','4',3,'',60,1,'2018-03-10 09:05:19.479093');
INSERT INTO django_admin_log VALUES(356,'10','5',3,'',60,1,'2018-03-10 09:05:19.490300');
INSERT INTO django_admin_log VALUES(357,'73','',3,'',55,1,'2018-03-10 09:05:39.142561');
INSERT INTO django_admin_log VALUES(358,'5','3A Kapı Sistemleri
Ürn.İnş.Elk.San.ve Tic.Ltd.Şti.',3,'',55,1,'2018-03-10 09:05:39.156308');
INSERT INTO django_admin_log VALUES(359,'31','A.Ü. BAP LAURIN AG',3,'',55,1,'2018-03-10 09:05:39.165221');
INSERT INTO django_admin_log VALUES(360,'23','ADESİS',3,'',55,1,'2018-03-10 09:05:39.176837');
INSERT INTO django_admin_log VALUES(361,'60','AKTUG (Mustafa Bey: 0532 176 58 79)',3,'',55,1,'2018-03-10 09:05:39.205088');
INSERT INTO django_admin_log VALUES(362,'34','AMPTEK INC.',3,'',55,1,'2018-03-10 09:05:39.227410');
INSERT INTO django_admin_log VALUES(363,'9','ARES',3,'',55,1,'2018-03-10 09:05:39.240049');
INSERT INTO django_admin_log VALUES(364,'52','ATAG MAKİNE',3,'',55,1,'2018-03-10 09:05:39.249041');
INSERT INTO django_admin_log VALUES(365,'42','Airliquide',3,'',55,1,'2018-03-10 09:05:39.260259');
INSERT INTO django_admin_log VALUES(366,'76','Ares',3,'',55,1,'2018-03-10 09:05:39.277948');
INSERT INTO django_admin_log VALUES(367,'82','Barış Isıtma',3,'',55,1,'2018-03-10 09:05:39.289762');
INSERT INTO django_admin_log VALUES(368,'16','Barış Isıtma-Soğutma',3,'',55,1,'2018-03-10 09:05:39.305167');
INSERT INTO django_admin_log VALUES(369,'56','Boğaziçi Yazılım',3,'',55,1,'2018-03-10 09:05:39.321101');
INSERT INTO django_admin_log VALUES(370,'36','BİLGİBİM BİLGİSAYAR',3,'',55,1,'2018-03-10 09:05:39.331585');
INSERT INTO django_admin_log VALUES(371,'81','BİLGİBİM BİLGİSAYAR ',3,'',55,1,'2018-03-10 09:05:39.348738');
INSERT INTO django_admin_log VALUES(372,'6','Cosylab Control System Laboratory',3,'',55,1,'2018-03-10 09:05:39.364509');
INSERT INTO django_admin_log VALUES(373,'67','Creworker -Bilal Tonga',3,'',55,1,'2018-03-10 09:05:39.375133');
INSERT INTO django_admin_log VALUES(374,'69','Croyocan',3,'',55,1,'2018-03-10 09:05:39.396941');
INSERT INTO django_admin_log VALUES(375,'66','Cryotherm',3,'',55,1,'2018-03-10 09:05:39.418723');
INSERT INTO django_admin_log VALUES(376,'12','Desy',3,'',55,1,'2018-03-10 09:05:39.433638');
INSERT INTO django_admin_log VALUES(377,'45','EMK',3,'',55,1,'2018-03-10 09:05:39.442713');
INSERT INTO django_admin_log VALUES(378,'44','ERBAYGES',3,'',55,1,'2018-03-10 09:05:39.455479');
INSERT INTO django_admin_log VALUES(379,'68','Elysium',3,'',55,1,'2018-03-10 09:05:39.478182');
INSERT INTO django_admin_log VALUES(380,'1','Enomak',3,'',55,1,'2018-03-10 09:05:39.488483');
INSERT INTO django_admin_log VALUES(381,'72','Enomak ',3,'',55,1,'2018-03-10 09:05:39.498781');
INSERT INTO django_admin_log VALUES(382,'15','Ertsan  Endüstriyel (fayans+batarya yapılacak)',3,'',55,1,'2018-03-10 09:05:39.522574');
INSERT INTO django_admin_log VALUES(383,'48','Ferrite Microwave Technologies',3,'',55,1,'2018-03-10 09:05:39.539073');
INSERT INTO django_admin_log VALUES(384,'84','Ferrite Microwave Technologies
',3,'',55,1,'2018-03-10 09:05:39.549326');
INSERT INTO django_admin_log VALUES(385,'62','FİGES',3,'',55,1,'2018-03-10 09:05:39.558445');
INSERT INTO django_admin_log VALUES(386,'3','Giz Teknoloji',3,'',55,1,'2018-03-10 09:05:39.569521');
INSERT INTO django_admin_log VALUES(387,'46','Gönülsan',3,'',55,1,'2018-03-10 09:05:39.578806');
INSERT INTO django_admin_log VALUES(388,'59','HAKTAN Grup',3,'',55,1,'2018-03-10 09:05:39.598727');
INSERT INTO django_admin_log VALUES(389,'50','HVP',3,'',55,1,'2018-03-10 09:05:39.610991');
INSERT INTO django_admin_log VALUES(390,'55','Hiden Analytical',3,'',55,1,'2018-03-10 09:05:39.622608');
INSERT INTO django_admin_log VALUES(391,'11','Info Power',3,'',55,1,'2018-03-10 09:05:39.639213');
INSERT INTO django_admin_log VALUES(392,'49','Iradets',3,'',55,1,'2018-03-10 09:05:39.649186');
INSERT INTO django_admin_log VALUES(393,'19','Kenar Mühendislik',3,'',55,1,'2018-03-10 09:05:39.657550');
INSERT INTO django_admin_log VALUES(394,'8','Koçoğlu',3,'',55,1,'2018-03-10 09:05:39.669100');
INSERT INTO django_admin_log VALUES(395,'14','LFC',3,'',55,1,'2018-03-10 09:05:39.687358');
INSERT INTO django_admin_log VALUES(396,'37','Linda Grup',3,'',55,1,'2018-03-10 09:05:39.718171');
INSERT INTO django_admin_log VALUES(397,'61','LİNDA',3,'',55,1,'2018-03-10 09:05:39.730193');
INSERT INTO django_admin_log VALUES(398,'47','MEGA',3,'',55,1,'2018-03-10 09:05:39.740949');
INSERT INTO django_admin_log VALUES(399,'63','MET Isıtma',3,'',55,1,'2018-03-10 09:05:39.784160');
INSERT INTO django_admin_log VALUES(400,'29','Metsim',3,'',55,1,'2018-03-10 09:05:39.795636');
INSERT INTO django_admin_log VALUES(401,'35','Mettler Toledo',3,'',55,1,'2018-03-10 09:05:39.812213');
INSERT INTO django_admin_log VALUES(402,'32','NEASPEC GmbH',3,'',55,1,'2018-03-10 09:05:39.827835');
INSERT INTO django_admin_log VALUES(403,'58','Nanomanyetik Cihazlar',3,'',55,1,'2018-03-10 09:05:39.851157');
INSERT INTO django_admin_log VALUES(404,'85','OLCA',3,'',55,1,'2018-03-10 09:05:39.860635');
INSERT INTO django_admin_log VALUES(405,'39','OLCA Enerji',3,'',55,1,'2018-03-10 09:05:39.871579');
INSERT INTO django_admin_log VALUES(406,'83','OLCA Enerji ',3,'',55,1,'2018-03-10 09:05:39.881857');
INSERT INTO django_admin_log VALUES(407,'18','OPTOMEK',3,'',55,1,'2018-03-10 09:05:39.893770');
INSERT INTO django_admin_log VALUES(408,'43','OTKON Mühendislik',3,'',55,1,'2018-03-10 09:05:39.903943');
INSERT INTO django_admin_log VALUES(409,'41','OZAY Grup',3,'',55,1,'2018-03-10 09:05:39.912447');
INSERT INTO django_admin_log VALUES(410,'78','Olca',3,'',55,1,'2018-03-10 09:05:39.934170');
INSERT INTO django_admin_log VALUES(411,'53','RATEST',3,'',55,1,'2018-03-10 09:05:39.944211');
INSERT INTO django_admin_log VALUES(412,'20','Rohde & Schwarz Elektronik ve Telekomünikasyon Sistemleri',3,'',55,1,'2018-03-10 09:05:39.960369');
INSERT INTO django_admin_log VALUES(413,'75','Rohde & Schwarz Elektronik ve Telekomünikasyon Sistemleri ',3,'',55,1,'2018-03-10 09:05:39.975780');
INSERT INTO django_admin_log VALUES(414,'57','Rohde&Schwarz',3,'',55,1,'2018-03-10 09:05:40.000574');
INSERT INTO django_admin_log VALUES(415,'28','SAAS Gmbh',3,'',55,1,'2018-03-10 09:05:40.010102');
INSERT INTO django_admin_log VALUES(416,'17','SPARK',3,'',55,1,'2018-03-10 09:05:40.033727');
INSERT INTO django_admin_log VALUES(417,'30','Sem Bio',3,'',55,1,'2018-03-10 09:05:40.044867');
INSERT INTO django_admin_log VALUES(418,'40','Spektra',3,'',55,1,'2018-03-10 09:05:40.060926');
INSERT INTO django_admin_log VALUES(419,'65','SİSTEK',3,'',55,1,'2018-03-10 09:05:40.078179');
INSERT INTO django_admin_log VALUES(420,'10','TCS Makina-Hırdavat',3,'',55,1,'2018-03-10 09:05:40.100261');
INSERT INTO django_admin_log VALUES(421,'54','Tehnocenter',3,'',55,1,'2018-03-10 09:05:40.115429');
INSERT INTO django_admin_log VALUES(422,'7','TeknoPark',3,'',55,1,'2018-03-10 09:05:40.130944');
INSERT INTO django_admin_log VALUES(423,'27','Vorterks',3,'',55,1,'2018-03-10 09:05:40.147605');
INSERT INTO django_admin_log VALUES(424,'71','Yıldırım',3,'',55,1,'2018-03-10 09:05:40.178316');
INSERT INTO django_admin_log VALUES(425,'33','ZENOTEK',3,'',55,1,'2018-03-10 09:05:40.199670');
INSERT INTO django_admin_log VALUES(426,'74','Zenotek',3,'',55,1,'2018-03-10 09:05:40.216324');
INSERT INTO django_admin_log VALUES(427,'79','Özdemir',3,'',55,1,'2018-03-10 09:05:40.226627');
INSERT INTO django_admin_log VALUES(428,'51','Özdemir Petrol',3,'',55,1,'2018-03-10 09:05:40.244758');
INSERT INTO django_admin_log VALUES(429,'70','Özerbey',3,'',55,1,'2018-03-10 09:05:40.261429');
INSERT INTO django_admin_log VALUES(430,'26','Öztürk Medikal  Oguz Öztürk 0312 230 01 75',3,'',55,1,'2018-03-10 09:05:40.283832');
INSERT INTO django_admin_log VALUES(431,'80','Öztürk Medikal  Oguz Öztürk 0312 230 01 75 ',3,'',55,1,'2018-03-10 09:05:40.300277');
INSERT INTO django_admin_log VALUES(432,'77','Üçtuğ',3,'',55,1,'2018-03-10 09:05:40.310484');
INSERT INTO django_admin_log VALUES(433,'2','Üçtuğ Müh. Turz.',3,'',55,1,'2018-03-10 09:05:40.318877');
INSERT INTO django_admin_log VALUES(434,'4','Bakım Onarım',3,'',60,1,'2018-03-10 09:20:52.180139');
INSERT INTO django_admin_log VALUES(435,'2','Donanım',3,'',60,1,'2018-03-10 09:20:52.196890');
INSERT INTO django_admin_log VALUES(436,'1','Hizmet',3,'',60,1,'2018-03-10 09:20:52.208739');
INSERT INTO django_admin_log VALUES(437,'3','Sarf',3,'',60,1,'2018-03-10 09:20:52.217075');
INSERT INTO django_admin_log VALUES(438,'5','Yazılım',3,'',60,1,'2018-03-10 09:20:52.242082');
INSERT INTO django_admin_log VALUES(439,'2','Dolar',3,'',58,1,'2018-03-10 09:20:59.150104');
INSERT INTO django_admin_log VALUES(440,'3','Euro',3,'',58,1,'2018-03-10 09:20:59.167321');
INSERT INTO django_admin_log VALUES(441,'1','Türk Lirası',3,'',58,1,'2018-03-10 09:20:59.177823');
INSERT INTO django_admin_log VALUES(442,'3','Faturası ödendi',3,'',57,1,'2018-03-10 09:21:10.503968');
INSERT INTO django_admin_log VALUES(443,'4','Onayı alındı-İhalesi Yapılacak',3,'',57,1,'2018-03-10 09:21:10.528393');
INSERT INTO django_admin_log VALUES(444,'5','Strateji Onayı',3,'',57,1,'2018-03-10 09:21:10.543420');
INSERT INTO django_admin_log VALUES(445,'6','Ödeme Emri',3,'',57,1,'2018-03-10 09:21:10.560591');
INSERT INTO django_admin_log VALUES(446,'2','İhale iptali istendi',3,'',57,1,'2018-03-10 09:21:10.576795');
INSERT INTO django_admin_log VALUES(447,'1','İhalesi Yapıldı',3,'',57,1,'2018-03-10 09:21:10.606789');
INSERT INTO django_admin_log VALUES(448,'249','sadsad',3,'',54,1,'2018-03-10 09:21:18.291835');
INSERT INTO django_admin_log VALUES(449,'4','csv/sartname2017_B7yUYtz.csv',1,'[{\'added\': {}}]',67,1,'2018-03-10 09:21:58.021512');
INSERT INTO django_admin_log VALUES(450,'9','',3,'',58,1,'2018-03-10 09:25:35.981563');
INSERT INTO django_admin_log VALUES(451,'18','',3,'',57,1,'2018-03-10 09:30:55.185821');
INSERT INTO django_admin_log VALUES(452,'17','',3,'',60,1,'2018-03-10 09:31:09.368529');
INSERT INTO django_admin_log VALUES(453,'12','Hizmet',2,'[{\'changed\': {\'fields\': [\'code\']}}]',60,1,'2018-03-10 09:34:08.370652');
INSERT INTO django_admin_log VALUES(454,'14','Donanım',2,'[{\'changed\': {\'fields\': [\'code\']}}]',60,1,'2018-03-10 09:34:21.095668');
INSERT INTO django_admin_log VALUES(455,'15','Bakım Onarım',2,'[{\'changed\': {\'fields\': [\'code\']}}]',60,1,'2018-03-10 09:34:34.371531');
INSERT INTO django_admin_log VALUES(456,'13','Sarf',2,'[{\'changed\': {\'fields\': [\'code\']}}]',60,1,'2018-03-10 09:34:40.851120');
INSERT INTO django_admin_log VALUES(457,'16','Yazılım',2,'[{\'changed\': {\'fields\': [\'code\']}}]',60,1,'2018-03-10 09:34:46.659551');
INSERT INTO django_admin_log VALUES(458,'65','Updated Ahmet Başaran',3,'',53,1,'2018-03-13 07:33:54.250174');
INSERT INTO django_admin_log VALUES(459,'66','Updated Ahmet Basaran',3,'',53,1,'2018-03-13 07:34:33.062120');
INSERT INTO django_admin_log VALUES(460,'64','Updated System Administrator',3,'',53,1,'2018-03-13 07:34:33.149558');
INSERT INTO django_admin_log VALUES(461,'63','Created  ',3,'',53,1,'2018-03-13 07:34:33.218894');
INSERT INTO django_admin_log VALUES(462,'62','Updated Bilal Tonga',3,'',53,1,'2018-03-13 07:34:33.293189');
INSERT INTO django_admin_log VALUES(463,'61','Created  ',3,'',53,1,'2018-03-13 07:34:33.365931');
INSERT INTO django_admin_log VALUES(464,'60','Updated Ömer Faruk Elçim',3,'',53,1,'2018-03-13 07:34:33.440705');
INSERT INTO django_admin_log VALUES(465,'59','Created  ',3,'',53,1,'2018-03-13 07:34:33.517820');
INSERT INTO django_admin_log VALUES(466,'58','Updated Ayhan Aydın',3,'',53,1,'2018-03-13 07:34:33.585244');
INSERT INTO django_admin_log VALUES(467,'57','Created  ',3,'',53,1,'2018-03-13 07:34:33.660346');
INSERT INTO django_admin_log VALUES(468,'56','Updated Burak Koç',3,'',53,1,'2018-03-13 07:34:33.734654');
INSERT INTO django_admin_log VALUES(469,'55','Created  ',3,'',53,1,'2018-03-13 07:34:33.810282');
INSERT INTO django_admin_log VALUES(470,'54','Updated Mehmet Bozdoğan',3,'',53,1,'2018-03-13 07:34:33.893880');
INSERT INTO django_admin_log VALUES(471,'53','Created  ',3,'',53,1,'2018-03-13 07:34:33.972013');
INSERT INTO django_admin_log VALUES(472,'52','Updated Özlem Karslı',3,'',53,1,'2018-03-13 07:34:34.051959');
INSERT INTO django_admin_log VALUES(473,'51','Created  ',3,'',53,1,'2018-03-13 07:34:34.126666');
INSERT INTO django_admin_log VALUES(474,'50','Updated Emre Kazancı',3,'',53,1,'2018-03-13 07:34:34.201032');
INSERT INTO django_admin_log VALUES(475,'49','Created  ',3,'',53,1,'2018-03-13 07:34:34.282931');
INSERT INTO django_admin_log VALUES(476,'48','Updated Çağlar Kaya',3,'',53,1,'2018-03-13 07:34:34.357617');
INSERT INTO django_admin_log VALUES(477,'47','Created  ',3,'',53,1,'2018-03-13 07:34:34.435062');
INSERT INTO django_admin_log VALUES(478,'46','Updated Kadir Evirgen',3,'',53,1,'2018-03-13 07:34:34.508189');
INSERT INTO django_admin_log VALUES(479,'45','Created  ',3,'',53,1,'2018-03-13 07:34:34.584989');
INSERT INTO django_admin_log VALUES(480,'44','Updated Hatice Yılmaz Alan',3,'',53,1,'2018-03-13 07:34:34.668137');
INSERT INTO django_admin_log VALUES(481,'43','Created  ',3,'',53,1,'2018-03-13 07:34:34.751337');
INSERT INTO django_admin_log VALUES(482,'42','Updated Ali Ekber Kılınç',3,'',53,1,'2018-03-13 07:34:34.817194');
INSERT INTO django_admin_log VALUES(483,'41','Created  ',3,'',53,1,'2018-03-13 07:34:34.915980');
INSERT INTO django_admin_log VALUES(484,'40','Updated Hüseyin Yıldız',3,'',53,1,'2018-03-13 07:34:34.982280');
INSERT INTO django_admin_log VALUES(485,'39','Created  ',3,'',53,1,'2018-03-13 07:34:35.059517');
INSERT INTO django_admin_log VALUES(486,'38','Updated Mehmet Yıldız',3,'',53,1,'2018-03-13 07:34:35.140642');
INSERT INTO django_admin_log VALUES(487,'37','Created  ',3,'',53,1,'2018-03-13 07:34:35.215771');
INSERT INTO django_admin_log VALUES(488,'36','Updated Ahmet Başaran',3,'',53,1,'2018-03-13 07:34:35.292638');
INSERT INTO django_admin_log VALUES(489,'35','Created  ',3,'',53,1,'2018-03-13 07:34:35.367808');
INSERT INTO django_admin_log VALUES(490,'34','Updated Hatice Duran Yıldız',3,'',53,1,'2018-03-13 07:34:35.445917');
INSERT INTO django_admin_log VALUES(491,'33','Created  ',3,'',53,1,'2018-03-13 07:34:35.517548');
INSERT INTO django_admin_log VALUES(492,'32','Updated Sayyora Artikova',3,'',53,1,'2018-03-13 07:34:35.584316');
INSERT INTO django_admin_log VALUES(493,'31','Created  ',3,'',53,1,'2018-03-13 07:34:35.660099');
INSERT INTO django_admin_log VALUES(494,'30','Updated Avni Aksoy',3,'',53,1,'2018-03-13 07:34:35.755882');
INSERT INTO django_admin_log VALUES(495,'29','Created  ',3,'',53,1,'2018-03-13 07:34:35.825758');
INSERT INTO django_admin_log VALUES(496,'28','Updated Cemile Fidan Murat',3,'',53,1,'2018-03-13 07:34:35.908986');
INSERT INTO django_admin_log VALUES(497,'27','Created  ',3,'',53,1,'2018-03-13 07:34:35.992347');
INSERT INTO django_admin_log VALUES(498,'26','Updated Burak Çetindaş',3,'',53,1,'2018-03-13 07:34:36.065870');
INSERT INTO django_admin_log VALUES(499,'25','Created  ',3,'',53,1,'2018-03-13 07:34:36.140878');
INSERT INTO django_admin_log VALUES(500,'24','Updated İbrahim Şara',3,'',53,1,'2018-03-13 07:34:36.225521');
INSERT INTO django_admin_log VALUES(501,'23','Created  ',3,'',53,1,'2018-03-13 07:34:36.290993');
INSERT INTO django_admin_log VALUES(502,'22','Updated Can Atilla',3,'',53,1,'2018-03-13 07:34:36.367102');
INSERT INTO django_admin_log VALUES(503,'21','Created  ',3,'',53,1,'2018-03-13 07:34:36.440709');
INSERT INTO django_admin_log VALUES(504,'20','Updated Bülent Yılmaz',3,'',53,1,'2018-03-13 07:34:36.525414');
INSERT INTO django_admin_log VALUES(505,'19','Created  ',3,'',53,1,'2018-03-13 07:34:36.600343');
INSERT INTO django_admin_log VALUES(506,'18','Updated Denizhan Erenler',3,'',53,1,'2018-03-13 07:34:36.682475');
INSERT INTO django_admin_log VALUES(507,'17','Created  ',3,'',53,1,'2018-03-13 07:34:36.757197');
INSERT INTO django_admin_log VALUES(508,'16','Updated Melike KAYA',3,'',53,1,'2018-03-13 07:34:36.833548');
INSERT INTO django_admin_log VALUES(509,'15','Created  ',3,'',53,1,'2018-03-13 07:34:36.916725');
INSERT INTO django_admin_log VALUES(510,'14','Updated Akif Gürer',3,'',53,1,'2018-03-13 07:34:36.990561');
INSERT INTO django_admin_log VALUES(511,'13','Created  ',3,'',53,1,'2018-03-13 07:34:37.075172');
INSERT INTO django_admin_log VALUES(512,'12','Updated Mustafa Dogan',3,'',53,1,'2018-03-13 07:34:37.149966');
INSERT INTO django_admin_log VALUES(513,'11','Created  ',3,'',53,1,'2018-03-13 07:34:37.249861');
INSERT INTO django_admin_log VALUES(514,'10','Updated  ',3,'',53,1,'2018-03-13 07:34:37.323731');
INSERT INTO django_admin_log VALUES(515,'9','Updated  ',3,'',53,1,'2018-03-13 07:34:37.391652');
INSERT INTO django_admin_log VALUES(516,'8','Created  ',3,'',53,1,'2018-03-13 07:34:37.466656');
INSERT INTO django_admin_log VALUES(517,'7','Deleted hazan gençay',3,'',53,1,'2018-03-13 07:34:37.541391');
INSERT INTO django_admin_log VALUES(518,'6','Updated Ziyaretçi',3,'',53,1,'2018-03-13 07:34:37.615193');
INSERT INTO django_admin_log VALUES(519,'5','Updated Firma',3,'',53,1,'2018-03-13 07:34:37.691631');
INSERT INTO django_admin_log VALUES(520,'4','Deleted Bilal Tonga',3,'',53,1,'2018-03-13 07:34:37.774799');
INSERT INTO django_admin_log VALUES(521,'3','Updated mahmut loker',3,'',53,1,'2018-03-13 07:34:37.858011');
INSERT INTO django_admin_log VALUES(522,'2','Updated mahmut loker',3,'',53,1,'2018-03-13 07:34:37.932778');
INSERT INTO django_admin_log VALUES(523,'1','Created asdsad asdsad',3,'',53,1,'2018-03-13 07:34:38.015039');
INSERT INTO django_admin_log VALUES(524,'62','bilal-tonga',2,'[{\'changed\': {\'fields\': [\'is_staff\', \'is_superuser\']}}]',5,1,'2018-03-13 07:29:28.123686');
INSERT INTO django_admin_log VALUES(525,'1','bilal',2,'[{\'changed\': {\'fields\': [\'first_name\', \'last_name\', \'email\', \'last_login\']}}]',5,1,'2018-03-13 07:30:47.763990');
INSERT INTO django_admin_log VALUES(526,'3','Bilal Tonga',2,'[{\'changed\': {\'fields\': [\'personnel_type\']}}]',13,62,'2018-03-13 08:55:18.236807');
INSERT INTO django_admin_log VALUES(527,'54','kadir-evirgen',2,'[{\'changed\': {\'fields\': [\'is_staff\', \'is_superuser\']}}]',5,62,'2018-03-13 09:27:35.979019');
INSERT INTO django_admin_log VALUES(528,'6','header_menu',2,'[{\'changed\': {\'fields\': [\'link_url\'], \'object\': \'header_menu 30. Indico\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'link_url\'], \'object\': \'header_menu 40. Kartl\u0131 Ge\u00e7i\u015f\', \'name\': \'menu item\'}}, {\'deleted\': {\'object\': \'header_menu 10. Proje Y\u00f6netimi\', \'name\': \'menu item\'}}, {\'deleted\': {\'object\': \'header_menu 20. Stok Takip\', \'name\': \'menu item\'}}]',20,62,'2018-03-13 09:41:38.788204');
INSERT INTO django_admin_log VALUES(529,'6','header_menu',2,'[{\'changed\': {\'fields\': [\'link_url\'], \'object\': \'header_menu 30. Indico\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'link_url\'], \'object\': \'header_menu 40. Kartl\u0131 Ge\u00e7i\u015f\', \'name\': \'menu item\'}}]',20,62,'2018-03-13 09:42:22.055081');
INSERT INTO django_admin_log VALUES(530,'1','portunes',1,'[{\'added\': {}}]',3,1,'2018-03-13 18:25:10.755730');
INSERT INTO django_admin_log VALUES(531,'1','bilal',2,'[{\'changed\': {\'fields\': [\'last_login\']}}]',5,1,'2018-03-13 18:25:37.812084');
INSERT INTO django_admin_log VALUES(532,'5','Portunes',2,'[{\'changed\': {\'fields\': [\'name\', \'slug\', \'base_url\']}}, {\'changed\': {\'fields\': [\'link_url\'], \'object\': \'portunes 500. Dashboard\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'link_url\'], \'object\': \'portunes 500. Yeni Kap\u0131\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'link_url\'], \'object\': \'portunes 500. Yeni Kontrolc\u00fc\', \'name\': \'menu item\'}}]',20,1,'2018-03-13 18:42:03.489801');
INSERT INTO django_admin_log VALUES(533,'1','bilal',2,'[{\'changed\': {\'fields\': [\'last_login\']}}]',5,1,'2018-03-21 06:45:36.869464');
INSERT INTO django_admin_log VALUES(534,'62','bilal-tonga',2,'[{\'changed\': {\'fields\': [\'is_staff\', \'is_superuser\', \'last_login\']}}]',5,1,'2018-03-21 06:48:57.313721');
INSERT INTO django_admin_log VALUES(535,'6','header_menu',2,'[{\'changed\': {\'fields\': [\'title\'], \'object\': \'header_menu 30. User Manager\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'title\'], \'object\': \'header_menu 40. Access Control\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'title\'], \'object\': \'header_menu 40. Procurement\', \'name\': \'menu item\'}}]',20,1,'2018-03-21 09:39:01.112967');
INSERT INTO django_admin_log VALUES(536,'5','Portunes',2,'[{\'changed\': {\'fields\': [\'link_url\', \'title\'], \'object\': \'portunes 500. New Door\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'link_url\', \'title\'], \'object\': \'portunes 500. New Controller\', \'name\': \'menu item\'}}]',20,1,'2018-03-21 09:39:32.060257');
INSERT INTO django_admin_log VALUES(537,'8','ACP01 | C013 - PANO ODASI - 00:08:EE:72:6C:FB',2,'[{\'changed\': {\'fields\': [\'health\']}}]',73,1,'2018-03-21 12:40:45.908414');
INSERT INTO django_admin_log VALUES(538,'1','1:Door H-KA-AT1 Atölye Giriş Kapısı |  Giriş yapıldı',1,'[{\'added\': {}}]',72,1,'2018-03-21 13:51:10.247979');
INSERT INTO django_admin_log VALUES(539,'2','2:Door H001-A Depo Kapısı |  Yetkisiz Kart',1,'[{\'added\': {}}]',72,1,'2018-03-21 13:51:45.274341');
INSERT INTO django_admin_log VALUES(540,'4','Permission Denied',2,'[{\'changed\': {\'fields\': [\'message\']}}]',76,1,'2018-03-21 13:52:34.703492');
INSERT INTO django_admin_log VALUES(541,'3','Undefined Card',2,'[{\'changed\': {\'fields\': [\'message\']}}]',76,1,'2018-03-21 13:52:44.041831');
INSERT INTO django_admin_log VALUES(542,'2','Exit',2,'[{\'changed\': {\'fields\': [\'message\']}}]',76,1,'2018-03-21 13:52:50.009471');
INSERT INTO django_admin_log VALUES(543,'1','Enter',2,'[{\'changed\': {\'fields\': [\'message\']}}]',76,1,'2018-03-21 13:52:55.627718');
INSERT INTO django_admin_log VALUES(544,'2','User Management',2,'[{\'changed\': {\'fields\': [\'name\']}}, {\'changed\': {\'fields\': [\'title\'], \'object\': \'personnel 20. Profile\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'title\'], \'object\': \'personnel 30. Users\', \'name\': \'menu item\'}}, {\'changed\': {\'fields\': [\'title\'], \'object\': \'personnel 40. User Types\', \'name\': \'menu item\'}}]',20,1,'2018-03-22 09:26:19.607804');
INSERT INTO django_admin_log VALUES(545,'6','header_menu',2,'[{\'changed\': {\'fields\': [\'title\'], \'object\': \'header_menu 30. User Management\', \'name\': \'menu item\'}}]',20,1,'2018-03-22 09:26:40.074241');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_content_type` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `app_label` varchar(100) NOT NULL, `model` varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,`admin`,`logentry`);
INSERT INTO django_content_type VALUES(2,'constance','config');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','permission');
INSERT INTO django_content_type VALUES(5,'auth','user');
INSERT INTO django_content_type VALUES(6,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(7,'sessions','session');
INSERT INTO django_content_type VALUES(8,'easy_thumbnails','source');
INSERT INTO django_content_type VALUES(9,'easy_thumbnails','thumbnail');
INSERT INTO django_content_type VALUES(10,'easy_thumbnails','thumbnaildimensions');
INSERT INTO django_content_type VALUES(11,'database','constance');
INSERT INTO django_content_type VALUES(12,'personnel','personnel_type');
INSERT INTO django_content_type VALUES(13,'personnel','personnel');
INSERT INTO django_content_type VALUES(14,'personnel','autor');
INSERT INTO django_content_type VALUES(15,'personnel','addresses');
INSERT INTO django_content_type VALUES(16,'personnel','customer');
INSERT INTO django_content_type VALUES(17,'personnel','invoice');
INSERT INTO django_content_type VALUES(18,'personnel','line');
INSERT INTO django_content_type VALUES(19,'menu','menuitem');
INSERT INTO django_content_type VALUES(20,'menu','menu');
INSERT INTO django_content_type VALUES(21,'projectManager','task');
INSERT INTO django_content_type VALUES(22,'projectManager','tasktype');
INSERT INTO django_content_type VALUES(23,'projectManager','statustype');
INSERT INTO django_content_type VALUES(24,'projectManager','project');
INSERT INTO django_content_type VALUES(25,'projectManager','comment');
INSERT INTO django_content_type VALUES(26,'inventory','inventory');
INSERT INTO django_content_type VALUES(27,'inventory','location');
INSERT INTO django_content_type VALUES(28,'inventory','itemtype');
INSERT INTO django_content_type VALUES(29,'inventory','item');
INSERT INTO django_content_type VALUES(30,'inventory','log');
INSERT INTO django_content_type VALUES(31,'inventory','category');
INSERT INTO django_content_type VALUES(32,'inventory','supplier');
INSERT INTO django_content_type VALUES(33,'tarlaguard','controller');
INSERT INTO django_content_type VALUES(34,'tarlaguard','door');
INSERT INTO django_content_type VALUES(35,'tarlaguard','action_type');
INSERT INTO django_content_type VALUES(36,'tarlaguard','permission');
INSERT INTO django_content_type VALUES(37,'tarlaguard','identifier');
INSERT INTO django_content_type VALUES(38,'tarlaguard','door_group');
INSERT INTO django_content_type VALUES(39,'tarlaguard','action');
INSERT INTO django_content_type VALUES(40,'homepage','menu_item');
INSERT INTO django_content_type VALUES(41,'homepage','category');
INSERT INTO django_content_type VALUES(42,'homepage','setting');
INSERT INTO django_content_type VALUES(43,'homepage','post');
INSERT INTO django_content_type VALUES(44,'django_mailbox','message');
INSERT INTO django_content_type VALUES(45,'django_mailbox','messageattachment');
INSERT INTO django_content_type VALUES(46,'django_mailbox','mailbox');
INSERT INTO django_content_type VALUES(47,'personnel','ldapuser');
INSERT INTO django_content_type VALUES(48,'personnel','ldapgroup');
INSERT INTO django_content_type VALUES(49,'actionslog','logaction');
INSERT INTO django_content_type VALUES(50,'activity_logger','entry');
INSERT INTO django_content_type VALUES(51,'activity_logger','location');
INSERT INTO django_content_type VALUES(52,'activity_logger','path');
INSERT INTO django_content_type VALUES(53,'auditlog','logentry');
INSERT INTO django_content_type VALUES(54,'procurement','tender');
INSERT INTO django_content_type VALUES(55,'procurement','supplier');
INSERT INTO django_content_type VALUES(56,'procurement','log');
INSERT INTO django_content_type VALUES(57,'procurement','tenderstatus');
INSERT INTO django_content_type VALUES(58,'procurement','currency');
INSERT INTO django_content_type VALUES(59,'procurement','tender_end_date');
INSERT INTO django_content_type VALUES(60,'procurement','tendertype');
INSERT INTO django_content_type VALUES(61,'testapp','autor');
INSERT INTO django_content_type VALUES(62,'testapp','customer');
INSERT INTO django_content_type VALUES(63,'testapp','line');
INSERT INTO django_content_type VALUES(64,'testapp','addresses');
INSERT INTO django_content_type VALUES(65,'testapp','invoice');
INSERT INTO django_content_type VALUES(66,'csvimport','importmodel');
INSERT INTO django_content_type VALUES(67,'csvimport','csvimport');
INSERT INTO django_content_type VALUES(68,'csvimport','item');
INSERT INTO django_content_type VALUES(69,'csvimport','organisation');
INSERT INTO django_content_type VALUES(70,'csvimport','country');
INSERT INTO django_content_type VALUES(71,'csvimport','unitofmeasure');
INSERT INTO django_content_type VALUES(72,'portunes','action');
INSERT INTO django_content_type VALUES(73,'portunes','controller');
INSERT INTO django_content_type VALUES(74,'portunes','door');
INSERT INTO django_content_type VALUES(75,'portunes','door_group');
INSERT INTO django_content_type VALUES(76,'portunes','action_type');
INSERT INTO django_content_type VALUES(77,'portunes','identifier');
INSERT INTO django_content_type VALUES(78,'portunes','permission');
INSERT INTO django_content_type VALUES(79,'portunes','door_group_doors');
INSERT INTO django_content_type VALUES(80,'user_media','usermediaimage');
INSERT INTO django_content_type VALUES(81,'generic_positions','objectposition');
INSERT INTO django_content_type VALUES(82,'sites','site');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auth_permission` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `content_type_id` integer NOT NULL REFERENCES `django_content_type` (`id`), `codename` varchar(100) NOT NULL, `name` varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,`add_logentry`,`Can add log entry`);
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,2,'change_config','Can change config');
INSERT INTO auth_permission VALUES(5,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(6,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(7,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(8,4,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(9,4,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(10,4,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(11,5,'add_user','Can add user');
INSERT INTO auth_permission VALUES(12,5,'change_user','Can change user');
INSERT INTO auth_permission VALUES(13,5,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(14,6,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(15,6,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(16,6,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(17,7,'add_session','Can add session');
INSERT INTO auth_permission VALUES(18,7,'change_session','Can change session');
INSERT INTO auth_permission VALUES(19,7,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(20,8,'add_source','Can add source');
INSERT INTO auth_permission VALUES(21,8,'change_source','Can change source');
INSERT INTO auth_permission VALUES(22,8,'delete_source','Can delete source');
INSERT INTO auth_permission VALUES(23,9,'add_thumbnail','Can add thumbnail');
INSERT INTO auth_permission VALUES(24,9,'change_thumbnail','Can change thumbnail');
INSERT INTO auth_permission VALUES(25,9,'delete_thumbnail','Can delete thumbnail');
INSERT INTO auth_permission VALUES(26,10,'add_thumbnaildimensions','Can add thumbnail dimensions');
INSERT INTO auth_permission VALUES(27,10,'change_thumbnaildimensions','Can change thumbnail dimensions');
INSERT INTO auth_permission VALUES(28,10,'delete_thumbnaildimensions','Can delete thumbnail dimensions');
INSERT INTO auth_permission VALUES(29,11,'add_constance','Can add constance');
INSERT INTO auth_permission VALUES(30,11,'change_constance','Can change constance');
INSERT INTO auth_permission VALUES(31,11,'delete_constance','Can delete constance');
INSERT INTO auth_permission VALUES(32,12,'view_personnel_type','Can see available personnel_type');
INSERT INTO auth_permission VALUES(33,13,'view_personnel','Can see available personnel');
INSERT INTO auth_permission VALUES(34,12,'add_personnel_type','Can add Personel Tipi');
INSERT INTO auth_permission VALUES(35,12,'change_personnel_type','Can change Personel Tipi');
INSERT INTO auth_permission VALUES(36,12,'delete_personnel_type','Can delete Personel Tipi');
INSERT INTO auth_permission VALUES(37,13,'add_personnel','Can add Personel');
INSERT INTO auth_permission VALUES(38,13,'change_personnel','Can change Personel');
INSERT INTO auth_permission VALUES(39,13,'delete_personnel','Can delete Personel');
INSERT INTO auth_permission VALUES(40,14,'view_autor','Can see available autor');
INSERT INTO auth_permission VALUES(41,15,'view_addresses','Can see available addresses');
INSERT INTO auth_permission VALUES(42,16,'view_customer','Can see available customer');
INSERT INTO auth_permission VALUES(43,17,'view_invoice','Can see available invoice');
INSERT INTO auth_permission VALUES(44,18,'view_line','Can see available line');
INSERT INTO auth_permission VALUES(45,19,'add_menuitem','Can add menu item');
INSERT INTO auth_permission VALUES(46,19,'change_menuitem','Can change menu item');
INSERT INTO auth_permission VALUES(47,19,'delete_menuitem','Can delete menu item');
INSERT INTO auth_permission VALUES(48,20,'add_menu','Can add menu');
INSERT INTO auth_permission VALUES(49,20,'change_menu','Can change menu');
INSERT INTO auth_permission VALUES(50,20,'delete_menu','Can delete menu');
INSERT INTO auth_permission VALUES(51,5,'view_user','Can see available user');
INSERT INTO auth_permission VALUES(52,21,'add_task','Can add task');
INSERT INTO auth_permission VALUES(53,21,'change_task','Can change task');
INSERT INTO auth_permission VALUES(54,21,'delete_task','Can delete task');
INSERT INTO auth_permission VALUES(55,22,'add_tasktype','Can add tasktype');
INSERT INTO auth_permission VALUES(56,22,'change_tasktype','Can change tasktype');
INSERT INTO auth_permission VALUES(57,22,'delete_tasktype','Can delete tasktype');
INSERT INTO auth_permission VALUES(58,23,'add_statustype','Can add statustype');
INSERT INTO auth_permission VALUES(59,23,'change_statustype','Can change statustype');
INSERT INTO auth_permission VALUES(60,23,'delete_statustype','Can delete statustype');
INSERT INTO auth_permission VALUES(61,24,'add_project','Can add project');
INSERT INTO auth_permission VALUES(62,24,'change_project','Can change project');
INSERT INTO auth_permission VALUES(63,24,'delete_project','Can delete project');
INSERT INTO auth_permission VALUES(64,25,'add_comment','Can add comment');
INSERT INTO auth_permission VALUES(65,25,'change_comment','Can change comment');
INSERT INTO auth_permission VALUES(66,25,'delete_comment','Can delete comment');
INSERT INTO auth_permission VALUES(67,26,'add_inventory','Can add Inventory');
INSERT INTO auth_permission VALUES(68,26,'change_inventory','Can change Inventory');
INSERT INTO auth_permission VALUES(69,26,'delete_inventory','Can delete Inventory');
INSERT INTO auth_permission VALUES(70,27,'add_location','Can add Location');
INSERT INTO auth_permission VALUES(71,27,'change_location','Can change Location');
INSERT INTO auth_permission VALUES(72,27,'delete_location','Can delete Location');
INSERT INTO auth_permission VALUES(73,28,'add_itemtype','Can add item type');
INSERT INTO auth_permission VALUES(74,28,'change_itemtype','Can change item type');
INSERT INTO auth_permission VALUES(75,28,'delete_itemtype','Can delete item type');
INSERT INTO auth_permission VALUES(76,29,'add_item','Can add Item');
INSERT INTO auth_permission VALUES(77,29,'change_item','Can change Item');
INSERT INTO auth_permission VALUES(78,29,'delete_item','Can delete Item');
INSERT INTO auth_permission VALUES(79,30,'add_log','Can add log');
INSERT INTO auth_permission VALUES(80,30,'change_log','Can change log');
INSERT INTO auth_permission VALUES(81,30,'delete_log','Can delete log');
INSERT INTO auth_permission VALUES(82,31,'add_category','Can add Category');
INSERT INTO auth_permission VALUES(83,31,'change_category','Can change Category');
INSERT INTO auth_permission VALUES(84,31,'delete_category','Can delete Category');
INSERT INTO auth_permission VALUES(85,32,'add_supplier','Can add Supplier');
INSERT INTO auth_permission VALUES(86,32,'change_supplier','Can change Supplier');
INSERT INTO auth_permission VALUES(87,32,'delete_supplier','Can delete Supplier');
INSERT INTO auth_permission VALUES(88,33,'add_controller','Can add controller');
INSERT INTO auth_permission VALUES(89,33,'change_controller','Can change controller');
INSERT INTO auth_permission VALUES(90,33,'delete_controller','Can delete controller');
INSERT INTO auth_permission VALUES(91,34,'add_door','Can add door');
INSERT INTO auth_permission VALUES(92,34,'change_door','Can change door');
INSERT INTO auth_permission VALUES(93,34,'delete_door','Can delete door');
INSERT INTO auth_permission VALUES(94,34,'view_door','Can view doors');
INSERT INTO auth_permission VALUES(95,35,'add_action_type','Can add action_type');
INSERT INTO auth_permission VALUES(96,35,'change_action_type','Can change action_type');
INSERT INTO auth_permission VALUES(97,35,'delete_action_type','Can delete action_type');
INSERT INTO auth_permission VALUES(98,36,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(99,36,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(100,36,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(101,37,'add_identifier','Can add identifier');
INSERT INTO auth_permission VALUES(102,37,'change_identifier','Can change identifier');
INSERT INTO auth_permission VALUES(103,37,'delete_identifier','Can delete identifier');
INSERT INTO auth_permission VALUES(104,37,'view_identifier','Can view identifiers');
INSERT INTO auth_permission VALUES(105,38,'add_door_group','Can add door_group');
INSERT INTO auth_permission VALUES(106,38,'change_door_group','Can change door_group');
INSERT INTO auth_permission VALUES(107,38,'delete_door_group','Can delete door_group');
INSERT INTO auth_permission VALUES(108,38,'view_door_groups','Can view door groups');
INSERT INTO auth_permission VALUES(109,39,'add_action','Can add action');
INSERT INTO auth_permission VALUES(110,39,'change_action','Can change action');
INSERT INTO auth_permission VALUES(111,39,'delete_action','Can delete action');
INSERT INTO auth_permission VALUES(112,40,'add_menu_item','Can add menu_item');
INSERT INTO auth_permission VALUES(113,40,'change_menu_item','Can change menu_item');
INSERT INTO auth_permission VALUES(114,40,'delete_menu_item','Can delete menu_item');
INSERT INTO auth_permission VALUES(115,41,'add_category','Can add category');
INSERT INTO auth_permission VALUES(116,41,'change_category','Can change category');
INSERT INTO auth_permission VALUES(117,41,'delete_category','Can delete category');
INSERT INTO auth_permission VALUES(118,42,'add_setting','Can add setting');
INSERT INTO auth_permission VALUES(119,42,'change_setting','Can change setting');
INSERT INTO auth_permission VALUES(120,42,'delete_setting','Can delete setting');
INSERT INTO auth_permission VALUES(121,43,'add_post','Can add post');
INSERT INTO auth_permission VALUES(122,43,'change_post','Can change post');
INSERT INTO auth_permission VALUES(123,43,'delete_post','Can delete post');
INSERT INTO auth_permission VALUES(124,44,'add_message','Can add E-mail message');
INSERT INTO auth_permission VALUES(125,44,'change_message','Can change E-mail message');
INSERT INTO auth_permission VALUES(126,44,'delete_message','Can delete E-mail message');
INSERT INTO auth_permission VALUES(127,45,'add_messageattachment','Can add Message attachment');
INSERT INTO auth_permission VALUES(128,45,'change_messageattachment','Can change Message attachment');
INSERT INTO auth_permission VALUES(129,45,'delete_messageattachment','Can delete Message attachment');
INSERT INTO auth_permission VALUES(130,46,'add_mailbox','Can add Mailbox');
INSERT INTO auth_permission VALUES(131,46,'change_mailbox','Can change Mailbox');
INSERT INTO auth_permission VALUES(132,46,'delete_mailbox','Can delete Mailbox');
INSERT INTO auth_permission VALUES(133,47,'view_ldapuser','Can see available ldapuser');
INSERT INTO auth_permission VALUES(134,48,'view_ldapgroup','Can see available ldapgroup');
INSERT INTO auth_permission VALUES(135,49,'add_logaction','Can add log action');
INSERT INTO auth_permission VALUES(136,49,'change_logaction','Can change log action');
INSERT INTO auth_permission VALUES(137,49,'delete_logaction','Can delete log action');
INSERT INTO auth_permission VALUES(138,50,'add_entry','Can add entry');
INSERT INTO auth_permission VALUES(139,50,'change_entry','Can change entry');
INSERT INTO auth_permission VALUES(140,50,'delete_entry','Can delete entry');
INSERT INTO auth_permission VALUES(141,51,'add_location','Can add location');
INSERT INTO auth_permission VALUES(142,51,'change_location','Can change location');
INSERT INTO auth_permission VALUES(143,51,'delete_location','Can delete location');
INSERT INTO auth_permission VALUES(144,52,'add_path','Can add path');
INSERT INTO auth_permission VALUES(145,52,'change_path','Can change path');
INSERT INTO auth_permission VALUES(146,52,'delete_path','Can delete path');
INSERT INTO auth_permission VALUES(147,53,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(148,53,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(149,53,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(150,54,'add_tender','Can add İhale');
INSERT INTO auth_permission VALUES(151,54,'change_tender','Can change İhale');
INSERT INTO auth_permission VALUES(152,54,'delete_tender','Can delete İhale');
INSERT INTO auth_permission VALUES(153,55,'add_supplier','Can add Supplier');
INSERT INTO auth_permission VALUES(154,55,'change_supplier','Can change Supplier');
INSERT INTO auth_permission VALUES(155,55,'delete_supplier','Can delete Supplier');
INSERT INTO auth_permission VALUES(156,56,'add_log','Can add log');
INSERT INTO auth_permission VALUES(157,56,'change_log','Can change log');
INSERT INTO auth_permission VALUES(158,56,'delete_log','Can delete log');
INSERT INTO auth_permission VALUES(159,57,'add_tenderstatus','Can add tender status');
INSERT INTO auth_permission VALUES(160,57,'change_tenderstatus','Can change tender status');
INSERT INTO auth_permission VALUES(161,57,'delete_tenderstatus','Can delete tender status');
INSERT INTO auth_permission VALUES(162,58,'add_currency','Can add currency');
INSERT INTO auth_permission VALUES(163,58,'change_currency','Can change currency');
INSERT INTO auth_permission VALUES(164,58,'delete_currency','Can delete currency');
INSERT INTO auth_permission VALUES(165,59,'add_tender_end_date','Can add iş teslim tarihi');
INSERT INTO auth_permission VALUES(166,59,'change_tender_end_date','Can change iş teslim tarihi');
INSERT INTO auth_permission VALUES(167,59,'delete_tender_end_date','Can delete iş teslim tarihi');
INSERT INTO auth_permission VALUES(168,60,'add_tendertype','Can add tender type');
INSERT INTO auth_permission VALUES(169,60,'change_tendertype','Can change tender type');
INSERT INTO auth_permission VALUES(170,60,'delete_tendertype','Can delete tender type');
INSERT INTO auth_permission VALUES(171,59,'view_tender_end_date','Can see available tender_end_date');
INSERT INTO auth_permission VALUES(172,60,'view_tendertype','Can see available tendertype');
INSERT INTO auth_permission VALUES(173,57,'view_tenderstatus','Can see available tenderstatus');
INSERT INTO auth_permission VALUES(174,58,'view_currency','Can see available currency');
INSERT INTO auth_permission VALUES(175,55,'view_supplier','Can see available supplier');
INSERT INTO auth_permission VALUES(176,54,'view_tender','Can see available tender');
INSERT INTO auth_permission VALUES(177,56,'view_log','Can see available log');
INSERT INTO auth_permission VALUES(178,61,'view_autor','Can see available autor');
INSERT INTO auth_permission VALUES(179,62,'view_customer','Can see available customer');
INSERT INTO auth_permission VALUES(180,63,'view_line','Can see available line');
INSERT INTO auth_permission VALUES(181,64,'view_addresses','Can see available addresses');
INSERT INTO auth_permission VALUES(182,65,'view_invoice','Can see available invoice');
INSERT INTO auth_permission VALUES(183,61,'add_autor','Can add autor');
INSERT INTO auth_permission VALUES(184,61,'change_autor','Can change autor');
INSERT INTO auth_permission VALUES(185,61,'delete_autor','Can delete autor');
INSERT INTO auth_permission VALUES(186,61,'view_author','Can see available Authors');
INSERT INTO auth_permission VALUES(187,65,'add_invoice','Can add Invoice');
INSERT INTO auth_permission VALUES(188,65,'change_invoice','Can change Invoice');
INSERT INTO auth_permission VALUES(189,65,'delete_invoice','Can delete Invoice');
INSERT INTO auth_permission VALUES(190,64,'add_addresses','Can add addresses');
INSERT INTO auth_permission VALUES(191,64,'change_addresses','Can change addresses');
INSERT INTO auth_permission VALUES(192,64,'delete_addresses','Can delete addresses');
INSERT INTO auth_permission VALUES(193,62,'add_customer','Can add customer');
INSERT INTO auth_permission VALUES(194,62,'change_customer','Can change customer');
INSERT INTO auth_permission VALUES(195,62,'delete_customer','Can delete customer');
INSERT INTO auth_permission VALUES(196,63,'add_line','Can add Line');
INSERT INTO auth_permission VALUES(197,63,'change_line','Can change Line');
INSERT INTO auth_permission VALUES(198,63,'delete_line','Can delete Line');
INSERT INTO auth_permission VALUES(199,66,'add_importmodel','Can add import model');
INSERT INTO auth_permission VALUES(200,66,'change_importmodel','Can change import model');
INSERT INTO auth_permission VALUES(201,66,'delete_importmodel','Can delete import model');
INSERT INTO auth_permission VALUES(202,67,'add_csvimport','Can add csv import');
INSERT INTO auth_permission VALUES(203,67,'change_csvimport','Can change csv import');
INSERT INTO auth_permission VALUES(204,67,'delete_csvimport','Can delete csv import');
INSERT INTO auth_permission VALUES(205,68,'add_item','Can add item');
INSERT INTO auth_permission VALUES(206,68,'change_item','Can change item');
INSERT INTO auth_permission VALUES(207,68,'delete_item','Can delete item');
INSERT INTO auth_permission VALUES(208,69,'add_organisation','Can add organisation');
INSERT INTO auth_permission VALUES(209,69,'change_organisation','Can change organisation');
INSERT INTO auth_permission VALUES(210,69,'delete_organisation','Can delete organisation');
INSERT INTO auth_permission VALUES(211,70,'add_country','Can add country');
INSERT INTO auth_permission VALUES(212,70,'change_country','Can change country');
INSERT INTO auth_permission VALUES(213,70,'delete_country','Can delete country');
INSERT INTO auth_permission VALUES(214,71,'add_unitofmeasure','Can add unit of measure');
INSERT INTO auth_permission VALUES(215,71,'change_unitofmeasure','Can change unit of measure');
INSERT INTO auth_permission VALUES(216,71,'delete_unitofmeasure','Can delete unit of measure');
INSERT INTO auth_permission VALUES(217,72,'add_action','Can add action');
INSERT INTO auth_permission VALUES(218,72,'change_action','Can change action');
INSERT INTO auth_permission VALUES(219,72,'delete_action','Can delete action');
INSERT INTO auth_permission VALUES(220,73,'add_controller','Can add controller');
INSERT INTO auth_permission VALUES(221,73,'change_controller','Can change controller');
INSERT INTO auth_permission VALUES(222,73,'delete_controller','Can delete controller');
INSERT INTO auth_permission VALUES(223,74,'add_door','Can add door');
INSERT INTO auth_permission VALUES(224,74,'change_door','Can change door');
INSERT INTO auth_permission VALUES(225,74,'delete_door','Can delete door');
INSERT INTO auth_permission VALUES(226,74,'view_door','Can view doors');
INSERT INTO auth_permission VALUES(227,75,'add_door_group','Can add door_group');
INSERT INTO auth_permission VALUES(228,75,'change_door_group','Can change door_group');
INSERT INTO auth_permission VALUES(229,75,'delete_door_group','Can delete door_group');
INSERT INTO auth_permission VALUES(230,75,'view_door_groups','Can view door groups');
INSERT INTO auth_permission VALUES(231,76,'add_action_type','Can add action_type');
INSERT INTO auth_permission VALUES(232,76,'change_action_type','Can change action_type');
INSERT INTO auth_permission VALUES(233,76,'delete_action_type','Can delete action_type');
INSERT INTO auth_permission VALUES(234,77,'add_identifier','Can add identifier');
INSERT INTO auth_permission VALUES(235,77,'change_identifier','Can change identifier');
INSERT INTO auth_permission VALUES(236,77,'delete_identifier','Can delete identifier');
INSERT INTO auth_permission VALUES(237,77,'view_identifier','Can view identifiers');
INSERT INTO auth_permission VALUES(238,78,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(239,78,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(240,78,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(241,21,'view_task','Can view task');
INSERT INTO auth_permission VALUES(242,25,'view_comment','Can view comment');
INSERT INTO auth_permission VALUES(243,23,'view_statustype','Can view statustype');
INSERT INTO auth_permission VALUES(244,22,'view_tasktype','Can view tasktype');
INSERT INTO auth_permission VALUES(245,24,'view_project','Can view project');
INSERT INTO auth_permission VALUES(246,73,'view_controller','Can view controller');
INSERT INTO auth_permission VALUES(247,72,'view_action','Can view action');
INSERT INTO auth_permission VALUES(248,76,'view_action_type','Can view action_type');
INSERT INTO auth_permission VALUES(249,75,'view_door_group','Can view door_group');
INSERT INTO auth_permission VALUES(250,78,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(251,26,'view_inventory','Can view inventory');
INSERT INTO auth_permission VALUES(252,27,'view_location','Can view location');
INSERT INTO auth_permission VALUES(253,28,'view_itemtype','Can view itemtype');
INSERT INTO auth_permission VALUES(254,29,'view_item','Can view item');
INSERT INTO auth_permission VALUES(255,30,'view_log','Can view log');
INSERT INTO auth_permission VALUES(256,31,'view_category','Can view category');
INSERT INTO auth_permission VALUES(257,32,'view_supplier','Can view supplier');
INSERT INTO auth_permission VALUES(258,1,'view_logentry','Can view logentry');
INSERT INTO auth_permission VALUES(259,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(260,4,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(261,6,'view_contenttype','Can view contenttype');
INSERT INTO auth_permission VALUES(262,7,'view_session','Can view session');
INSERT INTO auth_permission VALUES(263,8,'view_source','Can view source');
INSERT INTO auth_permission VALUES(264,9,'view_thumbnail','Can view thumbnail');
INSERT INTO auth_permission VALUES(265,10,'view_thumbnaildimensions','Can view thumbnaildimensions');
INSERT INTO auth_permission VALUES(266,44,'view_message','Can view message');
INSERT INTO auth_permission VALUES(267,45,'view_messageattachment','Can view messageattachment');
INSERT INTO auth_permission VALUES(268,46,'view_mailbox','Can view mailbox');
INSERT INTO auth_permission VALUES(269,20,'view_menu','Can view menu');
INSERT INTO auth_permission VALUES(270,19,'view_menuitem','Can view menuitem');
INSERT INTO auth_permission VALUES(271,53,'view_logentry','Can view logentry');
INSERT INTO auth_permission VALUES(272,66,'view_importmodel','Can view importmodel');
INSERT INTO auth_permission VALUES(273,67,'view_csvimport','Can view csvimport');
INSERT INTO auth_permission VALUES(274,79,'view_door_group_doors','Can see available door_group_doors');
INSERT INTO auth_permission VALUES(275,80,'add_usermediaimage','Can add user media image');
INSERT INTO auth_permission VALUES(276,80,'change_usermediaimage','Can change user media image');
INSERT INTO auth_permission VALUES(277,80,'delete_usermediaimage','Can delete user media image');
INSERT INTO auth_permission VALUES(278,81,'add_objectposition','Can add object position');
INSERT INTO auth_permission VALUES(279,81,'change_objectposition','Can change object position');
INSERT INTO auth_permission VALUES(280,81,'delete_objectposition','Can delete object position');
INSERT INTO auth_permission VALUES(281,82,'add_site','Can add site');
INSERT INTO auth_permission VALUES(282,82,'change_site','Can change site');
INSERT INTO auth_permission VALUES(283,82,'delete_site','Can delete site');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auth_user` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `password` varchar(128) NOT NULL, `last_login` datetime NULL, `is_superuser` bool NOT NULL, `first_name` varchar(30) NOT NULL, `last_name` varchar(30) NOT NULL, `email` varchar(254) NOT NULL, `is_staff` bool NOT NULL, `is_active` bool NOT NULL, `date_joined` datetime NOT NULL, `username` varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_user VALUES(1,`pbkdf2_sha256$36000$j4b9gpAP614b$m4YU7Un5tvxFdwhRM23agw2Iv4J/00JkZLjeVuUecOo=`,`2018-03-22 09:17:58.706170`,1,`Creworker`,`Software`,`help@creworker.com`,1,1,`2018-03-02 10:58:00`,`bilal`);
INSERT INTO auth_user VALUES(36,'pbkdf2_sha256$36000$k0ny7tGT1W2B$HF8dzCwAONJtblAZcG/4MDk51sLg9664Dn3PWRp1xmM=',NULL,0,'','','',0,1,'2018-03-08 22:10:09.932396','asdsad');
INSERT INTO auth_user VALUES(37,'!OstDS5TkeosHHPlyVd962tk2iIs1OVNIX3b0JAcK',NULL,0,'Mustafa','Dogan','',0,1,'2018-03-10 10:15:33.116781','mustafa-dogan');
INSERT INTO auth_user VALUES(38,'!U0z6LEAPcMEAFoJsqlCveN8SBG0Ge63T746AYim0',NULL,0,'Akif','Gürer','',0,1,'2018-03-10 10:15:33.267365','akif-gurer');
INSERT INTO auth_user VALUES(39,'!MhLXB2YpVmrK337ghlGR3X4qJrIRjxRgdX8mERDA',NULL,0,'Melike','KAYA','',0,1,'2018-03-10 10:15:33.374891','melike-kaya');
INSERT INTO auth_user VALUES(40,'!TkANcvCRpukYK0vIwHSQjnLyOfR4HngzpNPdwc2S',NULL,0,'Denizhan','Erenler','',0,1,'2018-03-10 10:15:33.482028','denizhan-erenler');
INSERT INTO auth_user VALUES(41,'!jXX1We3nUodJYVN8oD4NQFjd4kYmOi5NFCxJ7hFf',NULL,0,'Bülent','Yılmaz','',0,1,'2018-03-10 10:15:33.590012','bulent-yilmaz');
INSERT INTO auth_user VALUES(42,'!TCWRgEoOp7lHMni1498pyrEfzwpIhLpdPF463t5G',NULL,0,'Can','Atilla','',0,1,'2018-03-10 10:15:33.698710','can-atilla');
INSERT INTO auth_user VALUES(43,'!av87ieOxEr570ilW8jPWHKjIs9abdby5Clp5lolo',NULL,0,'İbrahim','Şara','ibrahim.sara@tarla.org.tr',0,1,'2018-03-10 10:15:33.805977','ibrahim-sara');
INSERT INTO auth_user VALUES(44,'!8jWc9Xa4IMwvYBLetyJk70EfdPqZ1liRwaqqdISh',NULL,0,'Burak','Çetindaş','burak.cetindas@tarla.org.tr',0,1,'2018-03-10 10:15:33.913326','burak-cetindas');
INSERT INTO auth_user VALUES(45,'!Rj86mIoBYyikoY42wmsdWh32XuCq2ds0XF8DJaf0',NULL,0,'Cemile','Fidan Murat','cemile.fidan@tarla.org.tr',0,1,'2018-03-10 10:15:34.020677','cemile-fidan');
INSERT INTO auth_user VALUES(46,'!bnTy008OhCjuAh9t2CDfFSx6CD4ciRcAgu9vCVh9',NULL,0,'Avni','Aksoy','avni.aksoy@tarla.org.tr',0,1,'2018-03-10 10:15:34.129033','aaksoy');
INSERT INTO auth_user VALUES(47,'!BE1LOLJyxb98e1UO5uzRIHHHp75UmI2g9UzGuoHC',NULL,0,'Sayyora','Artikova','sayyora.artikova@tarla.org.tr',0,1,'2018-03-10 10:15:34.236650','sayyora-artikova');
INSERT INTO auth_user VALUES(48,'!BPL37QRoUeQW7oo4b6hHV3z9xL9jjCQrqUqLvlxm',NULL,0,'Hatice','Duran Yıldız','hatice.yildiz@tarla.org.tr',0,1,'2018-03-10 10:15:34.344198','hatice-yildiz');
INSERT INTO auth_user VALUES(49,'!anfaoS3i5mcRqstleDz1FMYyA6rOCchkEvVkOLnf',NULL,0,'Ahmet','Başaran','ahmet.basaran@tarla.org.tr',0,1,'2018-03-10 10:15:34.451842','ahmet-basaran');
INSERT INTO auth_user VALUES(50,'!VIczWLyaBG6VhqmGGtItbZEac5wkT7tDVvXQfxN9',NULL,0,'Mehmet','Yıldız','mehmet.yildiz@tarla.org.tr',0,1,'2018-03-10 10:15:34.559425','mehmet-yildiz');
INSERT INTO auth_user VALUES(51,'!5vuh9C6wHAAz8DKEZaBSBlNA7EQTotiwPrSR9ofa',NULL,0,'Hüseyin','Yıldız','huseyin.yildiz@tarla.org.tr',0,1,'2018-03-10 10:15:34.667368','huseyin-yildiz');
INSERT INTO auth_user VALUES(52,'!Uqqd6P95vhkeEF8FA82DvVSTRCtwS7F3vrWSHycW',NULL,0,'Ali','Ekber Kılınç','aliekber.kilinc@tarla.org.tr',0,1,'2018-03-10 10:15:34.776126','ali-ekber');
INSERT INTO auth_user VALUES(53,'!EX8M9ZU6Mp8GdjCncfnNW9HYfYuEc2ahyf6rrMZE',NULL,0,'Hatice','Yılmaz Alan','',0,1,'2018-03-10 10:15:34.883013','hatice-yilmaz');
INSERT INTO auth_user VALUES(54,'!gTVhoq0EogLuR0fXg9rwwogrDlKLqwIFR5XvCIJn',NULL,1,'Kadir','Evirgen','',1,1,'2018-03-10 10:15:00','kadir-evirgen');
INSERT INTO auth_user VALUES(55,'!X2pTVhrOKyC8ozgRuNoZqTPQh1K9q6kgQhkrjt2r',NULL,0,'Çağlar','Kaya','caglar.kaya@tarla.org.tr',0,1,'2018-03-10 10:15:35.098188','caglar-kaya');
INSERT INTO auth_user VALUES(56,'!31SbxtftHKmYHhRRz9gmw4kOoL7L0vDwdtAV7Kmn',NULL,0,'Emre','Kazancı','emre.kazanci@tarla.org.tr',0,1,'2018-03-10 10:15:35.206817','emre-kazanci');
INSERT INTO auth_user VALUES(57,'!54PVkfuRIW0dkGx4GrvVozVmknmas2hvBqqjdY2j',NULL,0,'Özlem','Karslı','ozlem.karsli@tarla.org.tr',0,1,'2018-03-10 10:15:35.315635','ozlem-karsli');
INSERT INTO auth_user VALUES(58,'!cVJNBD6BCzE9ormijo2ZnuYsGCjwKL8BniXdcVHw',NULL,0,'Mehmet','Bozdoğan','mehmet.bozdogan@tarla.org.tr',0,1,'2018-03-10 10:15:35.424817','mehmet-bozdogan');
INSERT INTO auth_user VALUES(59,'!ITfvMLS4UklQJ1LzQiwX9Fm8AlEXWeLlOGjGpmgT',NULL,0,'Burak','Koç','burak.koc@tarla.org.tr',0,1,'2018-03-10 10:15:35.532187','burak-koc');
INSERT INTO auth_user VALUES(60,'!RfF9g1mi7eHfBvZhFR6gr20XMrruIP3Le0mY5ioh',NULL,0,'Ayhan','Aydın','ayhan.aydin@tarla.org.tr',0,1,'2018-03-10 10:15:35.639794','ayhan-aydin');
INSERT INTO auth_user VALUES(61,'!HM8IgajYpEZUqdXQHpoPAsIG9HEebqkNLubHgVkS',NULL,0,'Ömer Faruk','Elçim','omer.faruk.elcim@tarla.org.tr',0,1,'2018-03-10 10:15:35.747733','omer-elcim');
INSERT INTO auth_user VALUES(62,'!lHLRJ9gej4TNL1RvKQmoMa4ctx09bo5vSguYop16','2018-03-22 09:17:41.549410',0,'Bilal','Tonga','bilal.tonga@tarla.org.tr',0,1,'2018-03-10 10:15:00','bilal-tonga');
INSERT INTO auth_user VALUES(63,'!2YYZ0zJqUWlxawrA2MtaQ6Y5gb3mpHOggL67haMK',NULL,0,'System','Administrator','',0,1,'2018-03-10 10:15:35.963008','fd-admin');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `constance_config` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `key` varchar(255) NOT NULL UNIQUE, `value` text NOT NULL);
INSERT INTO constance_config VALUES(1,`title`,`gAJVCFVwc3RyZWFtcQEu`);
INSERT INTO constance_config VALUES(2,'hide_sidebar','gAKILg==');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `easy_thumbnails_source` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `storage_hash` varchar(40) NOT NULL, `name` varchar(255) NOT NULL, `modified` datetime NOT NULL);
INSERT INTO easy_thumbnails_source VALUES(1,`f9bde26a1556cd667f742bd34ec7c55e`,`profile_pictures/profile.png`,`2018-03-02 12:50:16.096729`);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `easy_thumbnails_thumbnail` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `storage_hash` varchar(40) NOT NULL, `name` varchar(255) NOT NULL, `modified` datetime NOT NULL, `source_id` integer NOT NULL REFERENCES `easy_thumbnails_source` (`id`));
INSERT INTO easy_thumbnails_thumbnail VALUES(1,`d26becbf46ac48eda79c7a39a13a02dd`,`profile_pictures/profile.png.300x300_q85_detail_upscale.png`,`2018-03-02 12:50:16.107581`,1);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `easy_thumbnails_thumbnaildimensions` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `thumbnail_id` integer NOT NULL UNIQUE REFERENCES `easy_thumbnails_thumbnail` (`id`), `width` integer unsigned NULL, `height` integer unsigned NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_session` (`session_key` varchar(40) NOT NULL PRIMARY KEY, `session_data` text NOT NULL, `expire_date` datetime NOT NULL);
INSERT INTO django_session VALUES(`aq50w7ofbm58j90utumvsocdwhx36dxg`,`OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=`,`2018-03-16 10:58:47.595840`);
INSERT INTO django_session VALUES('coujdgf5jeuix2orasxs4sxy5uott8mt','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-16 11:30:11.137877');
INSERT INTO django_session VALUES('mv6yu1yhtgud3yqe8i61483rm8r9808i','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-16 11:44:40.292767');
INSERT INTO django_session VALUES('1jjmutg4v0wtvp2p7idvpw39po34f2ce','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-16 12:08:15.852325');
INSERT INTO django_session VALUES('7z7xq92dc69i8kr34sf7pondnrki2usw','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-16 13:01:39.321177');
INSERT INTO django_session VALUES('drm5b1cr49l5pmge8rwn6r7it9k5o04g','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-16 16:52:58.152636');
INSERT INTO django_session VALUES('1cdyzhcr1ec7h7mkfhcbvt3f20wp3ve4','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-16 20:26:35.710718');
INSERT INTO django_session VALUES('4emmm192kiwmeeeorubfc5jw6t65jnvh','ZTIxMzU3MDhkZTE4MGZkM2EwYTlhNGY3YjY0ZDQ3MDIzMjQ3MmE2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-03-16 21:09:56.634638');
INSERT INTO django_session VALUES('2wkxahkr8oucgm7jywu9vozuhsl4pebn','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-19 18:33:57.443798');
INSERT INTO django_session VALUES('av40htpnjnvayo2mfoy0b9ov2a9teweg','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-21 12:35:03.101780');
INSERT INTO django_session VALUES('kfa61yux10fkdr04safm6jhklcz745j8','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-21 21:47:00.120027');
INSERT INTO django_session VALUES('aoqy91uvyit7yxg5k8i4c21guleo6xnj','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-22 16:27:50.422062');
INSERT INTO django_session VALUES('d5c4bp3a7yhxv6ts55hv6mpgdkujtxpi','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-23 18:37:48.237161');
INSERT INTO django_session VALUES('uc0kpp2qrg38blbpqbkjv56co3r5a5z7','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-23 19:42:53.624401');
INSERT INTO django_session VALUES('gy019g2ozc00z9gpbfneeewtnv83eezr','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-26 07:09:04.700859');
INSERT INTO django_session VALUES('fxxn2qlil9pjcv0sfa1ms9aaggkaw828','YzM1MjQyYTBhNTM5NDYzNDVlNTA5ODQzYjU5MDBhOTliMDRkYzk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjkxYWRmM2M5NDRhNDFiNjM1YmRhZTA3NjIzNmMyZWUwMDJhYjk3ZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ29fcHl0aG9uM19sZGFwLmF1dGguTERBUEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNjIifQ==','2018-03-27 08:45:07.614310');
INSERT INTO django_session VALUES('9bbprn9qyujn1rb4234264g3956qwb44','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-27 18:10:38.344101');
INSERT INTO django_session VALUES('x2kdw5eu5ukle3hcv3wnean7xdh3mgws','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-31 15:29:19.685543');
INSERT INTO django_session VALUES('ej9jldes5m18ar3d1w0ne5pehqjchez1','YzM1MjQyYTBhNTM5NDYzNDVlNTA5ODQzYjU5MDBhOTliMDRkYzk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjkxYWRmM2M5NDRhNDFiNjM1YmRhZTA3NjIzNmMyZWUwMDJhYjk3ZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ29fcHl0aG9uM19sZGFwLmF1dGguTERBUEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNjIifQ==','2018-04-04 06:49:15.327336');
INSERT INTO django_session VALUES('orot4ihzie7jsge9eskodt4yvgyahimu','OWRkMTBlYmQ1MjEzZTA4ZjU3Yjg5NWVjODBiM2I1OGQxYWUxZTcyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZGViNzBlM2JhYzBhYTRhMjc3Y2JkMDQyODgzYjYwZDM1YzQwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-05 09:17:58.761457');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `menu_menu` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(100) NOT NULL, `slug` varchar(50) NOT NULL, `base_url` varchar(100) NULL, `description` text NULL);
INSERT INTO menu_menu VALUES(1,`project`,`project`,`/project/`,``);
INSERT INTO menu_menu VALUES(2,'User Management','personnel','/personnel/','');
INSERT INTO menu_menu VALUES(3,'inventory','inventory','/inventory/','');
INSERT INTO menu_menu VALUES(4,'Indico','indico','/indico/','');
INSERT INTO menu_menu VALUES(5,'Portunes','portunes','/portunes/','');
INSERT INTO menu_menu VALUES(6,'header_menu','header_menu','/','');
INSERT INTO menu_menu VALUES(7,'İhale Yönetimi','procurement','/procurement/','');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `menu_menuitem` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `order` integer NOT NULL, `link_url` varchar(100) NOT NULL, `title` varchar(100) NOT NULL, `anonymous_only` bool NOT NULL, `menu_id` integer NOT NULL REFERENCES `menu_menu` (`id`), `login_required` bool NOT NULL);
INSERT INTO menu_menuitem VALUES(1,500,`/project/`,`Dashboard`,0,1,1);
INSERT INTO menu_menuitem VALUES(2,500,'/project/new/project','Yeni Proje',0,1,1);
INSERT INTO menu_menuitem VALUES(3,20,'/personnel/profile/','Profile',0,2,1);
INSERT INTO menu_menuitem VALUES(4,30,'/personnel/personnel/list','Users',0,2,1);
INSERT INTO menu_menuitem VALUES(5,500,'/inventory/','Dashboard',0,3,1);
INSERT INTO menu_menuitem VALUES(6,500,'/inventory/new/item','Yeni Malzeme',0,3,1);
INSERT INTO menu_menuitem VALUES(7,500,'/inventory/new/itemtype','Yeni Malzeme Cinsi',0,3,1);
INSERT INTO menu_menuitem VALUES(8,500,'/inventory/new/category','Yeni Kategori',0,3,1);
INSERT INTO menu_menuitem VALUES(9,500,'/inventory/new/location','Yeni Lokasyon',0,3,1);
INSERT INTO menu_menuitem VALUES(10,500,'/inventory/new/inventory','Yeni Depo',0,3,1);
INSERT INTO menu_menuitem VALUES(11,500,'/inventory/new/supplier','Yeni Tedarikçi',0,3,1);
INSERT INTO menu_menuitem VALUES(12,500,'/indico/','login',0,4,1);
INSERT INTO menu_menuitem VALUES(13,10,'/portunes/','Dashboard',0,5,1);
INSERT INTO menu_menuitem VALUES(14,500,'/portunes/door/create','New Door',0,5,1);
INSERT INTO menu_menuitem VALUES(15,500,'/portunes/controller/create','New Controller',0,5,1);
INSERT INTO menu_menuitem VALUES(17,30,'/personnel/','User Management',0,6,1);
INSERT INTO menu_menuitem VALUES(19,10,'http://indico.tarla.org.tr','Indico',0,6,1);
INSERT INTO menu_menuitem VALUES(20,30,'http://guard.tarla.org.tr','Access Control',0,6,1);
INSERT INTO menu_menuitem VALUES(21,40,'/personnel/personnel_type/list','User Types',0,2,1);
INSERT INTO menu_menuitem VALUES(22,10,'/personnel/','Dashboard',0,2,1);
INSERT INTO menu_menuitem VALUES(23,40,'/procurement/','Procurement',0,6,1);
INSERT INTO menu_menuitem VALUES(24,500,'/procurement/','Dashboard',0,7,1);
INSERT INTO menu_menuitem VALUES(25,500,'/procurement/tender/create','İhale Oluştur',0,7,1);
INSERT INTO menu_menuitem VALUES(26,500,'/procurement/tender/list','İhaleleri Listele',0,7,1);
INSERT INTO menu_menuitem VALUES(27,500,'/procurement/tender_type/create','İhale Türü oluştur',0,7,1);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_mailbox_message` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `subject` varchar(255) NOT NULL, `message_id` varchar(255) NOT NULL, `from_header` varchar(255) NOT NULL, `to_header` text NOT NULL, `outgoing` bool NOT NULL, `body` text NOT NULL, `encoded` bool NOT NULL, `processed` datetime NOT NULL, `read` datetime NULL, `mailbox_id` integer NOT NULL REFERENCES `django_mailbox_mailbox` (`id`), `eml` varchar(100) NULL, `in_reply_to_id` integer NULL REFERENCES `django_mailbox_message` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_mailbox_messageattachment` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `headers` text NULL, `message_id` integer NULL REFERENCES `django_mailbox_message` (`id`), `document` varchar(100) NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_mailbox_mailbox` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(255) NOT NULL, `uri` varchar(255) NULL, `from_email` varchar(255) NULL, `active` bool NOT NULL, `last_polling` datetime NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `homepage_category` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `homepage_menu_item` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `url` varchar(30) NOT NULL UNIQUE, `icon` varchar(30) NOT NULL UNIQUE, `menu_type` integer NOT NULL, `top_menu_id` integer NULL REFERENCES `homepage_menu_item` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `homepage_post` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `title` varchar(30) NOT NULL UNIQUE, `text` text NULL, `keywords` varchar(200) NULL UNIQUE, `post_image` varchar(100) NULL, `status` integer NOT NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `category_id` integer NULL REFERENCES `homepage_category` (`id`), `owner_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `homepage_setting` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `value` varchar(100) NULL, `int_value` integer NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_category` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `created_date` datetime NOT NULL, `description` text NULL, `top_category_id` integer NULL REFERENCES `inventory_category` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_itemtype` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `code` integer NOT NULL, `created_date` datetime NOT NULL, `description` text NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_location` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(32) NOT NULL, `address` text NULL, `phone_number1` varchar(32) NULL, `phone_number2` varchar(32) NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_log` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `timedate` datetime NOT NULL, `action` varchar(32) NOT NULL, `description` text NULL, `item_id` integer NULL REFERENCES `inventory_item` (`id`), `user_id` integer NULL REFERENCES `personnel_personnel` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_supplier` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(32) NOT NULL, `address` text NULL, `phone_number1` varchar(32) NULL, `web` varchar(32) NULL, `notes` text NULL, `created_date` datetime NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_item_suppliers` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `item_id` integer NOT NULL REFERENCES `inventory_item` (`id`), `supplier_id` integer NOT NULL REFERENCES `inventory_supplier` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_item` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(64) NOT NULL, `brand` varchar(32) NULL, `model` varchar(32) NULL, `part_number` varchar(32) NULL, `notes` text NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL, `category_id` integer NULL REFERENCES `inventory_category` (`id`), `inventory_id` integer NULL REFERENCES `inventory_inventory` (`id`), `item_type_id` integer NULL REFERENCES `inventory_itemtype` (`id`), `user_id` integer NULL REFERENCES `personnel_personnel` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `inventory_inventory` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(32) NOT NULL, `description` text NULL, `created_date` datetime NOT NULL, `location_id` integer NULL REFERENCES `inventory_location` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `projectManager_project` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `description` text NULL, `group_id` integer NULL REFERENCES `auth_group` (`id`), `owner_id` integer NULL REFERENCES `auth_user` (`id`), `top_project_id` integer NULL REFERENCES `projectManager_project` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `projectManager_statustype` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `projectManager_tasktype` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `projectManager_task` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `start_date` datetime NOT NULL, `end_date` datetime NOT NULL, `work_hour` smallint unsigned NULL, `description` text NULL, `group_id` integer NULL REFERENCES `auth_group` (`id`), `owner_id` integer NULL REFERENCES `auth_user` (`id`), `project_id` integer NULL REFERENCES `projectManager_project` (`id`), `status_id` integer NULL REFERENCES `projectManager_statustype` (`id`), `task_type_id` integer NULL REFERENCES `projectManager_tasktype` (`id`), `top_task_id` integer NULL REFERENCES `projectManager_task` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `projectManager_comment` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `text` text NULL, `date` datetime NOT NULL, `task_id` integer NULL REFERENCES `projectManager_task` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_action_type` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `action_type` integer NOT NULL, `level` integer NOT NULL, `message` varchar(255) NOT NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_controller` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `mac` varchar(17) NOT NULL UNIQUE, `ip_address` char(39) NOT NULL UNIQUE, `health` bool NOT NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `deleted` bool NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_door` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `entrance_controller_pin` integer NOT NULL, `antipassback` bool NOT NULL, `enter` bool NOT NULL, `description` text NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `deleted` bool NOT NULL, `entrance_id` integer NULL REFERENCES `tarlaguard_controller` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_door_group` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `created_date` datetime NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_door_group_doors` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `door_group_id` integer NOT NULL REFERENCES `tarlaguard_door_group` (`id`), `door_id` integer NOT NULL REFERENCES `tarlaguard_door` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_identifier` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL, `key` varchar(255) NOT NULL UNIQUE, `is_active` bool NOT NULL, `identifier_type` integer NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_permission` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `start_date` datetime NULL, `end_date` datetime NULL, `created_date` datetime NOT NULL, `door_id` integer NULL REFERENCES `tarlaguard_door` (`id`), `personnel_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `tarlaguard_action` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `created_date` datetime NOT NULL, `deleted` bool NOT NULL, `action_type_id` integer NULL REFERENCES `tarlaguard_action_type` (`id`), `door_id` integer NULL REFERENCES `tarlaguard_door` (`id`), `identifier_id` integer NULL REFERENCES `tarlaguard_identifier` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `actionslog_logaction` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `object_id` bigint NULL, `object_pk` varchar(255) NULL, `object_repr` text NULL, `object_extra_info` text NULL, `action` smallint unsigned NULL, `action_info` text NULL, `changes` text NOT NULL, `remote_ip` char(39) NULL, `content_type_id` integer NULL REFERENCES `django_content_type` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`), `created_at` datetime NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `activity_logger_location` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `country` varchar(32) NOT NULL, `country_code` varchar(2) NOT NULL, `region` varchar(32) NOT NULL, `region_code` varchar(8) NOT NULL, `city` varchar(32) NOT NULL, `zip_code` varchar(8) NOT NULL, `latitude` real NOT NULL, `longitude` real NOT NULL, `timezone` varchar(32) NOT NULL, `isp` varchar(32) NOT NULL, `organization` varchar(32) NOT NULL, `as_name` varchar(32) NOT NULL, `created` datetime NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `activity_logger_path` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` text NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `activity_logger_entry` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `http_referer` varchar(512) NULL, `http_user_agent` text NULL, `remote_addr` varchar(40) NOT NULL, `request_method` varchar(8) NOT NULL, `created` datetime NOT NULL, `description` varchar(128) NULL, `remote_addr_is_private` bool NULL, `is_secure` bool NOT NULL, `location_id` integer NULL REFERENCES `activity_logger_location` (`id`), `path_id` integer NOT NULL REFERENCES `activity_logger_path` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `auditlog_logentry` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `object_id` bigint NULL, `object_repr` text NOT NULL, `action` smallint unsigned NOT NULL, `changes` text NOT NULL, `timestamp` datetime NOT NULL, `actor_id` integer NULL REFERENCES `auth_user` (`id`), `content_type_id` integer NOT NULL REFERENCES `django_content_type` (`id`), `remote_addr` char(39) NULL, `additional_data` text NULL, `object_pk` varchar(255) NOT NULL);
INSERT INTO auditlog_logentry VALUES(67,37,`Bilal Tonga`,1,`{\`personnel_type\`: [\`None\`, \`Firma\`], \`notes\`: [\`None\`, \`\`], \`marital_status\`: [\`1\`, \`2\`], \`address\`: [\`None\`, \`\`], \`phone_number1\`: [\`+NoneNone\`, \`\`], \`nat_id\`: [\`62\`, \`242723568322\`], \`phone_number2\`: [\`+NoneNone\`, \`\`], \`cv\`: [\`None\`, \`\`]}`,`2018-03-13 07:28:51.169370`,1,13,`127.0.0.1`,NULL,`37`);
INSERT INTO auditlog_logentry VALUES(68,3,'Bilal Tonga',1,'{\'personnel_type\': [\'Ziyaret\u00e7i\', \'Firma\'], \'created_date\': [\'2018-03-05 10:09:47.154358\', \'2018-03-05 10:09:00\']}','2018-03-13 08:55:18.207478',62,13,'5.47.85.36',NULL,'3');
INSERT INTO auditlog_logentry VALUES(69,37,'Bilal Tonga',1,'{\'personnel_type\': [\'Firma\', \'Stajyer\']}','2018-03-13 09:00:57.867354',62,13,'5.47.85.36',NULL,'37');
INSERT INTO auditlog_logentry VALUES(70,21,'Avni Aksoy',1,'{\'personnel_type\': [\'None\', \'Personel\'], \'notes\': [\'None\', \'\'], \'address\': [\'None\', \'\'], \'phone_number1\': [\'+NoneNone\', \'\'], \'phone_number2\': [\'+NoneNone\', \'\'], \'cv\': [\'None\', \'\']}','2018-03-13 09:28:52.692077',62,13,'5.47.85.36',NULL,'21');
INSERT INTO auditlog_logentry VALUES(71,5,'Firma',1,'{\'total\': [\'0\', \'1\']}','2018-03-13 09:36:05.136459',62,12,'5.47.85.36',NULL,'5');
INSERT INTO auditlog_logentry VALUES(72,1,'Personel',1,'{\'total\': [\'0\', \'2\']}','2018-03-13 09:36:05.326157',62,12,'5.47.85.36',NULL,'1');
INSERT INTO auditlog_logentry VALUES(73,6,'Stajyer',1,'{\'total\': [\'0\', \'1\']}','2018-03-13 09:36:05.450852',62,12,'5.47.85.36',NULL,'6');
INSERT INTO auditlog_logentry VALUES(74,3,'Ziyaretçi',1,'{\'total\': [\'1\', \'0\']}','2018-03-13 09:36:05.578719',62,12,'5.47.85.36',NULL,'3');
INSERT INTO auditlog_logentry VALUES(75,37,'Bilal Tonga',1,'{\'personnel_type\': [\'Stajyer\', \'Firma\']}','2018-03-13 09:36:43.661150',62,13,'5.47.85.36',NULL,'37');
INSERT INTO auditlog_logentry VALUES(76,5,'Firma',1,'{\'total\': [\'1\', \'2\']}','2018-03-13 09:36:57.554512',62,12,'5.47.85.36',NULL,'5');
INSERT INTO auditlog_logentry VALUES(77,6,'Stajyer',1,'{\'total\': [\'1\', \'0\']}','2018-03-13 09:36:57.794311',62,12,'5.47.85.36',NULL,'6');
INSERT INTO auditlog_logentry VALUES(78,3,'Creworker Software',1,'{\'birth_date\': [\'2018-05-03\', \'1990-05-03\'], \'surname\': [\'Tonga\', \'Software\'], \'name\': [\'Bilal\', \'Creworker\']}','2018-03-13 09:37:40.796296',62,13,'5.47.85.36',NULL,'3');
INSERT INTO auditlog_logentry VALUES(79,3,'Creworker Software',1,'{\'nat_id\': [\'24272356832\', \'777\']}','2018-03-13 09:38:25.781132',62,13,'5.47.85.36',NULL,'3');
INSERT INTO auditlog_logentry VALUES(80,37,'Bilal Tonga',1,'{\'phone_number1\': [\'\', \'None\'], \'health_status\': [\'\', \'EngCV- Bilal Tonga.pdf\'], \'phone_number2\': [\'\', \'None\']}','2018-03-22 06:54:07.570728',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(81,37,'Bilal Tonga',1,'{\'profile_picture\': [\'profile_pictures/profile.png\', \'5047295.jpg\']}','2018-03-22 06:54:39.271574',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(82,37,'Bilal Tonga',1,'{\'health_status\': [\'health_status/EngCV-_Bilal_Tonga.pdf\', \'\']}','2018-03-22 06:56:16.643182',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(83,37,'Bilal Tonga',1,'{\'profile_picture\': [\'profile_pictures/5047295_hVC0HTo.jpg\', \'1_Gardening-set-Moulin-Roty-at-Couverture_botanist_garden_kids_children_little_gatherer_0.jpg\']}','2018-03-22 07:34:09.311440',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(84,37,'Bilal Tonga',1,'{\'profile_picture\': [\'profile_pictures/5047295_hVC0HTo.jpg\', \'1_Gardening-set-Moulin-Roty-at-Couverture_botanist_garden_kids_children_little_gatherer_0.jpg\']}','2018-03-22 07:34:40.037531',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(85,37,'Bilal Tonga',1,'{\'profile_picture\': [\'media/profile_picture/37.jpg\', \'14100397_10157376246210022_6385461868002220112_n.jpg\']}','2018-03-22 07:35:32.027789',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(86,37,'Bilal Tonga',1,'{\'profile_picture\': [\'profile_picture/37.jpg\', \'14125114_1113151898771808_2017522823294331847_o.jpg\']}','2018-03-22 07:35:57.037644',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(87,37,'Bilal Tonga',1,'{\'profile_picture\': [\'profile_pictures/37.jpg\', \'14125114_1113151898771808_2017522823294331847_o.jpg\']}','2018-03-22 07:37:07.983881',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(88,37,'Bilal Tonga',1,'{\'health_status\': [\'\', \'CV-Europass-20170615-Tonga-EN.pdf\'], \'profile_picture\': [\'profile_pictures/242723568322.jpg\', \'5047295.jpg\']}','2018-03-22 07:40:06.892811',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(89,37,'Bilal Tonga',1,'{\'user_file\': [\'\', \'EngCV- Bilal Tonga.pdf\']}','2018-03-22 07:40:32.050864',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(90,37,'BilalöşçşI Tonga',1,'{\'name\': [\'Bilal\', \'Bilal\u00f6\u015f\u00e7\u015fI\']}','2018-03-22 08:23:22.629576',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(91,37,'Bilal Tonga',1,'{\'name\': [\'Bilal\u00f6\u015f\u00e7\u015fI\', \'Bilal\']}','2018-03-22 08:23:36.308600',1,13,'127.0.0.1',NULL,'37');
INSERT INTO auditlog_logentry VALUES(92,3,'Creworker Software',1,'{\'profile_picture\': [\'profile_pictures/5047295_tCXYJrI.jpg\', \'946844_10152795191230022_1391587241_n.jpg\']}','2018-03-22 09:44:18.714326',1,13,'127.0.0.1',NULL,'3');
INSERT INTO auditlog_logentry VALUES(93,24,'Ahmet Başaran',1,'{\'phone_number1\': [\'\', \'None\'], \'phone_number2\': [\'\', \'None\'], \'surname\': [\'Basaran\', \'Ba\u015faran\']}','2018-03-22 10:24:47.296140',1,13,'127.0.0.1',NULL,'24');
INSERT INTO auditlog_logentry VALUES(94,35,'Ayhan Aydın',1,'{\'personnel_type\': [\'None\', \'Personel\'], \'notes\': [\'None\', \'\'], \'cv\': [\'None\', \'\'], \'address\': [\'None\', \'\']}','2018-03-22 11:44:20.970600',1,13,'127.0.0.1',NULL,'35');
INSERT INTO auditlog_logentry VALUES(95,1,'Personel',1,'{\'total\': [\'2\', \'3\']}','2018-03-22 11:44:25.969989',1,12,'127.0.0.1',NULL,'1');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_currency` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `short_name` varchar(5) NOT NULL, `created_date` datetime NOT NULL, `description` text NULL);
INSERT INTO procurement_currency VALUES(8,`Türk Lirası`,``,`2018-03-10 09:21:56.798659`,NULL);
INSERT INTO procurement_currency VALUES(10,'Euro','','2018-03-10 09:21:56.864882',NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_log` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `timedate` datetime NOT NULL, `action` varchar(32) NOT NULL, `description` text NULL, `item_id` integer NULL REFERENCES `procurement_tender` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_tenderstatus` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `created_date` datetime NOT NULL, `description` text NULL, `bgcolor` varchar(10) NOT NULL);
INSERT INTO procurement_tenderstatus VALUES(7,`Ödeme Emri   Strateji Onayı`,`2018-03-10 09:21:56.808182`,NULL,``);
INSERT INTO procurement_tenderstatus VALUES(8,'Bap- İlgili memurda','2018-03-10 09:21:56.846697',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(9,'İhalesi yapıldı','2018-03-10 09:21:56.866926',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(10,'İhalesi Yapıldı-Faturası Ödendi','2018-03-10 09:21:56.876851',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(11,'Onay','2018-03-10 09:21:56.927269',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(12,'Ödeme Emri','2018-03-10 09:21:56.936201',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(13,'Ödeme Emri Strateji Onayı','2018-03-10 09:21:56.946117',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(14,' Ödeme Emri Strateji Onayı','2018-03-10 09:21:56.955873',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(15,'İhalesi Yapıldı','2018-03-10 09:21:56.975290',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(16,'İhalesi Yapıldı-İPTAL EDİLDİ','2018-03-10 09:21:57.004766',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(17,'Akreditif Ödeme Emri Strateji Onayı','2018-03-10 09:21:57.172918',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(19,' Ödeme Emri','2018-03-10 09:21:57.216089',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(20,'İhalesi Yapıldı-Faturası ödendi','2018-03-10 09:21:57.251747',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(21,'İhale iptal edildi','2018-03-10 09:21:57.277402',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(22,'Ödeme Emri  ','2018-03-10 09:21:57.295851',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(23,'İhalesi Yapıldı-İhale iptali istendi','2018-03-10 09:21:57.393184',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(24,'Onayı alındı-İhalesi Yapılacak','2018-03-10 09:21:57.493334',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(25,'Avansla alındı- Mahsup Ödeme Emri','2018-03-10 09:21:57.556758',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(26,'Onayı alındı-Ödemesi yapıldı','2018-03-10 09:21:57.630164',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(27,'İhalesi Yapıldı-Faturası  ödendi','2018-03-10 09:21:57.856940',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(28,'ihale iptal edildi','2018-03-10 09:21:57.945714',NULL,'');
INSERT INTO procurement_tenderstatus VALUES(29,'Harcama Talimatı','2018-03-10 09:21:58.006799',NULL,'');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_tender_end_date` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `timedate` date NOT NULL, `tender_id` integer NULL REFERENCES `procurement_tender` (`id`), `notify` bool NOT NULL);
INSERT INTO procurement_tender_end_date VALUES(2,`2018-03-22`,NULL,1);
INSERT INTO procurement_tender_end_date VALUES(3,'2018-03-31',NULL,1);
INSERT INTO procurement_tender_end_date VALUES(4,'2018-06-03',NULL,1);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `testapp_customer` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(200) NOT NULL, `information` text NOT NULL, `email` varchar(254) NOT NULL, `image` varchar(100) NOT NULL, `cropping` varchar(255) NOT NULL, `color` varchar(10) NOT NULL, `date` date NOT NULL, `time` time NOT NULL, `datetime` datetime NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `testapp_autor` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(200) NOT NULL);
INSERT INTO testapp_autor VALUES(1,`dsfsd`);
INSERT INTO testapp_autor VALUES(2,'asdasda');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `testapp_invoice` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `registered` bool NOT NULL, `sent` bool NOT NULL, `paid` bool NOT NULL, `date` datetime NOT NULL, `invoice_number` varchar(50) NOT NULL, `description1` text NOT NULL, `description2` text NOT NULL, `subtotal` varchar(200) NOT NULL, `subtotal_iva` varchar(200) NOT NULL, `subtotal_retentions` varchar(200) NOT NULL, `total` varchar(200) NOT NULL, `customer_id` integer NOT NULL REFERENCES `testapp_customer` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `testapp_line` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `reference` varchar(200) NOT NULL, `concept` varchar(200) NOT NULL, `quantity` varchar(200) NOT NULL, `unit` varchar(200) NOT NULL, `unit_price` varchar(200) NOT NULL, `amount` varchar(200) NOT NULL, `invoice_id` integer NOT NULL REFERENCES `testapp_invoice` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `testapp_addresses` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `address` varchar(100) NOT NULL, `city` varchar(100) NOT NULL, `autor_id` integer NOT NULL REFERENCES `testapp_autor` (`id`), `status` bool NOT NULL);
INSERT INTO testapp_addresses VALUES(1,`fdsfsd`,`sdfdsfsd`,1,1);
INSERT INTO testapp_addresses VALUES(2,'asdasd','asdasd',2,1);
INSERT INTO testapp_addresses VALUES(3,'sadasd','asdasd',2,1);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `csvimport_importmodel` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `numeric_id` integer unsigned NOT NULL, `natural_key` varchar(100) NOT NULL, `csvimport_id` integer NOT NULL REFERENCES `csvimport_csvimport` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_tendertype` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `code` varchar(10) NOT NULL, `created_date` datetime NOT NULL, `description` text NULL, `name` varchar(50) NOT NULL);
INSERT INTO procurement_tendertype VALUES(12,`TSHZ`,`2018-03-10 09:21:56.795625`,``,`Hizmet`);
INSERT INTO procurement_tendertype VALUES(13,'TSRF','2018-03-10 09:21:56.819946','','Sarf');
INSERT INTO procurement_tendertype VALUES(14,'TSDN','2018-03-10 09:21:56.831592','','Donanım');
INSERT INTO procurement_tendertype VALUES(15,'TSBO','2018-03-10 09:21:56.893388','','Bakım Onarım');
INSERT INTO procurement_tendertype VALUES(16,'TSYZ','2018-03-10 09:21:57.084929','','Yazılım');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `csvimport_csvimport` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `model_name` varchar(255) NOT NULL, `field_list` text NOT NULL, `file_name` varchar(255) NOT NULL, `encoding` varchar(32) NOT NULL, `upload_method` varchar(50) NOT NULL, `error_log` text NOT NULL, `import_date` date NOT NULL, `import_user` varchar(255) NOT NULL, `upload_file` varchar(100) NOT NULL);
INSERT INTO csvimport_csvimport VALUES(1,`procurement.tender`,``,`csv/sartname.csv`,``,`manual`,`Mapping from first, header, row of CSV file
row 1: Column auction_price = 36755,82 is not a number so is set to 0
row 5: Column auction_price = 289987,42 is not a number so is set to 0
row 7: Column auction_price = 3140000+kdv is not a number so is set to 0
row 11: Column approximate_price = 1365046,8 is not a number so is set to 0
row 16: Column auction_price = 113900+KDV is not a number so is set to 0
row 30: Column approximate_price = 29151,2 is not a number so is set to 0
row 37: Column auction_price = 6690,6 is not a number so is set to 0
row 38: Column auction_price = 306013,94 is not a number so is set to 0
row 40: Column approximate_price = 265578,33 is not a number so is set to 0
row 42: Column approximate_price = 73985,54 is not a number so is set to 0
row 42: Column auction_price = 83655,61 is not a number so is set to 0
row 47: Column auction_price = 33000+kdv is not a number so is set to 0
row 48: Column approximate_price = 4947660,08 is not a number so is set to 0
row 55: Column approximate_price = 246812,5 is not a number so is set to 0
row 56: Column auction_price = 61542,9 is not a number so is set to 0
row 58: Column auction_price = 545000+KDV is not a number so is set to 0
row 61: Column approximate_price = 96077,83 is not a number so is set to 0
row 62: Column approximate_price = 108382,82 is not a number so is set to 0
row 63: Column auction_price = 211864,4 is not a number so is set to 0
row 64: Column auction_price = 31000+kdv is not a number so is set to 0
row 65: Column approximate_price = 2311859,44 is not a number so is set to 0
row 67: Column auction_price = 49000+KDV is not a number so is set to 0
row 68: Column auction_price = 48500+KDV is not a number so is set to 0
row 69: Column auction_price = 40000+KDV is not a number so is set to 0
row 70: Column auction_price = 50000+KDV is not a number so is set to 0
row 72: Column auction_price = 42300+KDV is not a number so is set to 0
row 73: Column auction_price = 44000+KDV is not a number so is set to 0
row 74: Column auction_price = 35000+KDV is not a number so is set to 0
row 75: Column approximate_price = 33805,13 is not a number so is set to 0
row 75: Column auction_price = 46500+ KDV is not a number so is set to 0
row 77: Column auction_price = 38850+KDV is not a number so is set to 0
row 78: Column auction_price = 45620+ KDV is not a number so is set to 0
row 81: Column approximate_price = 31623,82 is not a number so is set to 0
row 82: Column approximate_price = 5629,52 is not a number so is set to 0
row 83: Column auction_price = 44650+KDV is not a number so is set to 0
row 86: Column auction_price = 40000+KDV is not a number so is set to 0
row 87: Column auction_price = 40627,4+KDV is not a number so is set to 0
row 89: Column approximate_price = 444306,91 is not a number so is set to 0
row 91: Column approximate_price = 49996,6 is not a number so is set to 0
row 91: Column auction_price = 35000+KDV is not a number so is set to 0
row 92: Column auction_price = 50000+KDV is not a number so is set to 0
row 94: Column approximate_price = 809878,03 is not a number so is set to 0
row 94: Column auction_price = 491130+KDV is not a number so is set to 0
row 95: Column auction_price = 53500+KDV is not a number so is set to 0
row 96: Column auction_price = 32250+KDV is not a number so is set to 0
row 97: Column auction_price = 54850+KDV is not a number so is set to 0
row 98: Column auction_price = 55084+KDV is not a number so is set to 0
row 99: Column auction_price = 16500+KDV is not a number so is set to 0
row 100: Column auction_price = 56500+KDV is not a number so is set to 0
row 101: Column auction_price = 55100+KDV is not a number so is set to 0
row 102: Column auction_price = 51694+KDV is not a number so is set to 0
row 103: Column auction_price = 25423+KDV is not a number so is set to 0
row 104: Column auction_price = 47450+KDV is not a number so is set to 0
row 105: Column auction_price = 26500+KDV is not a number so is set to 0
row 106: Column auction_price = 43500+KDV is not a number so is set to 0
row 108: Column auction_price = 50700+KDV is not a number so is set to 0
row 110: Column approximate_price = 959528,97 is not a number so is set to 0
row 112: Column auction_price = 52000+KDV is not a number so is set to 0
row 113: Column auction_price = 55000+KDV is not a number so is set to 0
row 116: Column auction_price = 40000+KDV is not a number so is set to 0
row 118: Column approximate_price = 236829,97 is not a number so is set to 0
row 119: Column auction_price = 175000+KDV is not a number so is set to 0
row 120: Column auction_price = 33600+KDV is not a number so is set to 0
row 122: Column approximate_price = 56979,25 is not a number so is set to 0
row 122: Column auction_price = 50800+KDV is not a number so is set to 0
Imported 123 rows to Tender`,`2018-03-10`,`bilal`,`csv/sartname.csv`);
INSERT INTO csvimport_csvimport VALUES(2,'procurement.supplier','','csv/supplier.csv','','manual','Mapping from first, header, row of CSV file
Imported 71 rows to Supplier','2018-03-10','bilal','csv/supplier.csv');
INSERT INTO csvimport_csvimport VALUES(3,'procurement.tender','','csv/sartname2017.csv','','manual','Mapping from first, header, row of CSV file
row 1: Column auction_price = 36755,82 is not a number so is set to 0
row 5: Column auction_price = 289987,42 is not a number so is set to 0
row 7: Column auction_price = 3140000+kdv is not a number so is set to 0
row 11: Column approximate_price = 1365046,8 is not a number so is set to 0
row 16: Column auction_price = 113900+KDV is not a number so is set to 0
row 30: Column approximate_price = 29151,2 is not a number so is set to 0
row 37: Column auction_price = 6690,6 is not a number so is set to 0
row 38: Column auction_price = 306013,94 is not a number so is set to 0
row 40: Column approximate_price = 265578,33 is not a number so is set to 0
row 42: Column approximate_price = 73985,54 is not a number so is set to 0
row 42: Column auction_price = 83655,61 is not a number so is set to 0
row 47: Column auction_price = 33000+kdv is not a number so is set to 0
row 48: Column approximate_price = 4947660,08 is not a number so is set to 0
row 55: Column approximate_price = 246812,5 is not a number so is set to 0
row 56: Column auction_price = 61542,9 is not a number so is set to 0
row 58: Column auction_price = 545000+KDV is not a number so is set to 0
row 61: Column approximate_price = 96077,83 is not a number so is set to 0
row 62: Column approximate_price = 108382,82 is not a number so is set to 0
row 63: Column auction_price = 211864,4 is not a number so is set to 0
row 64: Column auction_price = 31000+kdv is not a number so is set to 0
row 65: Column approximate_price = 2311859,44 is not a number so is set to 0
row 67: Column auction_price = 49000+KDV is not a number so is set to 0
row 68: Column auction_price = 48500+KDV is not a number so is set to 0
row 69: Column auction_price = 40000+KDV is not a number so is set to 0
row 70: Column auction_price = 50000+KDV is not a number so is set to 0
row 72: Column auction_price = 42300+KDV is not a number so is set to 0
row 73: Column auction_price = 44000+KDV is not a number so is set to 0
row 74: Column auction_price = 35000+KDV is not a number so is set to 0
row 75: Column approximate_price = 33805,13 is not a number so is set to 0
row 75: Column auction_price = 46500+ KDV is not a number so is set to 0
row 77: Column auction_price = 38850+KDV is not a number so is set to 0
row 78: Column auction_price = 45620+ KDV is not a number so is set to 0
row 81: Column approximate_price = 31623,82 is not a number so is set to 0
row 82: Column approximate_price = 5629,52 is not a number so is set to 0
row 83: Column auction_price = 44650+KDV is not a number so is set to 0
row 86: Column auction_price = 40000+KDV is not a number so is set to 0
row 87: Column auction_price = 40627,4+KDV is not a number so is set to 0
row 89: Column approximate_price = 444306,91 is not a number so is set to 0
row 91: Column approximate_price = 49996,6 is not a number so is set to 0
row 91: Column auction_price = 35000+KDV is not a number so is set to 0
row 92: Column auction_price = 50000+KDV is not a number so is set to 0
row 94: Column approximate_price = 809878,03 is not a number so is set to 0
row 94: Column auction_price = 491130+KDV is not a number so is set to 0
row 95: Column auction_price = 53500+KDV is not a number so is set to 0
row 96: Column auction_price = 32250+KDV is not a number so is set to 0
row 97: Column auction_price = 54850+KDV is not a number so is set to 0
row 98: Column auction_price = 55084+KDV is not a number so is set to 0
row 99: Column auction_price = 16500+KDV is not a number so is set to 0
row 100: Column auction_price = 56500+KDV is not a number so is set to 0
row 101: Column auction_price = 55100+KDV is not a number so is set to 0
row 102: Column auction_price = 51694+KDV is not a number so is set to 0
row 103: Column auction_price = 25423+KDV is not a number so is set to 0
row 104: Column auction_price = 47450+KDV is not a number so is set to 0
row 105: Column auction_price = 26500+KDV is not a number so is set to 0
row 106: Column auction_price = 43500+KDV is not a number so is set to 0
row 108: Column auction_price = 50700+KDV is not a number so is set to 0
row 110: Column approximate_price = 959528,97 is not a number so is set to 0
row 112: Column auction_price = 52000+KDV is not a number so is set to 0
row 113: Column auction_price = 55000+KDV is not a number so is set to 0
row 116: Column auction_price = 40000+KDV is not a number so is set to 0
row 118: Column approximate_price = 236829,97 is not a number so is set to 0
row 119: Column auction_price = 175000+KDV is not a number so is set to 0
row 120: Column auction_price = 33600+KDV is not a number so is set to 0
row 122: Column approximate_price = 56979,25 is not a number so is set to 0
row 122: Column auction_price = 50800+KDV is not a number so is set to 0
Imported 123 rows to Tender','2018-03-10','bilal','csv/sartname2017.csv');
INSERT INTO csvimport_csvimport VALUES(4,'procurement.tender','','csv/sartname2017_B7yUYtz.csv','','manual','Mapping from first, header, row of CSV file
row 1: Column auction_price = 36755,82 is not a number so is set to 0
row 5: Column auction_price = 289987,42 is not a number so is set to 0
row 11: Column approximate_price = 1365046,8 is not a number so is set to 0
row 30: Column approximate_price = 29151,2 is not a number so is set to 0
row 37: Column auction_price = 6690,6 is not a number so is set to 0
row 38: Column auction_price = 306013,94 is not a number so is set to 0
row 40: Column approximate_price = 265578,33 is not a number so is set to 0
row 42: Column approximate_price = 73985,54 is not a number so is set to 0
row 42: Column auction_price = 83655,61 is not a number so is set to 0
row 48: Column approximate_price = 4947660,08 is not a number so is set to 0
row 55: Column approximate_price = 246812,5 is not a number so is set to 0
row 56: Column auction_price = 61542,9 is not a number so is set to 0
row 61: Column approximate_price = 96077,83 is not a number so is set to 0
row 62: Column approximate_price = 108382,82 is not a number so is set to 0
row 63: Column auction_price = 211864,4 is not a number so is set to 0
row 65: Column approximate_price = 2311859,44 is not a number so is set to 0
row 67: Column auction_price = 49000+KDV is not a number so is set to 0
row 75: Column approximate_price = 33805,13 is not a number so is set to 0
row 75: Column auction_price = 46500+ KDV is not a number so is set to 0
row 81: Column approximate_price = 31623,82 is not a number so is set to 0
row 82: Column approximate_price = 5629,52 is not a number so is set to 0
row 87: Column auction_price = 40627,4 is not a number so is set to 0
row 89: Column approximate_price = 444306,91 is not a number so is set to 0
row 91: Column approximate_price = 49996,6 is not a number so is set to 0
row 92: Column auction_price = 50000+KDV is not a number so is set to 0
row 94: Column approximate_price = 809878,03 is not a number so is set to 0
row 94: Column auction_price = 491130+KDV is not a number so is set to 0
row 105: Column auction_price = 26500+KDV is not a number so is set to 0
row 106: Column auction_price = 43500+KDV is not a number so is set to 0
row 110: Column approximate_price = 959528,97 is not a number so is set to 0
row 118: Column approximate_price = 236829,97 is not a number so is set to 0
row 122: Column approximate_price = 56979,25 is not a number so is set to 0
row 122: Column auction_price = 50800+KDV is not a number so is set to 0
Imported 123 rows to Tender','2018-03-10','bilal','csv/sartname2017_B7yUYtz.csv');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_supplier` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `address` text NULL, `phone_number1` varchar(32) NULL, `web` varchar(32) NULL, `notes` text NULL, `created_date` datetime NOT NULL, `name` varchar(32) NOT NULL UNIQUE);
INSERT INTO procurement_supplier VALUES(86,NULL,NULL,NULL,NULL,`2018-03-10 09:21:56.813873`,`Enomak `);
INSERT INTO procurement_supplier VALUES(87,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.826391','Üçtuğ Müh. Turz.');
INSERT INTO procurement_supplier VALUES(88,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.837824','Giz Teknoloji');
INSERT INTO procurement_supplier VALUES(89,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.849189','');
INSERT INTO procurement_supplier VALUES(90,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.858973','3A Kapı Sistemleri
Ürn.İnş.Elk.San.ve Tic.Ltd.Şti.');
INSERT INTO procurement_supplier VALUES(91,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.869327','Cosylab Control System Laboratory');
INSERT INTO procurement_supplier VALUES(92,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.879002','TeknoPark');
INSERT INTO procurement_supplier VALUES(93,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.888750','Koçoğlu');
INSERT INTO procurement_supplier VALUES(94,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.898975','ARES');
INSERT INTO procurement_supplier VALUES(95,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.909602','TCS Makina-Hırdavat');
INSERT INTO procurement_supplier VALUES(96,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.919895','Info Power');
INSERT INTO procurement_supplier VALUES(97,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.929399','Desy');
INSERT INTO procurement_supplier VALUES(98,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.938371','Zenotek');
INSERT INTO procurement_supplier VALUES(99,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.948619','LFC');
INSERT INTO procurement_supplier VALUES(100,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.958073','Ertsan  Endüstriyel (fayans+batarya yapılacak)');
INSERT INTO procurement_supplier VALUES(101,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.967791','Barış Isıtma-Soğutma');
INSERT INTO procurement_supplier VALUES(102,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.977634','SPARK');
INSERT INTO procurement_supplier VALUES(103,NULL,NULL,NULL,NULL,'2018-03-10 09:21:56.987676','OPTOMEK');
INSERT INTO procurement_supplier VALUES(104,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.007021','Kenar Mühendislik');
INSERT INTO procurement_supplier VALUES(105,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.016616','Rohde & Schwarz Elektronik ve Telekomünikasyon Sistemleri ');
INSERT INTO procurement_supplier VALUES(106,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.056127','Ares');
INSERT INTO procurement_supplier VALUES(107,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.064579','Üçtuğ');
INSERT INTO procurement_supplier VALUES(108,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.089696','ADESİS');
INSERT INTO procurement_supplier VALUES(109,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.098122','Olca');
INSERT INTO procurement_supplier VALUES(110,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.107197','Özdemir');
INSERT INTO procurement_supplier VALUES(111,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.123776','Öztürk Medikal  Oguz Öztürk 0312 230 01 75 ');
INSERT INTO procurement_supplier VALUES(112,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.132199','Vorterks');
INSERT INTO procurement_supplier VALUES(113,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.140417','SAAS Gmbh');
INSERT INTO procurement_supplier VALUES(114,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.157821','Metsim');
INSERT INTO procurement_supplier VALUES(115,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.166464','Sem Bio');
INSERT INTO procurement_supplier VALUES(116,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.174973','A.Ü. BAP LAURIN AG');
INSERT INTO procurement_supplier VALUES(117,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.183254','NEASPEC GmbH');
INSERT INTO procurement_supplier VALUES(118,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.191653','ZENOTEK');
INSERT INTO procurement_supplier VALUES(119,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.209531','AMPTEK INC.');
INSERT INTO procurement_supplier VALUES(120,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.218134','Mettler Toledo');
INSERT INTO procurement_supplier VALUES(121,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.226507','BİLGİBİM BİLGİSAYAR ');
INSERT INTO procurement_supplier VALUES(122,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.235645','Linda Grup');
INSERT INTO procurement_supplier VALUES(123,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.244057','Barış Isıtma');
INSERT INTO procurement_supplier VALUES(124,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.253661','OLCA Enerji ');
INSERT INTO procurement_supplier VALUES(125,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.262506','Spektra');
INSERT INTO procurement_supplier VALUES(126,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.270956','OZAY Grup');
INSERT INTO procurement_supplier VALUES(127,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.288725','Airliquide');
INSERT INTO procurement_supplier VALUES(128,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.298378','OTKON Mühendislik');
INSERT INTO procurement_supplier VALUES(129,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.308436','ERBAYGES');
INSERT INTO procurement_supplier VALUES(130,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.356185','EMK');
INSERT INTO procurement_supplier VALUES(131,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.365743','Gönülsan');
INSERT INTO procurement_supplier VALUES(132,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.375591','MEGA');
INSERT INTO procurement_supplier VALUES(133,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.395696','Ferrite Microwave Technologies
');
INSERT INTO procurement_supplier VALUES(134,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.414838','Iradets');
INSERT INTO procurement_supplier VALUES(135,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.424219','HVP');
INSERT INTO procurement_supplier VALUES(136,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.433808','Özdemir Petrol');
INSERT INTO procurement_supplier VALUES(137,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.533900','ATAG MAKİNE');
INSERT INTO procurement_supplier VALUES(138,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.546959','RATEST');
INSERT INTO procurement_supplier VALUES(139,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.657244','Tehnocenter');
INSERT INTO procurement_supplier VALUES(140,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.715845','Hiden Analytical');
INSERT INTO procurement_supplier VALUES(141,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.738196','Boğaziçi Yazılım');
INSERT INTO procurement_supplier VALUES(142,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.771340','Rohde&Schwarz');
INSERT INTO procurement_supplier VALUES(143,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.779756','Nanomanyetik Cihazlar');
INSERT INTO procurement_supplier VALUES(144,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.788384','HAKTAN Grup');
INSERT INTO procurement_supplier VALUES(145,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.815312','AKTUG (Mustafa Bey: 0532 176 58 79)');
INSERT INTO procurement_supplier VALUES(146,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.832855','LİNDA');
INSERT INTO procurement_supplier VALUES(147,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.841453','FİGES');
INSERT INTO procurement_supplier VALUES(148,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.858898','MET Isıtma');
INSERT INTO procurement_supplier VALUES(149,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.867320','OLCA');
INSERT INTO procurement_supplier VALUES(150,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.875959','SİSTEK');
INSERT INTO procurement_supplier VALUES(151,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.887296','Cryotherm');
INSERT INTO procurement_supplier VALUES(152,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.896757','Creworker -Bilal Tonga');
INSERT INTO procurement_supplier VALUES(153,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.930623','Elysium');
INSERT INTO procurement_supplier VALUES(154,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.990889','Croyocan');
INSERT INTO procurement_supplier VALUES(155,NULL,NULL,NULL,NULL,'2018-03-10 09:21:57.999718','Özerbey');
INSERT INTO procurement_supplier VALUES(156,NULL,NULL,NULL,NULL,'2018-03-10 09:21:58.017144','Yıldırım');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_action_type` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `action_type` integer NOT NULL, `level` integer NOT NULL, `message` varchar(255) NOT NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL);
INSERT INTO portunes_action_type VALUES(1,1,2,`Enter`,`2017-06-13 09:46:00`,0);
INSERT INTO portunes_action_type VALUES(2,2,2,'Exit','2017-06-13 09:46:00',0);
INSERT INTO portunes_action_type VALUES(3,3,4,'Undefined Card','2017-06-13 09:46:00',0);
INSERT INTO portunes_action_type VALUES(4,4,4,'Permission Denied','2017-06-13 09:46:00',0);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_controller` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `mac` varchar(17) NOT NULL UNIQUE, `ip_address` char(39) NOT NULL UNIQUE, `health` bool NOT NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `deleted` bool NOT NULL);
INSERT INTO portunes_controller VALUES(1,`ACP11 | H BLOK - ATÖLYE`,`00:08:EE:A9:1D:BF`,`192.168.2.111`,0,`2017-06-06 10:12:43`,`2018-03-19 12:59:17.712000`,0);
INSERT INTO portunes_controller VALUES(2,'ACP08 | F BLOK - TRAFO','00:08:EE:5F:CF:29','192.168.2.108',0,'2017-06-06 10:13:35','2018-03-19 12:59:20.712000',0);
INSERT INTO portunes_controller VALUES(6,'ACP10 | D BLOK - SU SOĞUTMA','00:08:EE:3D:62:B9','192.168.2.110',0,'2017-06-06 10:40:58','2018-03-19 12:59:23.711000',0);
INSERT INTO portunes_controller VALUES(7,'ACP02 | C006 - LAB. GİRİŞ','00:08:EE:1C:5B:A6','192.168.2.102',0,'2017-06-06 10:41:21','2018-03-19 12:59:26.711000',0);
INSERT INTO portunes_controller VALUES(8,'ACP01 | C013 - PANO ODASI','00:08:EE:72:6C:FB','192.168.2.101',1,'2017-06-06 10:41:00','2018-03-21 12:40:45.906097',0);
INSERT INTO portunes_controller VALUES(9,'ACP05 | C108 - NETWORK ODASI','00:08:EE:ED:2B:79','192.168.2.105',0,'2017-06-06 10:42:37','2018-03-19 12:59:32.711000',0);
INSERT INTO portunes_controller VALUES(10,'ACP06 | C107 - ÇATI TEL ÖRGÜ','00:08:EE:65:8F:0A','192.168.2.106',0,'2017-06-06 10:43:10','2018-03-19 12:59:35.711000',0);
INSERT INTO portunes_controller VALUES(11,'ACP03 | C004 - BREMSSTRAHLUNG','00:08:EE:E6:33:B4','192.168.2.103',0,'2017-06-06 10:43:31','2018-03-19 12:59:38.712000',0);
INSERT INTO portunes_controller VALUES(12,'ACP13 | B008 - SİSTEM ODASI','00:08:EE:CB:AA:14','192.168.2.113',0,'2017-06-06 10:43:50','2018-03-19 12:59:41.711000',0);
INSERT INTO portunes_controller VALUES(13,'ACP14 | A002 - DANIŞMA','00:08:EE:8B:E0:17','192.168.2.114',0,'2017-06-06 10:44:07','2018-03-19 12:59:44.711000',0);
INSERT INTO portunes_controller VALUES(14,'ACP15 | B108 - MİSAFİRHANE','00:08:EE:AA:5A','192.168.2.115',1,'2017-06-06 10:44:23','2018-03-19 12:59:44.737000',0);
INSERT INTO portunes_controller VALUES(15,'ACP12 | BZ02 - KAZAN DAİRESİ','00:08:EE:D4:38:0B','192.168.2.112',0,'2017-06-06 10:44:41','2018-03-19 12:59:47.735000',0);
INSERT INTO portunes_controller VALUES(16,'ACP04 | C014 - HELYUM','00:08:EE:C4:22:BC','192.168.2.104',0,'2017-06-19 08:45:43','2018-03-19 12:59:50.735000',0);
INSERT INTO portunes_controller VALUES(17,'ACP07 | C202 - HAVALANDIRMA','00:08:EE:CD:4B:0B','192.168.2.107',0,'2017-06-19 12:55:27','2018-03-19 12:59:53.735000',0);
INSERT INTO portunes_controller VALUES(18,'ACP09 | E BLOK - GÜVENLİK','00:08:EE:29:18:2D','192.168.2.109',0,'2017-06-19 12:57:42','2018-03-19 12:59:56.736000',0);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_door` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `entrance_controller_pin` integer NOT NULL, `antipassback` bool NOT NULL, `enter` bool NOT NULL, `description` text NULL, `created_date` datetime NOT NULL, `updated_date` datetime NOT NULL, `deleted` bool NOT NULL, `entrance_id` integer NULL REFERENCES `portunes_controller` (`id`));
INSERT INTO portunes_door VALUES(1,`I-KA-KT Kontamine Odası`,1,0,1,``,`2017-06-06 10:49:51`,`2017-07-12 12:55:40.727000`,0,1);
INSERT INTO portunes_door VALUES(2,'Hurdalık',2,0,1,'','2017-06-06 10:50:06','2017-07-11 13:31:44.022000',0,1);
INSERT INTO portunes_door VALUES(3,'H001-A Depo Kapısı',3,0,1,'','2017-06-06 10:50:16','2017-07-11 14:45:42.037000',0,1);
INSERT INTO portunes_door VALUES(4,'H-KA-AT1 Atölye Giriş Kapısı',4,0,1,'','2017-06-06 10:50:26','2017-07-11 14:46:44.878000',0,1);
INSERT INTO portunes_door VALUES(5,'H-KA-AT2 Atölye Seksiyonel Kap',5,0,1,'','2017-06-06 10:50:38','2017-07-11 14:47:10.575000',0,1);
INSERT INTO portunes_door VALUES(6,'F-KA-TR1',1,0,1,'','2017-06-06 10:50:49','2017-07-11 14:45:12.331000',0,2);
INSERT INTO portunes_door VALUES(7,'F-KA-TR3',2,0,1,'','2017-06-06 10:51:02','2017-07-11 14:45:08.387000',0,2);
INSERT INTO portunes_door VALUES(8,'F-KA-TR2',3,0,1,'','2017-06-06 10:51:11','2017-07-11 14:45:04.237000',0,2);
INSERT INTO portunes_door VALUES(9,'F-KA-TR4',4,0,1,'','2017-06-06 10:51:22','2017-07-11 14:44:59.933000',0,2);
INSERT INTO portunes_door VALUES(10,'F-KA-HC2 Hücre Odası 2',5,0,1,'','2017-06-06 10:51:36','2017-07-11 14:44:56.107000',0,2);
INSERT INTO portunes_door VALUES(11,'F-KA-AG Pano Odası',6,0,1,'','2017-06-06 10:51:47','2017-07-11 14:44:52.277000',0,2);
INSERT INTO portunes_door VALUES(12,'F-KA-JN4 Jeneratör Odası',7,0,1,'','2017-06-06 10:52:00','2017-07-11 14:44:48.195000',0,2);
INSERT INTO portunes_door VALUES(13,'F-KA-HC1 Hücre Odası 1',8,0,1,'','2017-06-06 10:52:09','2017-07-11 14:44:40.755000',0,2);
INSERT INTO portunes_door VALUES(14,'B-KA-1 C Blok Tarafı Giriş',1,0,1,'','2017-06-12 10:06:49','2017-07-11 14:44:13.963000',0,12);
INSERT INTO portunes_door VALUES(15,'B-KA-1 C Blok Tarafı Çıkış',2,0,0,'','2017-06-12 10:08:12','2017-07-11 14:44:01.986000',0,12);
INSERT INTO portunes_door VALUES(16,'B-KA-2 Atölye Tarafı Giriş',3,0,1,'','2017-06-12 10:08:23','2017-07-11 14:43:54.290000',0,12);
INSERT INTO portunes_door VALUES(17,'B-KA-2 Atölye Tarafı Çıkış',4,0,0,'','2017-06-12 10:08:35','2017-07-11 14:43:44.450000',0,12);
INSERT INTO portunes_door VALUES(18,'B107 Bilgisayar Laboratuvarı',5,0,1,'','2017-06-12 10:08:46','2017-07-11 14:42:49.865000',0,12);
INSERT INTO portunes_door VALUES(20,'B008 Sistem Odası',7,0,1,'','2017-06-12 10:09:09','2017-07-11 14:42:23.473000',0,12);
INSERT INTO portunes_door VALUES(22,'B108A',1,0,1,NULL,'2017-06-15 11:02:56','2017-06-15 11:11:33.981000',0,14);
INSERT INTO portunes_door VALUES(23,'B108B',2,0,1,NULL,'2017-06-15 11:03:09','2017-06-15 11:11:42.345000',0,14);
INSERT INTO portunes_door VALUES(24,'B108C',3,0,1,NULL,'2017-06-15 11:03:18','2017-06-15 11:12:03.281000',0,14);
INSERT INTO portunes_door VALUES(25,'B108D',4,0,1,NULL,'2017-06-15 11:03:27','2017-06-15 11:12:10.788000',0,14);
INSERT INTO portunes_door VALUES(26,'B108E',5,0,1,NULL,'2017-06-15 11:03:35','2017-06-15 11:12:23.306000',0,14);
INSERT INTO portunes_door VALUES(27,'B108F',6,0,1,NULL,'2017-06-15 11:03:43','2017-06-15 11:12:29.608000',0,14);
INSERT INTO portunes_door VALUES(28,'B108G',7,0,1,NULL,'2017-06-15 11:03:51','2017-06-15 11:12:36.037000',0,14);
INSERT INTO portunes_door VALUES(29,'B108',8,0,1,NULL,'2017-06-15 11:03:59','2017-06-15 11:11:24.576000',0,14);
INSERT INTO portunes_door VALUES(30,'BZ02 Pano Odası',1,0,1,'','2017-06-15 11:15:57','2017-07-11 14:04:13.965000',0,15);
INSERT INTO portunes_door VALUES(32,'BZ01 Kazan Dairesi Giriş',3,0,1,'','2017-06-15 11:17:09','2017-07-11 13:42:38.490000',0,15);
INSERT INTO portunes_door VALUES(34,'BZ03 Galeri Giriş',5,0,1,'','2017-06-15 11:17:25','2017-07-11 13:43:02.210000',0,15);
INSERT INTO portunes_door VALUES(36,'Kazan Dairesi Çıkış',7,0,0,NULL,'2017-06-15 11:17:41','2017-06-15 11:21:10.422000',0,15);
INSERT INTO portunes_door VALUES(38,'A Blok Çıkış',1,0,0,'','2017-06-15 11:28:22','2017-07-11 13:39:56.487000',0,13);
INSERT INTO portunes_door VALUES(39,'A Blok Giriş',2,0,1,'','2017-06-15 11:28:45','2017-07-11 13:39:41.184000',0,13);
INSERT INTO portunes_door VALUES(40,'Danışma İç Oda',3,0,1,'','2017-06-15 11:29:13','2017-07-11 13:37:52.244000',0,13);
INSERT INTO portunes_door VALUES(41,'Kütüphane',5,0,1,'','2017-06-15 11:29:25','2017-07-11 13:37:34.996000',0,13);
INSERT INTO portunes_door VALUES(42,'Danışma',7,0,1,'','2017-06-15 11:29:35','2017-07-11 13:37:24.875000',0,13);
INSERT INTO portunes_door VALUES(43,'C Blok Dozimetre Giriş',6,0,1,'','2017-06-15 11:43:12','2017-07-11 13:41:27.986000',0,7);
INSERT INTO portunes_door VALUES(44,'C Blok Çıkış',7,0,1,'','2017-06-15 11:44:14','2017-07-11 13:40:59.928000',0,7);
INSERT INTO portunes_door VALUES(45,'C Blok Giriş',8,0,1,'','2017-06-15 11:44:30','2017-07-11 13:40:49.332000',0,7);
INSERT INTO portunes_door VALUES(46,'Tel Örgü Bariyer Giriş',1,0,1,'','2017-06-19 07:26:47','2017-07-11 13:36:13.450000',0,10);
INSERT INTO portunes_door VALUES(47,'Tel Örgü Bariyer Çıkış',2,0,0,'','2017-06-19 07:27:40','2017-07-11 13:35:38.602000',0,10);
INSERT INTO portunes_door VALUES(48,'Çatı Bariyer Giriş',3,0,1,'','2017-06-19 07:27:54','2017-07-11 13:34:48.137000',0,10);
INSERT INTO portunes_door VALUES(49,'Çatı Bariyer Çıkış',4,0,0,'','2017-06-19 07:28:03','2017-07-11 13:34:20.473000',0,10);
INSERT INTO portunes_door VALUES(50,'C107 Çatı Tel Örgü',5,0,1,'','2017-06-19 07:28:12','2017-07-11 13:44:12.228000',0,10);
INSERT INTO portunes_door VALUES(51,'C011 Temiz Oda',3,0,1,'','2017-06-19 08:57:58','2017-07-11 13:27:47.193000',0,8);
INSERT INTO portunes_door VALUES(52,'C010 - Küçük Atölye',4,0,1,'','2017-06-19 08:58:20','2017-07-11 13:28:01.729000',0,8);
INSERT INTO portunes_door VALUES(53,'C009 - Eski Yan Kapı',5,0,1,'','2017-06-19 08:58:34','2017-07-11 13:28:17.794000',0,8);
INSERT INTO portunes_door VALUES(54,'C008 - Galeri Giriş',6,0,1,'','2017-06-19 08:58:43','2017-07-11 13:28:31.347000',0,8);
INSERT INTO portunes_door VALUES(55,'C013 Pano Odası',7,0,1,'','2017-06-19 08:58:55','2017-07-11 13:26:38.896000',0,8);
INSERT INTO portunes_door VALUES(56,'BREMSSTRAHLUNG PIN1',1,0,1,'','2017-06-19 08:59:07','2017-06-19 09:30:48.284000',0,11);
INSERT INTO portunes_door VALUES(57,'BREMSSTRAHLUNG PIN2',2,0,1,'','2017-06-19 09:30:50','2017-06-19 09:32:43.350000',0,11);
INSERT INTO portunes_door VALUES(58,'BREMSSTRAHLUNG PIN3',3,0,1,'','2017-06-19 09:32:43','2017-06-19 09:32:55.740000',0,11);
INSERT INTO portunes_door VALUES(59,'BREMSSTRAHLUNG PIN4',4,0,1,'','2017-06-19 09:32:55','2017-06-19 09:33:05.319000',0,11);
INSERT INTO portunes_door VALUES(60,'BREMSSTRAHLUNG PIN5',5,0,1,'','2017-06-19 09:33:05','2017-06-19 09:33:13.537000',0,11);
INSERT INTO portunes_door VALUES(61,'BREMSSTRAHLUNG PIN6',6,0,1,'','2017-06-19 09:33:13','2017-06-19 09:33:21.328000',0,11);
INSERT INTO portunes_door VALUES(62,'BREMSSTRAHLUNG PIN7',7,0,1,'','2017-06-19 09:33:21','2017-06-19 09:33:29.117000',0,11);
INSERT INTO portunes_door VALUES(63,'BREMSSTRAHLUNG PIN8',8,0,1,'','2017-06-19 09:33:29','2017-06-19 09:33:37.950000',0,11);
INSERT INTO portunes_door VALUES(64,'C-KA-4 Helyum Seksiyonel Kapı',1,0,1,'','2017-06-19 09:33:38','2017-07-11 14:38:40.523000',0,16);
INSERT INTO portunes_door VALUES(65,'C014 - Helyum Kabin Giriş',2,0,1,'','2017-06-19 09:34:08','2017-07-11 13:24:44.654000',0,16);
INSERT INTO portunes_door VALUES(66,'C014 - Helyum Ana Giriş',3,0,1,'','2017-06-19 09:34:18','2017-07-11 13:23:55.220000',0,16);
INSERT INTO portunes_door VALUES(67,'HELYUM PIN4',4,0,1,'','2017-06-19 09:34:27','2017-07-11 13:25:33.717000',1,16);
INSERT INTO portunes_door VALUES(68,'HELYUM PIN5',5,0,1,'','2017-06-19 09:34:34','2017-07-11 13:25:39.991000',1,16);
INSERT INTO portunes_door VALUES(69,'HELYUM PIN6',6,0,1,'','2017-06-19 09:34:45','2017-07-11 13:25:44.646000',1,16);
INSERT INTO portunes_door VALUES(70,'HELYUM PIN7',7,0,1,'','2017-06-19 09:34:53','2017-07-11 13:25:48.830000',1,16);
INSERT INTO portunes_door VALUES(71,'HELYUM PIN8',8,0,1,'','2017-06-19 09:35:03','2017-07-11 13:24:54.750000',1,16);
INSERT INTO portunes_door VALUES(73,'C103 Karanlık Oda',2,0,1,'','2017-06-19 12:22:32','2017-07-11 11:49:07.693000',0,9);
INSERT INTO portunes_door VALUES(74,'C104 Eski Elektronik Lab.',3,0,1,'','2017-06-19 12:23:26','2017-07-11 11:49:00.566000',0,9);
INSERT INTO portunes_door VALUES(75,'C105 Diagnostic Laboratuvarı',4,0,1,'','2017-06-19 12:23:35','2017-07-11 11:48:09.086000',0,9);
INSERT INTO portunes_door VALUES(76,'C102 Elektronik Laboratuvarı',5,0,1,'','2017-06-19 12:23:47','2017-07-11 11:47:45.181000',0,9);
INSERT INTO portunes_door VALUES(77,'C Blok- B Blok Üst Geçişi',6,0,1,'','2017-06-19 12:23:58','2017-07-11 13:47:59.376000',0,9);
INSERT INTO portunes_door VALUES(78,'C108 Network Odası',7,0,1,'','2017-06-19 12:24:10','2017-07-11 11:43:49.911000',0,9);
INSERT INTO portunes_door VALUES(79,'C106 Kontrol Odası',1,0,1,'','2017-06-19 12:24:23','2017-07-11 11:43:00.910000',0,9);
INSERT INTO portunes_door VALUES(81,'H1',1,0,1,'','2017-06-19 13:32:47','2017-06-19 13:32:58.110000',0,17);
INSERT INTO portunes_door VALUES(82,'H8',8,0,1,'','2017-06-19 13:32:58','2017-06-28 16:31:44.102000',0,17);
INSERT INTO portunes_door VALUES(83,'H3',3,0,1,'','2017-06-19 13:33:10','2017-06-19 13:33:19.151000',0,17);
INSERT INTO portunes_door VALUES(84,'H4',4,0,1,'','2017-06-19 13:33:19','2017-06-19 13:33:30.490000',0,17);
INSERT INTO portunes_door VALUES(85,'H5',5,0,1,'','2017-06-19 13:33:30','2017-06-19 13:33:44.531000',0,17);
INSERT INTO portunes_door VALUES(86,'H6',6,0,1,'','2017-06-19 13:33:44','2017-06-19 13:33:52.890000',0,17);
INSERT INTO portunes_door VALUES(87,'C-KA-6 Hızlandırıcı Seksiyonel',8,0,1,'','2017-06-20 11:27:42','2017-07-11 14:43:32.171000',0,8);
INSERT INTO portunes_door VALUES(88,'E-KA-GV Güvenlik Kulübe Giriş',1,0,1,'','2017-06-20 14:03:47','2017-07-11 14:43:28.690000',0,18);
INSERT INTO portunes_door VALUES(89,'C012 Temiz Oda Yanı',2,0,1,'','2017-06-20 15:56:40','2017-07-11 11:41:18.389000',0,8);
INSERT INTO portunes_door VALUES(90,'Su Soğutma Giriş',7,0,1,'','2017-06-21 04:06:29','2017-07-11 11:40:09.778000',0,6);
INSERT INTO portunes_door VALUES(91,'Su Soğutma Kontaminasyon Depo',8,0,1,'','2017-06-21 04:07:25','2017-07-11 11:40:00.381000',0,6);
INSERT INTO portunes_door VALUES(93,'C-KA-3 FEL Seksiyonel Kapı',5,0,1,'','2017-07-04 08:49:47','2017-07-11 14:43:34.657000',0,7);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_door_group` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL UNIQUE, `created_date` datetime NOT NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_door_group_doors` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `door_group_id` integer NOT NULL REFERENCES `portunes_door_group` (`id`), `door_id` integer NOT NULL REFERENCES `portunes_door` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_identifier` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL, `key` varchar(255) NOT NULL UNIQUE, `is_active` bool NOT NULL, `identifier_type` integer NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL);
INSERT INTO portunes_identifier VALUES(3,`Bilal Tonga`,`15376653`,1,1,`2017-06-12 10:10:07.614000`,0);
INSERT INTO portunes_identifier VALUES(4,'P10 - Ömer Faruk Elçim','15393493',1,1,'2017-06-12 10:38:38',0);
INSERT INTO portunes_identifier VALUES(5,'P01 - Ayhan Aydın','15393099',0,1,'2017-06-13 10:16:01.418000',0);
INSERT INTO portunes_identifier VALUES(6,'kırıldı-burakkoc','15389002',1,1,'2017-06-13 10:16:27.108000',0);
INSERT INTO portunes_identifier VALUES(7,'Sayyora Artikova','15381101',1,1,'2017-06-13 10:17:21.915000',0);
INSERT INTO portunes_identifier VALUES(8,'P04 - Mehmet Bozdoğan','15378479',1,1,'2017-06-13 10:17:49.437000',0);
INSERT INTO portunes_identifier VALUES(9,'P05 - Ece Pınar Demirci','15372738',1,1,'2017-06-13 10:18:32.340000',0);
INSERT INTO portunes_identifier VALUES(10,'P06 - Çigdem Akyıldız','15396404',1,1,'2017-06-13 10:19:23.200000',0);
INSERT INTO portunes_identifier VALUES(11,'P07 - Ahmet Başaran','15393683',1,1,'2017-06-13 10:19:53.910000',0);
INSERT INTO portunes_identifier VALUES(12,'P08 - Özlem Karslı','15381243',1,1,'2017-06-13 10:42:28.893000',0);
INSERT INTO portunes_identifier VALUES(13,'P09 - Avni Aksoy','15381418',1,1,'2017-06-13 10:43:21.455000',0);
INSERT INTO portunes_identifier VALUES(14,'Ziyaretçi','15376673',1,2,'2017-06-13 11:47:18.556000',0);
INSERT INTO portunes_identifier VALUES(15,'Ziyaretçi','15393258',1,2,'2017-06-13 11:47:34.036000',0);
INSERT INTO portunes_identifier VALUES(16,'Hakan','15393789',1,2,'2017-06-13 11:48:06.436000',0);
INSERT INTO portunes_identifier VALUES(17,'Ziyaretçi 4','15380716',1,2,'2017-06-13 11:48:23.708000',0);
INSERT INTO portunes_identifier VALUES(18,'Ziyaretçi 5','15374946',1,2,'2017-06-13 11:48:37.957000',0);
INSERT INTO portunes_identifier VALUES(19,'Ziyaretçi 6','15372907',1,2,'2017-06-13 11:48:57.533000',0);
INSERT INTO portunes_identifier VALUES(20,'Ziyaretçi 7','15383002',1,2,'2017-06-13 11:49:11.326000',0);
INSERT INTO portunes_identifier VALUES(28,'P11 - Emre Kazancı','15372270',1,1,'2017-06-15 15:02:20.599000',0);
INSERT INTO portunes_identifier VALUES(29,'SüleymanSelimKısırkaya-KIRILDI','15373071',1,1,'2017-06-15 15:03:21.056000',0);
INSERT INTO portunes_identifier VALUES(30,'P13 - Mehmet Yıldız','15386614',1,1,'2017-06-15 15:04:36.401000',0);
INSERT INTO portunes_identifier VALUES(31,'P14 - Aliekber Kılınç','15371632',1,1,'2017-06-15 15:05:05.850000',0);
INSERT INTO portunes_identifier VALUES(32,'P15 - Çağlar Kaya','15370369',1,1,'2017-06-15 15:09:05.417000',0);
INSERT INTO portunes_identifier VALUES(34,'P16 - Koray Çakır','15383852',1,1,'2017-06-15 15:10:02.400000',0);
INSERT INTO portunes_identifier VALUES(35,'Kırıldı- Servet Aydın','15380164',1,1,'2017-06-15 15:10:29.766000',0);
INSERT INTO portunes_identifier VALUES(36,'P18 - İbrahim Şara','15393950',1,1,'2017-06-15 15:10:52.705000',0);
INSERT INTO portunes_identifier VALUES(37,'P19 - Cengiz Güneş','15530071',1,1,'2017-06-15 15:11:17.143000',0);
INSERT INTO portunes_identifier VALUES(38,'P17 - Servet Aydın','15378642',1,1,'2017-06-15 15:31:35.958000',0);
INSERT INTO portunes_identifier VALUES(708,'Güvenlik 1','1907135',1,1,'2017-06-20 14:56:13.982000',0);
INSERT INTO portunes_identifier VALUES(777,'Stajyer 1','2152520',1,1,'2017-06-21 07:45:20.053000',0);
INSERT INTO portunes_identifier VALUES(778,'AyhanDemir','2152493',1,2,'2017-06-21 07:45:44.493000',0);
INSERT INTO portunes_identifier VALUES(779,'Stajyer 3','1907584',1,2,'2017-06-21 07:45:59.652000',0);
INSERT INTO portunes_identifier VALUES(780,'Stajyer 4','1925837',1,2,'2017-06-21 07:46:20.797000',0);
INSERT INTO portunes_identifier VALUES(781,'Stajyer 5','1925854',1,2,'2017-06-21 07:46:33.149000',0);
INSERT INTO portunes_identifier VALUES(799,'Ayhan Aydın - P01','1916153',1,1,'2017-06-21 08:38:36.606000',0);
INSERT INTO portunes_identifier VALUES(800,'İbrahim Burak	Koç - P02','1916350',1,1,'2017-06-21 08:39:21.216000',0);
INSERT INTO portunes_identifier VALUES(801,'Umut	Bostancı - P03','2034965',1,1,'2017-06-21 08:39:49.288000',0);
INSERT INTO portunes_identifier VALUES(802,'Mehmet Bozdağan - P04','1985669',1,1,'2017-06-21 08:40:16.265000',0);
INSERT INTO portunes_identifier VALUES(803,'Ece Pınar	Demirci - P05','1929739',1,1,'2017-06-21 08:40:42.842000',0);
INSERT INTO portunes_identifier VALUES(804,'Emine Çiğdem	Akyıldız - P06','1985698',1,1,'2017-06-21 08:41:15.474000',0);
INSERT INTO portunes_identifier VALUES(805,'Ahmet	Başaran - P07','2034991',1,1,'2017-06-21 08:42:00.138000',0);
INSERT INTO portunes_identifier VALUES(806,'Özlem	Karslı - P08','2034989',1,1,'2017-06-21 08:42:26.235000',0);
INSERT INTO portunes_identifier VALUES(807,'Avni Aksoy - P09','2035032',1,1,'2017-06-21 08:43:07.613000',0);
INSERT INTO portunes_identifier VALUES(808,'Ömer Faruk Elçim - P10','1985654',1,1,'2017-06-21 08:44:36.140000',0);
INSERT INTO portunes_identifier VALUES(809,'Emre Kazancı - P11','2025289',1,1,'2017-06-21 08:45:54.352000',0);
INSERT INTO portunes_identifier VALUES(810,'Süleyman Selim Kısırkaya - P12','2025234',1,1,'2017-06-21 08:48:56.307000',0);
INSERT INTO portunes_identifier VALUES(811,'Mehmet Yıldız - P13','1982866',1,1,'2017-06-21 08:52:39.349000',0);
INSERT INTO portunes_identifier VALUES(812,'Aliekber Kılınç - P14','1982921',1,1,'2017-06-21 08:53:09.502000',0);
INSERT INTO portunes_identifier VALUES(813,'Çağlar Kaya - P15','1907168',1,1,'2017-06-21 08:53:39.168000',0);
INSERT INTO portunes_identifier VALUES(814,'Koray Çakır - P16','2152487',1,1,'2017-06-21 08:54:09.407000',0);
INSERT INTO portunes_identifier VALUES(815,'Servet	Aydın - P17','1929522',1,1,'2017-06-21 08:55:12.131000',0);
INSERT INTO portunes_identifier VALUES(816,'İbrahim Şara - P18','1929561',1,1,'2017-06-21 08:55:41.593000',0);
INSERT INTO portunes_identifier VALUES(817,'Cengiz	Güneş - P19','1907465',1,1,'2017-06-21 08:56:11.178000',0);
INSERT INTO portunes_identifier VALUES(818,'Hatice Yılmaz Alan - P20','1923095',1,1,'2017-06-21 09:06:27.774000',0);
INSERT INTO portunes_identifier VALUES(819,'Cemile	Fidan Murat - P21','1923090',1,1,'2017-06-21 09:06:52.038000',0);
INSERT INTO portunes_identifier VALUES(820,'Musa Akdağ - P22','1907093',1,1,'2017-06-21 09:07:19.766000',0);
INSERT INTO portunes_identifier VALUES(821,'Bayram Tekin - P23','1932779',1,1,'2017-06-21 09:07:47.686000',0);
INSERT INTO portunes_identifier VALUES(822,'Burak Çetindaş - P24','1906850',1,1,'2017-06-21 09:09:37.759000',0);
INSERT INTO portunes_identifier VALUES(823,'İlyas Evrim Çolak - P25','2152481',1,1,'2017-06-21 09:10:20.929000',0);
INSERT INTO portunes_identifier VALUES(824,'Ziyaretçi 8','15373676',1,2,'2017-06-21 09:38:59.337000',0);
INSERT INTO portunes_identifier VALUES(825,'Ziyaretçi 9','15369179',1,2,'2017-06-21 09:40:40.396000',0);
INSERT INTO portunes_identifier VALUES(826,'Ziyaretçi 10','15373403',1,2,'2017-06-21 09:40:59.914000',0);
INSERT INTO portunes_identifier VALUES(835,'Erhan Polat - P26','1923097',1,1,'2017-06-21 12:10:39.292000',0);
INSERT INTO portunes_identifier VALUES(880,'Tanımsız kart','12541439',0,2,'2017-06-21 16:20:51.574000',1);
INSERT INTO portunes_identifier VALUES(881,'Tanımsız kart','12506475',0,2,'2017-06-21 16:21:36.734000',1);
INSERT INTO portunes_identifier VALUES(882,'Tanımsız kart','8950033',0,2,'2017-06-21 16:49:14.143000',1);
INSERT INTO portunes_identifier VALUES(883,'Tanımsız kart','9606314',0,2,'2017-06-21 16:49:14.220000',1);
INSERT INTO portunes_identifier VALUES(884,'Tanımsız kart','1048708',0,2,'2017-06-21 16:50:14.381000',1);
INSERT INTO portunes_identifier VALUES(885,'Tanımsız kart','1048576',0,2,'2017-06-21 16:50:14.458000',1);
INSERT INTO portunes_identifier VALUES(886,'Tanımsız kart','2704548',0,2,'2017-06-21 16:57:11.232000',1);
INSERT INTO portunes_identifier VALUES(887,'Tanımsız kart','11151696',0,2,'2017-06-21 16:57:11.309000',1);
INSERT INTO portunes_identifier VALUES(888,'Tanımsız kart','9512009',0,2,'2017-06-21 16:57:11.385000',1);
INSERT INTO portunes_identifier VALUES(889,'Tanımsız kart','8947848',0,2,'2017-06-21 16:58:08.023000',1);
INSERT INTO portunes_identifier VALUES(890,'Tanımsız kart','9576994',0,2,'2017-06-21 16:58:08.101000',1);
INSERT INTO portunes_identifier VALUES(891,'Tanımsız kart','9507396',0,2,'2017-06-21 16:58:08.178000',1);
INSERT INTO portunes_identifier VALUES(892,'Tanımsız kart','4760585',0,2,'2017-06-21 16:58:08.256000',1);
INSERT INTO portunes_identifier VALUES(893,'Tanımsız kart','16775850',0,2,'2017-06-21 16:58:08.382000',1);
INSERT INTO portunes_identifier VALUES(894,'Tanımsız kart','5154479',0,2,'2017-06-21 16:58:08.459000',1);
INSERT INTO portunes_identifier VALUES(895,'Tanımsız kart','1188386',0,2,'2017-06-21 16:58:08.810000',1);
INSERT INTO portunes_identifier VALUES(896,'Tanımsız kart','2695753',0,2,'2017-06-21 16:58:08.886000',1);
INSERT INTO portunes_identifier VALUES(897,'Tanımsız kart','5394985',0,2,'2017-06-21 16:58:08.962000',1);
INSERT INTO portunes_identifier VALUES(898,'Tanımsız kart','9590058',0,2,'2017-06-21 16:58:09.039000',1);
INSERT INTO portunes_identifier VALUES(899,'Tanımsız kart','4793508',0,2,'2017-06-21 16:58:09.117000',1);
INSERT INTO portunes_identifier VALUES(900,'Tanımsız kart','1118481',0,2,'2017-06-21 16:58:09.194000',1);
INSERT INTO portunes_identifier VALUES(901,'Tanımsız kart','8987684',0,2,'2017-06-21 16:58:09.272000',1);
INSERT INTO portunes_identifier VALUES(902,'Tanımsız kart','1083458',0,2,'2017-06-21 16:58:09.602000',1);
INSERT INTO portunes_identifier VALUES(903,'Tanımsız kart','9352',0,2,'2017-06-21 16:58:09.679000',1);
INSERT INTO portunes_identifier VALUES(904,'Tanımsız kart','148050',0,2,'2017-06-21 16:58:09.756000',1);
INSERT INTO portunes_identifier VALUES(905,'Tanımsız kart','8421441',0,2,'2017-06-21 16:58:09.833000',1);
INSERT INTO portunes_identifier VALUES(906,'Tanımsız kart','8392704',0,2,'2017-06-21 16:58:09.911000',1);
INSERT INTO portunes_identifier VALUES(907,'Tanımsız kart','11179346',0,2,'2017-06-21 17:38:14.569000',1);
INSERT INTO portunes_identifier VALUES(908,'Tanımsız kart','16426096',0,2,'2017-06-21 20:14:27.751000',1);
INSERT INTO portunes_identifier VALUES(909,'Tanımsız kart','4019482',0,2,'2017-06-21 21:32:34.293000',1);
INSERT INTO portunes_identifier VALUES(910,'Tanımsız kart','8213786',0,2,'2017-06-21 21:32:34.371000',1);
INSERT INTO portunes_identifier VALUES(911,'Tanımsız kart','6247750',0,2,'2017-06-21 21:32:34.525000',1);
INSERT INTO portunes_identifier VALUES(912,'Tanımsız kart','8214782',0,2,'2017-06-21 23:42:45.395000',1);
INSERT INTO portunes_identifier VALUES(913,'Tanımsız kart','4020478',0,2,'2017-06-21 23:42:45.549000',1);
INSERT INTO portunes_identifier VALUES(914,'Tanımsız kart','16427531',0,2,'2017-06-22 00:08:47.977000',1);
INSERT INTO portunes_identifier VALUES(915,'Tanımsız kart','13059695',0,2,'2017-06-22 00:20:49.318000',1);
INSERT INTO portunes_identifier VALUES(916,'Tanımsız kart','2435370',0,2,'2017-06-22 03:24:04.165000',1);
INSERT INTO portunes_identifier VALUES(917,'Tanımsız kart','9577540',0,2,'2017-06-22 04:44:11.057000',1);
INSERT INTO portunes_identifier VALUES(918,'Tanımsız kart','11084946',0,2,'2017-06-22 04:44:11.135000',1);
INSERT INTO portunes_identifier VALUES(919,'Tanımsız kart','786090',0,2,'2017-06-22 04:48:11.707000',1);
INSERT INTO portunes_identifier VALUES(920,'Tanımsız kart','11184810',0,2,'2017-06-22 04:50:12.446000',1);
INSERT INTO portunes_identifier VALUES(921,'Tanımsız kart','3144362',0,2,'2017-06-22 04:50:13.303000',1);
INSERT INTO portunes_identifier VALUES(922,'Tanımsız kart','5592405',0,2,'2017-06-22 04:50:13.537000',1);
INSERT INTO portunes_identifier VALUES(923,'Tanımsız kart','5542485',0,2,'2017-06-22 04:50:13.614000',1);
INSERT INTO portunes_identifier VALUES(924,'Tanımsız kart','5599146',0,2,'2017-06-22 04:50:13.692000',1);
INSERT INTO portunes_identifier VALUES(925,'Tanımsız kart','2913382',0,2,'2017-06-22 04:54:17.183000',1);
INSERT INTO portunes_identifier VALUES(926,'Tanımsız kart','8',0,2,'2017-06-22 06:28:25.869000',1);
INSERT INTO portunes_identifier VALUES(927,'Tanımsız kart','1924186',0,2,'2017-06-22 07:00:31.759000',1);
INSERT INTO portunes_identifier VALUES(928,'Tanımsız kart','16165546',0,2,'2017-06-22 07:00:31.914000',1);
INSERT INTO portunes_identifier VALUES(929,'Tanımsız kart','16426179',0,2,'2017-06-22 07:03:33.021000',1);
INSERT INTO portunes_identifier VALUES(930,'Tanımsız kart','5592138',0,2,'2017-06-22 07:47:40.123000',1);
INSERT INTO portunes_identifier VALUES(931,'Tanımsız kart','1024',0,2,'2017-06-22 07:47:40.201000',1);
INSERT INTO portunes_identifier VALUES(932,'Tanımsız kart','8192',0,2,'2017-06-22 07:47:40.278000',1);
INSERT INTO portunes_identifier VALUES(933,'Tanımsız kart','2097152',0,2,'2017-06-22 07:47:40.433000',1);
INSERT INTO portunes_identifier VALUES(934,'Tanımsız kart','65536',0,2,'2017-06-22 07:47:40.588000',1);
INSERT INTO portunes_identifier VALUES(935,'Tanımsız kart','512',0,2,'2017-06-22 07:47:40.820000',1);
INSERT INTO portunes_identifier VALUES(936,'Tanımsız kart','32',0,2,'2017-06-22 07:47:40.897000',1);
INSERT INTO portunes_identifier VALUES(937,'Tanımsız kart','131072',0,2,'2017-06-22 07:47:41.208000',1);
INSERT INTO portunes_identifier VALUES(938,'Tanımsız kart','2048',0,2,'2017-06-22 07:47:41.440000',1);
INSERT INTO portunes_identifier VALUES(939,'Tanımsız kart','128',0,2,'2017-06-22 07:47:41.517000',1);
INSERT INTO portunes_identifier VALUES(940,'Tanımsız kart','1',0,2,'2017-06-22 07:47:41.594000',1);
INSERT INTO portunes_identifier VALUES(941,'Tanımsız kart','4',0,2,'2017-06-22 07:47:41.671000',1);
INSERT INTO portunes_identifier VALUES(942,'Tanımsız kart','4096',0,2,'2017-06-22 07:47:42.137000',1);
INSERT INTO portunes_identifier VALUES(943,'Tanımsız kart','16',0,2,'2017-06-22 07:47:42.292000',1);
INSERT INTO portunes_identifier VALUES(944,'Tanımsız kart','4100',0,2,'2017-06-22 07:47:42.603000',1);
INSERT INTO portunes_identifier VALUES(945,'Tanımsız kart','256',0,2,'2017-06-22 07:47:42.680000',1);
INSERT INTO portunes_identifier VALUES(946,'Tanımsız kart','524288',0,2,'2017-06-22 07:47:42.757000',1);
INSERT INTO portunes_identifier VALUES(947,'Tanımsız kart','64',0,2,'2017-06-22 07:47:43.068000',1);
INSERT INTO portunes_identifier VALUES(948,'Tanımsız kart','8912900',0,2,'2017-06-22 07:47:43.145000',1);
INSERT INTO portunes_identifier VALUES(949,'Tanımsız kart','4194320',0,2,'2017-06-22 07:47:43.300000',1);
INSERT INTO portunes_identifier VALUES(950,'Tanımsız kart','16384',0,2,'2017-06-22 07:47:43.532000',1);
INSERT INTO portunes_identifier VALUES(951,'Tanımsız kart','32768',0,2,'2017-06-22 07:47:43.765000',1);
INSERT INTO portunes_identifier VALUES(952,'Tanımsız kart','1025',0,2,'2017-06-22 07:47:43.842000',1);
INSERT INTO portunes_identifier VALUES(953,'Tanımsız kart','20480',0,2,'2017-06-22 07:47:43.997000',1);
INSERT INTO portunes_identifier VALUES(954,'Tanımsız kart','8388616',0,2,'2017-06-22 07:47:44.152000',1);
INSERT INTO portunes_identifier VALUES(955,'Tanımsız kart','1048704',0,2,'2017-06-22 07:47:44.463000',1);
INSERT INTO portunes_identifier VALUES(956,'Tanımsız kart','2',0,2,'2017-06-22 07:47:44.771000',1);
INSERT INTO portunes_identifier VALUES(957,'Tanımsız kart','4194304',0,2,'2017-06-22 07:47:44.848000',1);
INSERT INTO portunes_identifier VALUES(958,'Tanımsız kart','4719104',0,2,'2017-06-22 07:47:44.925000',1);
INSERT INTO portunes_identifier VALUES(959,'Tanımsız kart','4722752',0,2,'2017-06-22 07:47:45.079000',1);
INSERT INTO portunes_identifier VALUES(960,'Tanımsız kart','8388608',0,2,'2017-06-22 07:47:45.156000',1);
INSERT INTO portunes_identifier VALUES(961,'Tanımsız kart','4718592',0,2,'2017-06-22 07:47:45.234000',1);
INSERT INTO portunes_identifier VALUES(962,'Tanımsız kart','12236981',0,2,'2017-06-22 07:52:49.102000',1);
INSERT INTO portunes_identifier VALUES(963,'Tanımsız kart','7003484',0,2,'2017-06-22 07:52:49.257000',1);
INSERT INTO portunes_identifier VALUES(964,'Tanımsız kart','5397852',0,2,'2017-06-22 07:52:49.491000',1);
INSERT INTO portunes_identifier VALUES(965,'Tanımsız kart','12015382',0,2,'2017-06-22 07:52:49.645000',1);
INSERT INTO portunes_identifier VALUES(966,'Tanımsız kart','9918230',0,2,'2017-06-22 07:52:49.722000',1);
INSERT INTO portunes_identifier VALUES(967,'Tanımsız kart','11392453',0,2,'2017-06-22 07:52:49.877000',1);
INSERT INTO portunes_identifier VALUES(968,'Tanımsız kart','10868165',0,2,'2017-06-22 07:52:49.954000',1);
INSERT INTO portunes_identifier VALUES(969,'Tanımsız kart','5390922',0,2,'2017-06-22 07:52:50.108000',1);
INSERT INTO portunes_identifier VALUES(970,'Tanımsız kart','9782596',0,2,'2017-06-22 07:52:50.185000',1);
INSERT INTO portunes_identifier VALUES(971,'Tanımsız kart','5390628',0,2,'2017-06-22 07:52:50.262000',1);
INSERT INTO portunes_identifier VALUES(972,'Tanımsız kart','5542537',0,2,'2017-06-22 07:52:50.339000',1);
INSERT INTO portunes_identifier VALUES(973,'Tanımsız kart','7696549',0,2,'2017-06-22 07:52:50.648000',1);
INSERT INTO portunes_identifier VALUES(974,'Tanımsız kart','12236882',0,2,'2017-06-22 07:52:50.725000',1);
INSERT INTO portunes_identifier VALUES(975,'Tanımsız kart','6118441',0,2,'2017-06-22 07:52:50.880000',1);
INSERT INTO portunes_identifier VALUES(976,'Tanımsız kart','7696746',0,2,'2017-06-22 07:52:51.501000',1);
INSERT INTO portunes_identifier VALUES(977,'Tanımsız kart','3848274',0,2,'2017-06-22 08:05:53.731000',1);
INSERT INTO portunes_identifier VALUES(978,'Tanımsız kart','11138388',0,2,'2017-06-22 08:05:54.119000',1);
INSERT INTO portunes_identifier VALUES(979,'Tanımsız kart','9918218',0,2,'2017-06-22 08:05:54.428000',1);
INSERT INTO portunes_identifier VALUES(980,'Tanımsız kart','5338480',0,2,'2017-06-22 08:05:54.815000',1);
INSERT INTO portunes_identifier VALUES(981,'Tanımsız kart','4814192',0,2,'2017-06-22 08:05:55.201000',1);
INSERT INTO portunes_identifier VALUES(982,'Tanımsız kart','5434081',0,2,'2017-06-22 08:05:55.355000',1);
INSERT INTO portunes_identifier VALUES(983,'Tanımsız kart','11058858',0,2,'2017-06-22 08:05:55.510000',1);
INSERT INTO portunes_identifier VALUES(984,'Tanımsız kart','8704',0,2,'2017-06-22 08:09:29.309000',1);
INSERT INTO portunes_identifier VALUES(985,'Tanımsız kart','2244676',0,2,'2017-06-22 08:09:29.386000',1);
INSERT INTO portunes_identifier VALUES(986,'Tanımsız kart','8454216',0,2,'2017-06-22 08:09:29.463000',1);
INSERT INTO portunes_identifier VALUES(987,'Tanımsız kart','4263944',0,2,'2017-06-22 08:09:29.540000',1);
INSERT INTO portunes_identifier VALUES(988,'Tanımsız kart','524544',0,2,'2017-06-22 08:09:29.694000',1);
INSERT INTO portunes_identifier VALUES(989,'Tanımsız kart','4269072',0,2,'2017-06-22 08:09:29.771000',1);
INSERT INTO portunes_identifier VALUES(990,'Tanımsız kart','262144',0,2,'2017-06-22 08:09:29.848000',1);
INSERT INTO portunes_identifier VALUES(991,'Tanımsız kart','8393732',0,2,'2017-06-22 08:09:29.925000',1);
INSERT INTO portunes_identifier VALUES(992,'Tanımsız kart','8388612',0,2,'2017-06-22 08:09:30.001000',1);
INSERT INTO portunes_identifier VALUES(993,'Tanımsız kart','524352',0,2,'2017-06-22 08:09:30.156000',1);
INSERT INTO portunes_identifier VALUES(994,'Tanımsız kart','558081',0,2,'2017-06-22 08:09:30.232000',1);
INSERT INTO portunes_identifier VALUES(995,'Tanımsız kart','36864',0,2,'2017-06-22 08:09:30.309000',1);
INSERT INTO portunes_identifier VALUES(996,'Tanımsız kart','1081473',0,2,'2017-06-22 08:09:30.386000',1);
INSERT INTO portunes_identifier VALUES(997,'Tanımsız kart','513',0,2,'2017-06-22 08:09:30.463000',1);
INSERT INTO portunes_identifier VALUES(998,'Tanımsız kart','606272',0,2,'2017-06-22 08:09:30.540000',1);
INSERT INTO portunes_identifier VALUES(999,'Tanımsız kart','131616',0,2,'2017-06-22 08:09:30.617000',1);
INSERT INTO portunes_identifier VALUES(1000,'Tanımsız kart','589824',0,2,'2017-06-22 08:09:30.695000',1);
INSERT INTO portunes_identifier VALUES(1001,'Tanımsız kart','8519936',0,2,'2017-06-22 08:09:30.772000',1);
INSERT INTO portunes_identifier VALUES(1002,'Tanımsız kart','16512',0,2,'2017-06-22 08:09:30.849000',1);
INSERT INTO portunes_identifier VALUES(1003,'Tanımsız kart','4727809',0,2,'2017-06-22 08:09:30.926000',1);
INSERT INTO portunes_identifier VALUES(1004,'Tanımsız kart','4227074',0,2,'2017-06-22 08:09:31.003000',1);
INSERT INTO portunes_identifier VALUES(1005,'Tanımsız kart','8224',0,2,'2017-06-22 08:09:31.157000',1);
INSERT INTO portunes_identifier VALUES(1006,'Tanımsız kart','8388864',0,2,'2017-06-22 08:09:31.311000',1);
INSERT INTO portunes_identifier VALUES(1007,'Tanımsız kart','81920',0,2,'2017-06-22 08:09:31.465000',1);
INSERT INTO portunes_identifier VALUES(1008,'Tanımsız kart','16520',0,2,'2017-06-22 08:09:31.695000',1);
INSERT INTO portunes_identifier VALUES(1009,'Tanımsız kart','9437252',0,2,'2017-06-22 08:09:31.772000',1);
INSERT INTO portunes_identifier VALUES(1010,'Tanımsız kart','4198418',0,2,'2017-06-22 08:09:31.849000',1);
INSERT INTO portunes_identifier VALUES(1011,'Tanımsız kart','1048832',0,2,'2017-06-22 08:09:31.926000',1);
INSERT INTO portunes_identifier VALUES(1012,'Tanımsız kart','131140',0,2,'2017-06-22 08:09:32.080000',1);
INSERT INTO portunes_identifier VALUES(1013,'Tanımsız kart','131144',0,2,'2017-06-22 08:13:57.006000',1);
INSERT INTO portunes_identifier VALUES(1014,'Tanımsız kart','2359568',0,2,'2017-06-22 08:13:57.084000',1);
INSERT INTO portunes_identifier VALUES(1015,'Tanımsız kart','1179732',0,2,'2017-06-22 08:13:57.262000',1);
INSERT INTO portunes_identifier VALUES(1016,'Tanımsız kart','1034',0,2,'2017-06-22 08:13:57.339000',1);
INSERT INTO portunes_identifier VALUES(1017,'Tanımsız kart','8389632',0,2,'2017-06-22 08:13:57.416000',1);
INSERT INTO portunes_identifier VALUES(1018,'Tanımsız kart','2113568',0,2,'2017-06-22 08:13:57.493000',1);
INSERT INTO portunes_identifier VALUES(1019,'Tanımsız kart','16400',0,2,'2017-06-22 08:13:57.571000',1);
INSERT INTO portunes_identifier VALUES(1020,'Tanımsız kart','524800',0,2,'2017-06-22 08:13:57.648000',1);
INSERT INTO portunes_identifier VALUES(1021,'Tanımsız kart','8738',0,2,'2017-06-22 08:13:57.803000',1);
INSERT INTO portunes_identifier VALUES(1022,'Tanımsız kart','8669248',0,2,'2017-06-22 08:13:57.880000',1);
INSERT INTO portunes_identifier VALUES(1023,'Tanımsız kart','5539088',0,2,'2017-06-22 08:13:58.136000',1);
INSERT INTO portunes_identifier VALUES(1024,'Tanımsız kart','8388736',0,2,'2017-06-22 08:13:58.291000',1);
INSERT INTO portunes_identifier VALUES(1025,'Tanımsız kart','533504',0,2,'2017-06-22 08:13:58.368000',1);
INSERT INTO portunes_identifier VALUES(1026,'Tanımsız kart','4128',0,2,'2017-06-22 08:13:58.445000',1);
INSERT INTO portunes_identifier VALUES(1027,'Tanımsız kart','2369792',0,2,'2017-06-22 08:13:58.522000',1);
INSERT INTO portunes_identifier VALUES(1028,'Tanımsız kart','2097160',0,2,'2017-06-22 08:13:58.598000',1);
INSERT INTO portunes_identifier VALUES(1029,'Tanımsız kart','10494026',0,2,'2017-06-22 08:13:58.777000',1);
INSERT INTO portunes_identifier VALUES(1030,'Tanımsız kart','1179680',0,2,'2017-06-22 08:13:58.854000',1);
INSERT INTO portunes_identifier VALUES(1031,'Tanımsız kart','4464648',0,2,'2017-06-22 08:13:58.931000',1);
INSERT INTO portunes_identifier VALUES(1032,'Tanımsız kart','66564',0,2,'2017-06-22 08:13:59.008000',1);
INSERT INTO portunes_identifier VALUES(1033,'Tanımsız kart','4325888',0,2,'2017-06-22 08:13:59.085000',1);
INSERT INTO portunes_identifier VALUES(1034,'Tanımsız kart','4325634',0,2,'2017-06-22 08:13:59.162000',1);
INSERT INTO portunes_identifier VALUES(1035,'Tanımsız kart','1114112',0,2,'2017-06-22 08:13:59.240000',1);
INSERT INTO portunes_identifier VALUES(1036,'Tanımsız kart','8405000',0,2,'2017-06-22 08:13:59.317000',1);
INSERT INTO portunes_identifier VALUES(1037,'Tanımsız kart','9445908',0,2,'2017-06-22 08:13:59.496000',1);
INSERT INTO portunes_identifier VALUES(1038,'Tanımsız kart','8320',0,2,'2017-06-22 08:13:59.573000',1);
INSERT INTO portunes_identifier VALUES(1039,'Tanımsız kart','40992',0,2,'2017-06-22 08:13:59.806000',1);
INSERT INTO portunes_identifier VALUES(1040,'Tanımsız kart','8388672',0,2,'2017-06-22 08:13:59.961000',1);
INSERT INTO portunes_identifier VALUES(1041,'Tanımsız kart','2080',0,2,'2017-06-22 08:14:00.038000',1);
INSERT INTO portunes_identifier VALUES(1042,'Tanımsız kart','20',0,2,'2017-06-22 08:14:00.115000',1);
INSERT INTO portunes_identifier VALUES(1043,'Tanımsız kart','8463392',0,2,'2017-06-22 08:14:00.293000',1);
INSERT INTO portunes_identifier VALUES(1044,'Tanımsız kart','1048610',0,2,'2017-06-22 08:14:00.370000',1);
INSERT INTO portunes_identifier VALUES(1045,'Tanımsız kart','1049104',0,2,'2017-06-22 08:14:00.448000',1);
INSERT INTO portunes_identifier VALUES(1046,'Tanımsız kart','264192',0,2,'2017-06-22 08:14:00.524000',1);
INSERT INTO portunes_identifier VALUES(1047,'Tanımsız kart','36866',0,2,'2017-06-22 08:14:00.601000',1);
INSERT INTO portunes_identifier VALUES(1048,'Tanımsız kart','8552448',0,2,'2017-06-22 08:14:00.835000',1);
INSERT INTO portunes_identifier VALUES(1049,'Tanımsız kart','4196352',0,2,'2017-06-22 08:14:01.067000',1);
INSERT INTO portunes_identifier VALUES(1050,'Tanımsız kart','9437316',0,2,'2017-06-22 08:14:01.144000',1);
INSERT INTO portunes_identifier VALUES(1051,'Tanımsız kart','133120',0,2,'2017-06-22 08:14:01.377000',1);
INSERT INTO portunes_identifier VALUES(1052,'Tanımsız kart','4195624',0,2,'2017-06-22 08:14:01.454000',1);
INSERT INTO portunes_identifier VALUES(1053,'Tanımsız kart','4718608',0,2,'2017-06-22 08:14:01.531000',1);
INSERT INTO portunes_identifier VALUES(1054,'Tanımsız kart','2176',0,2,'2017-06-22 08:14:01.686000',1);
INSERT INTO portunes_identifier VALUES(1055,'Tanımsız kart','69698',0,2,'2017-06-22 08:14:01.762000',1);
INSERT INTO portunes_identifier VALUES(1056,'Tanımsız kart','34824',0,2,'2017-06-22 08:14:01.993000',1);
INSERT INTO portunes_identifier VALUES(1057,'Tanımsız kart','2097216',0,2,'2017-06-22 08:14:02.070000',1);
INSERT INTO portunes_identifier VALUES(1058,'Tanımsız kart','65540',0,2,'2017-06-22 08:14:02.147000',1);
INSERT INTO portunes_identifier VALUES(1059,'Tanımsız kart','4198400',0,2,'2017-06-22 08:14:02.224000',1);
INSERT INTO portunes_identifier VALUES(1060,'Tanımsız kart','66048',0,2,'2017-06-22 08:14:02.301000',1);
INSERT INTO portunes_identifier VALUES(1061,'Tanımsız kart','132',0,2,'2017-06-22 08:14:02.534000',1);
INSERT INTO portunes_identifier VALUES(1062,'Tanımsız kart','8194',0,2,'2017-06-22 08:14:02.689000',1);
INSERT INTO portunes_identifier VALUES(1063,'Tanımsız kart','576',0,2,'2017-06-22 08:14:02.765000',1);
INSERT INTO portunes_identifier VALUES(1064,'Tanımsız kart','8912896',0,2,'2017-06-22 08:14:02.842000',1);
INSERT INTO portunes_identifier VALUES(1065,'Tanımsız kart','5242880',0,2,'2017-06-22 08:14:02.919000',1);
INSERT INTO portunes_identifier VALUES(1066,'Tanımsız kart','135168',0,2,'2017-06-22 08:14:02.996000',1);
INSERT INTO portunes_identifier VALUES(1067,'Tanımsız kart','2064',0,2,'2017-06-22 08:14:03.151000',1);
INSERT INTO portunes_identifier VALUES(1068,'Tanımsız kart','2097280',0,2,'2017-06-22 08:14:03.228000',1);
INSERT INTO portunes_identifier VALUES(1069,'Tanımsız kart','4727044',0,2,'2017-06-22 08:14:03.305000',1);
INSERT INTO portunes_identifier VALUES(1070,'Tanımsız kart','8388642',0,2,'2017-06-22 08:14:03.382000',1);
INSERT INTO portunes_identifier VALUES(1071,'Tanımsız kart','4194336',0,2,'2017-06-22 08:14:03.615000',1);
INSERT INTO portunes_identifier VALUES(1072,'Tanımsız kart','8324',0,2,'2017-06-22 08:14:03.692000',1);
INSERT INTO portunes_identifier VALUES(1073,'Tanımsız kart','4737600',0,2,'2017-06-22 08:14:03.769000',1);
INSERT INTO portunes_identifier VALUES(1074,'Tanımsız kart','592144',0,2,'2017-06-22 08:14:03.846000',1);
INSERT INTO portunes_identifier VALUES(1075,'Tanımsız kart','2113552',0,2,'2017-06-22 08:14:03.923000',1);
INSERT INTO portunes_identifier VALUES(1076,'Tanımsız kart','4720672',0,2,'2017-06-22 08:14:04',1);
INSERT INTO portunes_identifier VALUES(1077,'Tanımsız kart','17408',0,2,'2017-06-22 08:14:04.077000',1);
INSERT INTO portunes_identifier VALUES(1078,'Tanımsız kart','4194308',0,2,'2017-06-22 08:14:04.310000',1);
INSERT INTO portunes_identifier VALUES(1079,'Tanımsız kart','272',0,2,'2017-06-22 08:14:04.465000',1);
INSERT INTO portunes_identifier VALUES(1080,'Tanımsız kart','4341760',0,2,'2017-06-22 08:14:04.697000',1);
INSERT INTO portunes_identifier VALUES(1081,'Tanımsız kart','263170',0,2,'2017-06-22 08:14:04.774000',1);
INSERT INTO portunes_identifier VALUES(1082,'Tanımsız kart','8421440',0,2,'2017-06-22 08:14:04.851000',1);
INSERT INTO portunes_identifier VALUES(1083,'Tanımsız kart','262152',0,2,'2017-06-22 08:14:05.006000',1);
INSERT INTO portunes_identifier VALUES(1084,'Tanımsız kart','65544',0,2,'2017-06-22 08:14:05.084000',1);
INSERT INTO portunes_identifier VALUES(1085,'Tanımsız kart','12237095',0,2,'2017-06-22 08:24:06.200000',1);
INSERT INTO portunes_identifier VALUES(1086,'Tanımsız kart','8388624',0,2,'2017-06-22 08:27:06.686000',1);
INSERT INTO portunes_identifier VALUES(1087,'Tanımsız kart','4227076',0,2,'2017-06-22 08:27:06.763000',1);
INSERT INTO portunes_identifier VALUES(1088,'Tanımsız kart','262176',0,2,'2017-06-22 08:27:06.841000',1);
INSERT INTO portunes_identifier VALUES(1089,'Tanımsız kart','1048642',0,2,'2017-06-22 08:27:07.073000',1);
INSERT INTO portunes_identifier VALUES(1090,'Tanımsız kart','2097296',0,2,'2017-06-22 08:27:07.150000',1);
INSERT INTO portunes_identifier VALUES(1091,'Tanımsız kart','4718720',0,2,'2017-06-22 08:27:07.227000',1);
INSERT INTO portunes_identifier VALUES(1092,'Tanımsız kart','147457',0,2,'2017-06-22 08:27:07.538000',1);
INSERT INTO portunes_identifier VALUES(1093,'Tanımsız kart','65568',0,2,'2017-06-22 08:27:08.240000',1);
INSERT INTO portunes_identifier VALUES(1094,'Tanımsız kart','8429696',0,2,'2017-06-22 08:27:08.473000',1);
INSERT INTO portunes_identifier VALUES(1095,'Tanımsız kart','1049088',0,2,'2017-06-22 08:27:08.550000',1);
INSERT INTO portunes_identifier VALUES(1096,'Tanımsız kart','2112',0,2,'2017-06-22 08:27:08.705000',1);
INSERT INTO portunes_identifier VALUES(1097,'Tanımsız kart','2629632',0,2,'2017-06-22 08:27:08.781000',1);
INSERT INTO portunes_identifier VALUES(1098,'Tanımsız kart','279552',0,2,'2017-06-22 08:27:08.858000',1);
INSERT INTO portunes_identifier VALUES(1099,'Tanımsız kart','16449',0,2,'2017-06-22 08:27:08.935000',1);
INSERT INTO portunes_identifier VALUES(1100,'Tanımsız kart','138',0,2,'2017-06-22 08:27:09.012000',1);
INSERT INTO portunes_identifier VALUES(1101,'Tanımsız kart','132242',0,2,'2017-06-22 08:27:09.088000',1);
INSERT INTO portunes_identifier VALUES(1102,'Tanımsız kart','327680',0,2,'2017-06-22 08:27:09.399000',1);
INSERT INTO portunes_identifier VALUES(1103,'Tanımsız kart','1048580',0,2,'2017-06-22 08:27:09.476000',1);
INSERT INTO portunes_identifier VALUES(1104,'Tanımsız kart','2105376',0,2,'2017-06-22 08:27:09.633000',1);
INSERT INTO portunes_identifier VALUES(1105,'Tanımsız kart','36',0,2,'2017-06-22 08:27:09.865000',1);
INSERT INTO portunes_identifier VALUES(1106,'Tanımsız kart','4608',0,2,'2017-06-22 08:27:09.941000',1);
INSERT INTO portunes_identifier VALUES(1107,'Tanımsız kart','514',0,2,'2017-06-22 08:27:10.096000',1);
INSERT INTO portunes_identifier VALUES(1108,'Tanımsız kart','82056',0,2,'2017-06-22 08:27:10.173000',1);
INSERT INTO portunes_identifier VALUES(1109,'Tanımsız kart','4612',0,2,'2017-06-22 08:27:10.250000',1);
INSERT INTO portunes_identifier VALUES(1110,'Tanımsız kart','1086464',0,2,'2017-06-22 08:27:10.327000',1);
INSERT INTO portunes_identifier VALUES(1111,'Tanımsız kart','516',0,2,'2017-06-22 08:27:10.404000',1);
INSERT INTO portunes_identifier VALUES(1112,'Tanımsız kart','1048578',0,2,'2017-06-22 08:27:10.481000',1);
INSERT INTO portunes_identifier VALUES(1113,'Tanımsız kart','4726928',0,2,'2017-06-22 08:27:10.636000',1);
INSERT INTO portunes_identifier VALUES(1114,'Tanımsız kart','524353',0,2,'2017-06-22 08:27:10.712000',1);
INSERT INTO portunes_identifier VALUES(1115,'Tanımsız kart','9453570',0,2,'2017-06-22 08:27:10.945000',1);
INSERT INTO portunes_identifier VALUES(1116,'Tanımsız kart','4098',0,2,'2017-06-22 08:27:11.022000',1);
INSERT INTO portunes_identifier VALUES(1117,'Tanımsız kart','20496',0,2,'2017-06-22 08:27:11.099000',1);
INSERT INTO portunes_identifier VALUES(1118,'Tanımsız kart','65680',0,2,'2017-06-22 08:27:11.332000',1);
INSERT INTO portunes_identifier VALUES(1119,'Tanımsız kart','66696',0,2,'2017-06-22 08:27:11.486000',1);
INSERT INTO portunes_identifier VALUES(1120,'Tanımsız kart','4867072',0,2,'2017-06-22 08:27:11.642000',1);
INSERT INTO portunes_identifier VALUES(1121,'Tanımsız kart','557056',0,2,'2017-06-22 08:27:11.719000',1);
INSERT INTO portunes_identifier VALUES(1122,'Tanımsız kart','135170',0,2,'2017-06-22 08:27:11.796000',1);
INSERT INTO portunes_identifier VALUES(1123,'Tanımsız kart','4210688',0,2,'2017-06-22 08:27:11.873000',1);
INSERT INTO portunes_identifier VALUES(1124,'Tanımsız kart','32832',0,2,'2017-06-22 08:27:11.950000',1);
INSERT INTO portunes_identifier VALUES(1125,'Tanımsız kart','4464640',0,2,'2017-06-22 08:27:12.027000',1);
INSERT INTO portunes_identifier VALUES(1126,'Tanımsız kart','136',0,2,'2017-06-22 08:27:12.104000',1);
INSERT INTO portunes_identifier VALUES(1127,'Tanımsız kart','1114368',0,2,'2017-06-22 08:27:12.181000',1);
INSERT INTO portunes_identifier VALUES(1128,'Tanımsız kart','32786',0,2,'2017-06-22 08:27:12.258000',1);
INSERT INTO portunes_identifier VALUES(1129,'Tanımsız kart','262402',0,2,'2017-06-22 08:27:12.335000',1);
INSERT INTO portunes_identifier VALUES(1130,'Tanımsız kart','264194',0,2,'2017-06-22 08:27:12.490000',1);
INSERT INTO portunes_identifier VALUES(1131,'Tanımsız kart','147473',0,2,'2017-06-22 08:27:12.644000',1);
INSERT INTO portunes_identifier VALUES(1132,'Tanımsız kart','1065024',0,2,'2017-06-22 08:27:12.722000',1);
INSERT INTO portunes_identifier VALUES(1133,'Tanımsız kart','558208',0,2,'2017-06-22 08:27:12.799000',1);
INSERT INTO portunes_identifier VALUES(1134,'Tanımsız kart','8519680',0,2,'2017-06-22 08:27:12.876000',1);
INSERT INTO portunes_identifier VALUES(1135,'Tanımsız kart','528384',0,2,'2017-06-22 08:27:12.953000',1);
INSERT INTO portunes_identifier VALUES(1136,'Tanımsız kart','1179904',0,2,'2017-06-22 08:27:13.108000',1);
INSERT INTO portunes_identifier VALUES(1137,'Tanımsız kart','263168',0,2,'2017-06-22 08:27:13.184000',1);
INSERT INTO portunes_identifier VALUES(1138,'Tanımsız kart','32770',0,2,'2017-06-22 08:27:13.261000',1);
INSERT INTO portunes_identifier VALUES(1139,'Tanımsız kart','589840',0,2,'2017-06-22 08:27:13.416000',1);
INSERT INTO portunes_identifier VALUES(1140,'Tanımsız kart','327712',0,2,'2017-06-22 08:27:13.492000',1);
INSERT INTO portunes_identifier VALUES(1141,'Tanımsız kart','8388752',0,2,'2017-06-22 08:27:13.569000',1);
INSERT INTO portunes_identifier VALUES(1142,'Tanımsız kart','20610',0,2,'2017-06-22 08:27:13.879000',1);
INSERT INTO portunes_identifier VALUES(1143,'Tanımsız kart','4203008',0,2,'2017-06-22 08:27:13.956000',1);
INSERT INTO portunes_identifier VALUES(1144,'Tanımsız kart','1056768',0,2,'2017-06-22 08:27:14.033000',1);
INSERT INTO portunes_identifier VALUES(1145,'Tanımsız kart','4194816',0,2,'2017-06-22 08:27:14.111000',1);
INSERT INTO portunes_identifier VALUES(1146,'Tanımsız kart','525312',0,2,'2017-06-22 08:27:14.188000',1);
INSERT INTO portunes_identifier VALUES(1147,'Tanımsız kart','16416',0,2,'2017-06-22 08:27:14.343000',1);
INSERT INTO portunes_identifier VALUES(1148,'Tanımsız kart','2097664',0,2,'2017-06-22 08:27:14.420000',1);
INSERT INTO portunes_identifier VALUES(1149,'Tanımsız kart','1180160',0,2,'2017-06-22 08:27:14.653000',1);
INSERT INTO portunes_identifier VALUES(1150,'Tanımsız kart','13895700',0,2,'2017-06-22 08:28:14.894000',1);
INSERT INTO portunes_identifier VALUES(1151,'Tanımsız kart','12234571',0,2,'2017-06-22 08:31:15.613000',1);
INSERT INTO portunes_identifier VALUES(1152,'Tanımsız kart','13347572',0,2,'2017-06-22 08:31:15.771000',1);
INSERT INTO portunes_identifier VALUES(1153,'Tanımsız kart','12236922',0,2,'2017-06-22 08:39:16.689000',1);
INSERT INTO portunes_identifier VALUES(1154,'Tanımsız kart','1083424',0,2,'2017-06-22 08:40:17.008000',1);
INSERT INTO portunes_identifier VALUES(1155,'Tanımsız kart','4260128',0,2,'2017-06-22 08:40:17.241000',1);
INSERT INTO portunes_identifier VALUES(1156,'Tanımsız kart','18432',0,2,'2017-06-22 08:40:17.395000',1);
INSERT INTO portunes_identifier VALUES(1157,'Tanımsız kart','1057352',0,2,'2017-06-22 08:40:17.473000',1);
INSERT INTO portunes_identifier VALUES(1158,'Tanımsız kart','524292',0,2,'2017-06-22 08:40:17.550000',1);
INSERT INTO portunes_identifier VALUES(1159,'Tanımsız kart','131200',0,2,'2017-06-22 08:40:17.705000',1);
INSERT INTO portunes_identifier VALUES(1160,'Tanımsız kart','1184',0,2,'2017-06-22 08:40:17.782000',1);
INSERT INTO portunes_identifier VALUES(1161,'Tanımsız kart','17024',0,2,'2017-06-22 08:40:17.859000',1);
INSERT INTO portunes_identifier VALUES(1162,'Tanımsız kart','65602',0,2,'2017-06-22 08:40:17.935000',1);
INSERT INTO portunes_identifier VALUES(1163,'Tanımsız kart','67648',0,2,'2017-06-22 08:40:18.012000',1);
INSERT INTO portunes_identifier VALUES(1164,'Tanımsız kart','80',0,2,'2017-06-22 08:40:18.089000',1);
INSERT INTO portunes_identifier VALUES(1165,'Tanımsız kart','148480',0,2,'2017-06-22 08:40:18.166000',1);
INSERT INTO portunes_identifier VALUES(1166,'Tanımsız kart','1188872',0,2,'2017-06-22 08:40:18.398000',1);
INSERT INTO portunes_identifier VALUES(1167,'Tanımsız kart','1085954',0,2,'2017-06-22 08:40:18.475000',1);
INSERT INTO portunes_identifier VALUES(1168,'Tanımsız kart','8519684',0,2,'2017-06-22 08:40:18.552000',1);
INSERT INTO portunes_identifier VALUES(1169,'Tanımsız kart','532512',0,2,'2017-06-22 08:40:18.629000',1);
INSERT INTO portunes_identifier VALUES(1170,'Tanımsız kart','8390721',0,2,'2017-06-22 08:40:18.706000',1);
INSERT INTO portunes_identifier VALUES(1171,'Tanımsız kart','2359817',0,2,'2017-06-22 08:40:18.784000',1);
INSERT INTO portunes_identifier VALUES(1172,'Tanımsız kart','1052672',0,2,'2017-06-22 08:40:18.940000',1);
INSERT INTO portunes_identifier VALUES(1173,'Tanımsız kart','1048594',0,2,'2017-06-22 08:40:19.172000',1);
INSERT INTO portunes_identifier VALUES(1174,'Tanımsız kart','32804',0,2,'2017-06-22 08:40:19.248000',1);
INSERT INTO portunes_identifier VALUES(1175,'Tanımsız kart','2099208',0,2,'2017-06-22 08:40:19.325000',1);
INSERT INTO portunes_identifier VALUES(1176,'Tanımsız kart','9438338',0,2,'2017-06-22 08:40:19.402000',1);
INSERT INTO portunes_identifier VALUES(1177,'Tanımsız kart','8454148',0,2,'2017-06-22 08:40:19.713000',1);
INSERT INTO portunes_identifier VALUES(1178,'Tanımsız kart','8520704',0,2,'2017-06-22 08:40:19.790000',1);
INSERT INTO portunes_identifier VALUES(1179,'Tanımsız kart','294916',0,2,'2017-06-22 08:40:19.867000',1);
INSERT INTO portunes_identifier VALUES(1180,'Tanımsız kart','1050656',0,2,'2017-06-22 08:40:19.944000',1);
INSERT INTO portunes_identifier VALUES(1181,'Tanımsız kart','139330',0,2,'2017-06-22 08:40:20.100000',1);
INSERT INTO portunes_identifier VALUES(1182,'Tanımsız kart','4259904',0,2,'2017-06-22 08:40:20.488000',1);
INSERT INTO portunes_identifier VALUES(1183,'Tanımsız kart','17440',0,2,'2017-06-22 08:40:20.565000',1);
INSERT INTO portunes_identifier VALUES(1184,'Tanımsız kart','1114120',0,2,'2017-06-22 08:40:20.642000',1);
INSERT INTO portunes_identifier VALUES(1185,'Tanımsız kart','66560',0,2,'2017-06-22 08:40:20.796000',1);
INSERT INTO portunes_identifier VALUES(1186,'Tanımsız kart','8421376',0,2,'2017-06-22 08:40:20.873000',1);
INSERT INTO portunes_identifier VALUES(1187,'Tanımsız kart','16392',0,2,'2017-06-22 08:40:20.951000',1);
INSERT INTO portunes_identifier VALUES(1188,'Tanımsız kart','8650753',0,2,'2017-06-22 08:40:21.028000',1);
INSERT INTO portunes_identifier VALUES(1189,'Tanımsız kart','18448',0,2,'2017-06-22 08:40:21.104000',1);
INSERT INTO portunes_identifier VALUES(1190,'Tanımsız kart','69776',0,2,'2017-06-22 08:40:21.493000',1);
INSERT INTO portunes_identifier VALUES(1191,'Tanımsız kart','4456578',0,2,'2017-06-22 08:40:21.569000',1);
INSERT INTO portunes_identifier VALUES(1192,'Tanımsız kart','1058',0,2,'2017-06-22 08:40:21.646000',1);
INSERT INTO portunes_identifier VALUES(1193,'Tanımsız kart','262160',0,2,'2017-06-22 08:40:21.723000',1);
INSERT INTO portunes_identifier VALUES(1194,'Tanımsız kart','4256',0,2,'2017-06-22 08:40:21.956000',1);
INSERT INTO portunes_identifier VALUES(1195,'Tanımsız kart','4461056',0,2,'2017-06-22 08:40:22.189000',1);
INSERT INTO portunes_identifier VALUES(1196,'Tanımsız kart','33026',0,2,'2017-06-22 08:40:22.422000',1);
INSERT INTO portunes_identifier VALUES(1197,'Tanımsız kart','2164744',0,2,'2017-06-22 08:40:22.499000',1);
INSERT INTO portunes_identifier VALUES(1198,'Tanımsız kart','65537',0,2,'2017-06-22 08:40:22.575000',1);
INSERT INTO portunes_identifier VALUES(1199,'Tanımsız kart','8404992',0,2,'2017-06-22 08:40:22.731000',1);
INSERT INTO portunes_identifier VALUES(1200,'Tanımsız kart','1057280',0,2,'2017-06-22 08:40:22.886000',1);
INSERT INTO portunes_identifier VALUES(1201,'Tanımsız kart','4194306',0,2,'2017-06-22 08:40:23.119000',1);
INSERT INTO portunes_identifier VALUES(1202,'Tanımsız kart','16777135',0,2,'2017-06-22 08:41:23.438000',1);
INSERT INTO portunes_identifier VALUES(1203,'Tanımsız kart','1059766',0,2,'2017-06-22 08:41:23.516000',1);
INSERT INTO portunes_identifier VALUES(1204,'Tanımsız kart','15587963',0,2,'2017-06-22 08:41:23.593000',1);
INSERT INTO portunes_identifier VALUES(1205,'Tanımsız kart','16646143',0,2,'2017-06-22 08:54:24.985000',1);
INSERT INTO portunes_identifier VALUES(1206,'Tanımsız kart','8371423',0,2,'2017-06-22 08:54:25.062000',1);
INSERT INTO portunes_identifier VALUES(1207,'Tanımsız kart','9695083',0,2,'2017-06-22 08:54:25.139000',1);
INSERT INTO portunes_identifier VALUES(1208,'Tanımsız kart','16752619',0,2,'2017-06-22 08:54:25.216000',1);
INSERT INTO portunes_identifier VALUES(1209,'Tanımsız kart','13958869',0,2,'2017-06-22 08:54:25.448000',1);
INSERT INTO portunes_identifier VALUES(1210,'Tanımsız kart','16775165',0,2,'2017-06-22 08:54:25.525000',1);
INSERT INTO portunes_identifier VALUES(1211,'Tanımsız kart','15695861',0,2,'2017-06-22 08:54:25.602000',1);
INSERT INTO portunes_identifier VALUES(1212,'Tanımsız kart','16768733',0,2,'2017-06-22 08:54:25.679000',1);
INSERT INTO portunes_identifier VALUES(1213,'Tanımsız kart','16760829',0,2,'2017-06-22 08:54:25.756000',1);
INSERT INTO portunes_identifier VALUES(1214,'Tanımsız kart','9944768',0,2,'2017-06-22 09:07:27.235000',1);
INSERT INTO portunes_identifier VALUES(1215,'Tanımsız kart','12432855',0,2,'2017-06-22 09:07:27.313000',1);
INSERT INTO portunes_identifier VALUES(1216,'Tanımsız kart','13892311',0,2,'2017-06-22 09:07:27.389000',1);
INSERT INTO portunes_identifier VALUES(1217,'Tanımsız kart','16711679',0,2,'2017-06-22 09:07:27.467000',1);
INSERT INTO portunes_identifier VALUES(1218,'Tanımsız kart','15989999',0,2,'2017-06-22 09:07:27.544000',1);
INSERT INTO portunes_identifier VALUES(1219,'Tanımsız kart','12566396',0,2,'2017-06-22 09:07:27.621000',1);
INSERT INTO portunes_identifier VALUES(1220,'Tanımsız kart','7829439',0,2,'2017-06-22 09:07:27.698000',1);
INSERT INTO portunes_identifier VALUES(1221,'Tanımsız kart','16777215',0,2,'2017-06-22 09:20:29.369000',1);
INSERT INTO portunes_identifier VALUES(1222,'Tanımsız kart','12975071',0,2,'2017-06-22 09:20:29.447000',1);
INSERT INTO portunes_identifier VALUES(1223,'Tanımsız kart','13500407',0,2,'2017-06-22 09:20:29.524000',1);
INSERT INTO portunes_identifier VALUES(1224,'Tanımsız kart','16777151',0,2,'2017-06-22 09:20:29.602000',1);
INSERT INTO portunes_identifier VALUES(1225,'Tanımsız kart','8038830',0,2,'2017-06-22 09:20:29.679000',1);
INSERT INTO portunes_identifier VALUES(1226,'Tanımsız kart','14680047',0,2,'2017-06-22 09:20:29.756000',1);
INSERT INTO portunes_identifier VALUES(1227,'Tanımsız kart','16613375',0,2,'2017-06-22 09:20:29.833000',1);
INSERT INTO portunes_identifier VALUES(1228,'Tanımsız kart','15334221',0,2,'2017-06-22 09:20:29.911000',1);
INSERT INTO portunes_identifier VALUES(1229,'Tanımsız kart','16119790',0,2,'2017-06-22 09:20:29.988000',1);
INSERT INTO portunes_identifier VALUES(1230,'Tanımsız kart','9570475',0,2,'2017-06-22 10:12:35.669000',1);
INSERT INTO portunes_identifier VALUES(1231,'Tanımsız kart','2114068',0,2,'2017-06-22 10:16:37.010000',1);
INSERT INTO portunes_identifier VALUES(1232,'Tanımsız kart','14379690',0,2,'2017-06-22 10:29:38.549000',1);
INSERT INTO portunes_identifier VALUES(1233,'Tanımsız kart','4930232',0,2,'2017-06-22 10:32:39.844000',1);
INSERT INTO portunes_identifier VALUES(1234,'Tanımsız kart','12079802',0,2,'2017-06-22 10:32:39.999000',1);
INSERT INTO portunes_identifier VALUES(1235,'Tanımsız kart','12079822',0,2,'2017-06-22 10:32:40.076000',1);
INSERT INTO portunes_identifier VALUES(1236,'Tanımsız kart','12134318',0,2,'2017-06-22 10:58:46.688000',1);
INSERT INTO portunes_identifier VALUES(1237,'Tanımsız kart','9599722',0,2,'2017-06-22 10:58:47.924000',1);
INSERT INTO portunes_identifier VALUES(1238,'Tanımsız kart','16153643',0,2,'2017-06-22 10:58:48.620000',1);
INSERT INTO portunes_identifier VALUES(1239,'Tanımsız kart','2208',0,2,'2017-06-22 11:16:54.932000',1);
INSERT INTO portunes_identifier VALUES(1240,'Tanımsız kart','9437224',0,2,'2017-06-22 11:16:55.009000',1);
INSERT INTO portunes_identifier VALUES(1241,'Tanımsız kart','139264',0,2,'2017-06-22 11:16:55.087000',1);
INSERT INTO portunes_identifier VALUES(1242,'Tanımsız kart','524304',0,2,'2017-06-22 11:16:55.164000',1);
INSERT INTO portunes_identifier VALUES(1243,'Tanımsız kart','8256',0,2,'2017-06-22 11:16:55.318000',1);
INSERT INTO portunes_identifier VALUES(1244,'Tanımsız kart','8392769',0,2,'2017-06-22 11:16:55.395000',1);
INSERT INTO portunes_identifier VALUES(1245,'Tanımsız kart','16393',0,2,'2017-06-22 11:16:55.472000',1);
INSERT INTO portunes_identifier VALUES(1246,'Tanımsız kart','1067072',0,2,'2017-06-22 11:16:55.549000',1);
INSERT INTO portunes_identifier VALUES(1247,'Tanımsız kart','2265152',0,2,'2017-06-22 11:16:55.704000',1);
INSERT INTO portunes_identifier VALUES(1248,'Tanımsız kart','2228224',0,2,'2017-06-22 11:16:55.781000',1);
INSERT INTO portunes_identifier VALUES(1249,'Tanımsız kart','4751360',0,2,'2017-06-22 11:16:55.936000',1);
INSERT INTO portunes_identifier VALUES(1250,'Tanımsız kart','591872',0,2,'2017-06-22 11:16:56.013000',1);
INSERT INTO portunes_identifier VALUES(1251,'Tanımsız kart','8455202',0,2,'2017-06-22 11:16:56.090000',1);
INSERT INTO portunes_identifier VALUES(1252,'Tanımsız kart','65792',0,2,'2017-06-22 11:16:56.167000',1);
INSERT INTO portunes_identifier VALUES(1253,'Tanımsız kart','4202642',0,2,'2017-06-22 11:16:56.244000',1);
INSERT INTO portunes_identifier VALUES(1254,'Tanımsız kart','8388744',0,2,'2017-06-22 11:16:56.632000',1);
INSERT INTO portunes_identifier VALUES(1255,'Tanımsız kart','524296',0,2,'2017-06-22 11:16:56.709000',1);
INSERT INTO portunes_identifier VALUES(1256,'Tanımsız kart','1160',0,2,'2017-06-22 11:16:56.942000',1);
INSERT INTO portunes_identifier VALUES(1257,'Tanımsız kart','4210690',0,2,'2017-06-22 11:16:57.174000',1);
INSERT INTO portunes_identifier VALUES(1258,'Tanımsız kart','8454273',0,2,'2017-06-22 11:16:57.330000',1);
INSERT INTO portunes_identifier VALUES(1259,'Tanımsız kart','278656',0,2,'2017-06-22 11:16:57.562000',1);
INSERT INTO portunes_identifier VALUES(1260,'Tanımsız kart','1088',0,2,'2017-06-22 11:16:57.640000',1);
INSERT INTO portunes_identifier VALUES(1261,'Tanımsız kart','2098240',0,2,'2017-06-22 11:16:57.717000',1);
INSERT INTO portunes_identifier VALUES(1262,'Tanımsız kart','149506',0,2,'2017-06-22 11:16:57.871000',1);
INSERT INTO portunes_identifier VALUES(1263,'Tanımsız kart','15707478',0,2,'2017-06-22 11:31:03.220000',1);
INSERT INTO portunes_identifier VALUES(1264,'Tanımsız kart','12231516',0,2,'2017-06-22 12:04:07.148000',1);
INSERT INTO portunes_identifier VALUES(1265,'Tanımsız kart','2795812',0,2,'2017-06-22 12:08:08.019000',1);
INSERT INTO portunes_identifier VALUES(1266,'Tanımsız kart','11183108',0,2,'2017-06-22 12:40:13.360000',1);
INSERT INTO portunes_identifier VALUES(1267,'Tanımsız kart','86674',0,2,'2017-06-22 12:48:14.099000',1);
INSERT INTO portunes_identifier VALUES(1268,'Tanımsız kart','532480',0,2,'2017-06-22 13:14:16.525000',1);
INSERT INTO portunes_identifier VALUES(1269,'Tanımsız kart','557072',0,2,'2017-06-22 13:14:16.603000',1);
INSERT INTO portunes_identifier VALUES(1270,'Tanımsız kart','2114048',0,2,'2017-06-22 13:14:16.679000',1);
INSERT INTO portunes_identifier VALUES(1271,'Tanımsız kart','4194372',0,2,'2017-06-22 13:14:16.756000',1);
INSERT INTO portunes_identifier VALUES(1272,'Tanımsız kart','2099200',0,2,'2017-06-22 13:14:16.911000',1);
INSERT INTO portunes_identifier VALUES(1273,'Tanımsız kart','2261249',0,2,'2017-06-22 13:14:16.987000',1);
INSERT INTO portunes_identifier VALUES(1274,'Tanımsız kart','262148',0,2,'2017-06-22 13:14:17.221000',1);
INSERT INTO portunes_identifier VALUES(1275,'Tanımsız kart','1049634',0,2,'2017-06-22 13:14:17.298000',1);
INSERT INTO portunes_identifier VALUES(1276,'Tanımsız kart','4229152',0,2,'2017-06-22 13:14:17.375000',1);
INSERT INTO portunes_identifier VALUES(1277,'Tanımsız kart','1048705',0,2,'2017-06-22 13:14:17.452000',1);
INSERT INTO portunes_identifier VALUES(1278,'Tanımsız kart','132096',0,2,'2017-06-22 13:14:17.528000',1);
INSERT INTO portunes_identifier VALUES(1279,'Tanımsız kart','8264',0,2,'2017-06-22 13:14:17.605000',1);
INSERT INTO portunes_identifier VALUES(1280,'Tanımsız kart','65552',0,2,'2017-06-22 13:14:17.682000',1);
INSERT INTO portunes_identifier VALUES(1281,'Tanımsız kart','262401',0,2,'2017-06-22 13:14:17.837000',1);
INSERT INTO portunes_identifier VALUES(1282,'Tanımsız kart','32900',0,2,'2017-06-22 13:14:17.913000',1);
INSERT INTO portunes_identifier VALUES(1283,'Tanımsız kart','8405248',0,2,'2017-06-22 13:14:18.068000',1);
INSERT INTO portunes_identifier VALUES(1284,'Tanımsız kart','9455616',0,2,'2017-06-22 13:14:18.146000',1);
INSERT INTO portunes_identifier VALUES(1285,'Tanımsız kart','558084',0,2,'2017-06-22 13:14:18.300000',1);
INSERT INTO portunes_identifier VALUES(1286,'Tanımsız kart','33024',0,2,'2017-06-22 13:14:18.377000',1);
INSERT INTO portunes_identifier VALUES(1287,'Tanımsız kart','8389120',0,2,'2017-06-22 13:14:18.531000',1);
INSERT INTO portunes_identifier VALUES(1288,'Tanımsız kart','81952',0,2,'2017-06-22 13:14:18.609000',1);
INSERT INTO portunes_identifier VALUES(1289,'Tanımsız kart','131081',0,2,'2017-06-22 13:14:18.685000',1);
INSERT INTO portunes_identifier VALUES(1290,'Tanımsız kart','1049664',0,2,'2017-06-22 13:14:18.840000',1);
INSERT INTO portunes_identifier VALUES(1291,'Tanımsız kart','2232353',0,2,'2017-06-22 13:14:18.917000',1);
INSERT INTO portunes_identifier VALUES(1292,'Tanımsız kart','65808',0,2,'2017-06-22 13:14:18.994000',1);
INSERT INTO portunes_identifier VALUES(1293,'Tanımsız kart','4194432',0,2,'2017-06-22 13:14:19.148000',1);
INSERT INTO portunes_identifier VALUES(1294,'Tanımsız kart','2098177',0,2,'2017-06-22 13:14:19.225000',1);
INSERT INTO portunes_identifier VALUES(1295,'Tanımsız kart','528392',0,2,'2017-06-22 13:14:19.456000',1);
INSERT INTO portunes_identifier VALUES(1296,'Tanımsız kart','131202',0,2,'2017-06-22 13:14:19.767000',1);
INSERT INTO portunes_identifier VALUES(1297,'Tanımsız kart','16896',0,2,'2017-06-22 13:14:19.844000',1);
INSERT INTO portunes_identifier VALUES(1298,'Tanımsız kart','129',0,2,'2017-06-22 13:14:19.921000',1);
INSERT INTO portunes_identifier VALUES(1299,'Tanımsız kart','2113570',0,2,'2017-06-22 13:14:19.998000',1);
INSERT INTO portunes_identifier VALUES(1300,'Tanımsız kart','2097298',0,2,'2017-06-22 13:14:20.075000',1);
INSERT INTO portunes_identifier VALUES(1301,'Tanımsız kart','32896',0,2,'2017-06-22 13:14:20.230000',1);
INSERT INTO portunes_identifier VALUES(1302,'Tanımsız kart','655360',0,2,'2017-06-22 13:14:20.384000',1);
INSERT INTO portunes_identifier VALUES(1303,'Tanımsız kart','73856',0,2,'2017-06-22 13:14:20.539000',1);
INSERT INTO portunes_identifier VALUES(1304,'Tanımsız kart','280864',0,2,'2017-06-22 13:14:20.616000',1);
INSERT INTO portunes_identifier VALUES(1305,'Tanımsız kart','4342272',0,2,'2017-06-22 13:14:20.771000',1);
INSERT INTO portunes_identifier VALUES(1306,'Tanımsız kart','36992',0,2,'2017-06-22 13:14:20.927000',1);
INSERT INTO portunes_identifier VALUES(1307,'Tanımsız kart','1056769',0,2,'2017-06-22 13:14:21.005000',1);
INSERT INTO portunes_identifier VALUES(1308,'Tanımsız kart','8536584',0,2,'2017-06-22 13:14:21.237000',1);
INSERT INTO portunes_identifier VALUES(1309,'Tanımsız kart','280580',0,2,'2017-06-22 13:14:21.313000',1);
INSERT INTO portunes_identifier VALUES(1310,'Tanımsız kart','528640',0,2,'2017-06-22 13:14:21.390000',1);
INSERT INTO portunes_identifier VALUES(1311,'Tanımsız kart','41472',0,2,'2017-06-22 13:14:21.467000',1);
INSERT INTO portunes_identifier VALUES(1312,'Tanımsız kart','591876',0,2,'2017-06-22 13:14:21.544000',1);
INSERT INTO portunes_identifier VALUES(1313,'Tanımsız kart','131089',0,2,'2017-06-22 13:14:21.620000',1);
INSERT INTO portunes_identifier VALUES(1314,'Tanımsız kart','1065104',0,2,'2017-06-22 13:14:21.697000',1);
INSERT INTO portunes_identifier VALUES(1315,'Tanımsız kart','2098176',0,2,'2017-06-22 13:14:21.774000',1);
INSERT INTO portunes_identifier VALUES(1316,'Tanımsız kart','8397824',0,2,'2017-06-22 13:14:21.929000',1);
INSERT INTO portunes_identifier VALUES(1317,'Tanımsız kart','8454400',0,2,'2017-06-22 13:14:22.084000',1);
INSERT INTO portunes_identifier VALUES(1318,'Tanımsız kart','4259840',0,2,'2017-06-22 13:14:22.160000',1);
INSERT INTO portunes_identifier VALUES(1319,'Tanımsız kart','4416',0,2,'2017-06-22 13:14:22.238000',1);
INSERT INTO portunes_identifier VALUES(1320,'Tanımsız kart','8650816',0,2,'2017-06-22 13:14:22.315000',1);
INSERT INTO portunes_identifier VALUES(1321,'Tanımsız kart','4196360',0,2,'2017-06-22 13:27:24.384000',1);
INSERT INTO portunes_identifier VALUES(1322,'Tanımsız kart','266240',0,2,'2017-06-22 13:27:24.773000',1);
INSERT INTO portunes_identifier VALUES(1323,'Tanımsız kart','295232',0,2,'2017-06-22 13:27:24.850000',1);
INSERT INTO portunes_identifier VALUES(1324,'Tanımsız kart','299520',0,2,'2017-06-22 13:27:25.005000',1);
INSERT INTO portunes_identifier VALUES(1325,'Tanımsız kart','524816',0,2,'2017-06-22 13:27:25.237000',1);
INSERT INTO portunes_identifier VALUES(1326,'Tanımsız kart','33028',0,2,'2017-06-22 13:27:25.392000',1);
INSERT INTO portunes_identifier VALUES(1327,'Tanımsız kart','2592',0,2,'2017-06-22 13:27:25.547000',1);
INSERT INTO portunes_identifier VALUES(1328,'Tanımsız kart','8978432',0,2,'2017-06-22 13:27:25.701000',1);
INSERT INTO portunes_identifier VALUES(1329,'Tanımsız kart','8390656',0,2,'2017-06-22 13:27:25.856000',1);
INSERT INTO portunes_identifier VALUES(1330,'Tanımsız kart','130',0,2,'2017-06-22 13:27:26.011000',1);
INSERT INTO portunes_identifier VALUES(1331,'Tanımsız kart','2097681',0,2,'2017-06-22 13:27:26.244000',1);
INSERT INTO portunes_identifier VALUES(1332,'Tanımsız kart','32784',0,2,'2017-06-22 13:27:26.397000',1);
INSERT INTO portunes_identifier VALUES(1333,'Tanımsız kart','295938',0,2,'2017-06-22 13:27:26.551000',1);
INSERT INTO portunes_identifier VALUES(1334,'Tanımsız kart','1083392',0,2,'2017-06-22 13:27:26.628000',1);
INSERT INTO portunes_identifier VALUES(1335,'Tanımsız kart','8405120',0,2,'2017-06-22 13:27:26.704000',1);
INSERT INTO portunes_identifier VALUES(1336,'Tanımsız kart','4202496',0,2,'2017-06-22 13:27:26.781000',1);
INSERT INTO portunes_identifier VALUES(1337,'Tanımsız kart','532993',0,2,'2017-06-22 13:27:26.858000',1);
INSERT INTO portunes_identifier VALUES(1338,'Tanımsız kart','2367488',0,2,'2017-06-22 13:27:27.169000',1);
INSERT INTO portunes_identifier VALUES(1339,'Tanımsız kart','4211714',0,2,'2017-06-22 13:27:27.401000',1);
INSERT INTO portunes_identifier VALUES(1340,'Tanımsız kart','2375680',0,2,'2017-06-22 13:27:27.634000',1);
INSERT INTO portunes_identifier VALUES(1341,'Tanımsız kart','67600',0,2,'2017-06-22 13:27:27.711000',1);
INSERT INTO portunes_identifier VALUES(1342,'Tanımsız kart','8390664',0,2,'2017-06-22 13:27:27.904000',1);
INSERT INTO portunes_identifier VALUES(1343,'Tanımsız kart','2359424',0,2,'2017-06-22 13:27:28.166000',1);
INSERT INTO portunes_identifier VALUES(1344,'Tanımsız kart','1092',0,2,'2017-06-22 13:27:28.249000',1);
INSERT INTO portunes_identifier VALUES(1345,'Tanımsız kart','655368',0,2,'2017-06-22 13:27:28.506000',1);
INSERT INTO portunes_identifier VALUES(1346,'Tanımsız kart','9437200',0,2,'2017-06-22 13:27:28.591000',1);
INSERT INTO portunes_identifier VALUES(1347,'Tanımsız kart','131584',0,2,'2017-06-22 13:27:28.676000',1);
INSERT INTO portunes_identifier VALUES(1348,'Tanımsız kart','1310736',0,2,'2017-06-22 13:27:28.906000',1);
INSERT INTO portunes_identifier VALUES(1349,'Tanımsız kart','73792',0,2,'2017-06-22 13:27:29.060000',1);
INSERT INTO portunes_identifier VALUES(1350,'Tanımsız kart','2396160',0,2,'2017-06-22 13:27:29.215000',1);
INSERT INTO portunes_identifier VALUES(1351,'Tanımsız kart','8654850',0,2,'2017-06-22 13:27:29.292000',1);
INSERT INTO portunes_identifier VALUES(1352,'Tanımsız kart','4202497',0,2,'2017-06-22 13:27:29.448000',1);
INSERT INTO portunes_identifier VALUES(1353,'Tanımsız kart','1026',0,2,'2017-06-22 13:27:29.681000',1);
INSERT INTO portunes_identifier VALUES(1354,'Tanımsız kart','540672',0,2,'2017-06-22 13:27:29.834000',1);
INSERT INTO portunes_identifier VALUES(1355,'Tanımsız kart','524290',0,2,'2017-06-22 13:27:30.066000',1);
INSERT INTO portunes_identifier VALUES(1356,'Tanımsız kart','2066',0,2,'2017-06-22 13:27:30.143000',1);
INSERT INTO portunes_identifier VALUES(1357,'Tanımsız kart','2105344',0,2,'2017-06-22 13:27:30.298000',1);
INSERT INTO portunes_identifier VALUES(1358,'Tanımsız kart','9568260',0,2,'2017-06-22 13:27:30.609000',1);
INSERT INTO portunes_identifier VALUES(1359,'Tanımsız kart','147456',0,2,'2017-06-22 13:27:30.763000',1);
INSERT INTO portunes_identifier VALUES(1360,'Tanımsız kart','541220',0,2,'2017-06-22 13:27:30.840000',1);
INSERT INTO portunes_identifier VALUES(1361,'Tanımsız kart','2367620',0,2,'2017-06-22 13:27:31.073000',1);
INSERT INTO portunes_identifier VALUES(1362,'Tanımsız kart','2098178',0,2,'2017-06-22 13:27:31.149000',1);
INSERT INTO portunes_identifier VALUES(1363,'Tanımsız kart','17',0,2,'2017-06-22 13:27:31.304000',1);
INSERT INTO portunes_identifier VALUES(1364,'Tanımsız kart','131074',0,2,'2017-06-22 13:27:31.459000',1);
INSERT INTO portunes_identifier VALUES(1365,'Tanımsız kart','4352',0,2,'2017-06-22 13:27:31.537000',1);
INSERT INTO portunes_identifier VALUES(1366,'Tanımsız kart','1057024',0,2,'2017-06-22 13:27:31.614000',1);
INSERT INTO portunes_identifier VALUES(1367,'Tanımsız kart','288',0,2,'2017-06-22 13:27:31.846000',1);
INSERT INTO portunes_identifier VALUES(1368,'Tanımsız kart','73796',0,2,'2017-06-22 13:27:31.923000',1);
INSERT INTO portunes_identifier VALUES(1369,'Tanımsız kart','33792',0,2,'2017-06-22 13:27:32.156000',1);
INSERT INTO portunes_identifier VALUES(1370,'Tanımsız kart','262656',0,2,'2017-06-22 13:27:32.310000',1);
INSERT INTO portunes_identifier VALUES(1371,'Tanımsız kart','148616',0,2,'2017-06-22 13:27:32.465000',1);
INSERT INTO portunes_identifier VALUES(1372,'Tanımsız kart','640',0,2,'2017-06-22 13:27:33.039000',1);
INSERT INTO portunes_identifier VALUES(1373,'Tanımsız kart','1050624',0,2,'2017-06-22 13:27:33.194000',1);
INSERT INTO portunes_identifier VALUES(1374,'Tanımsız kart','4194560',0,2,'2017-06-22 13:27:33.349000',1);
INSERT INTO portunes_identifier VALUES(1375,'Tanımsız kart','65600',0,2,'2017-06-22 13:27:33.661000',1);
INSERT INTO portunes_identifier VALUES(1376,'Tanımsız kart','1096',0,2,'2017-06-22 13:27:33.893000',1);
INSERT INTO portunes_identifier VALUES(1377,'Tanımsız kart','278596',0,2,'2017-06-22 13:27:33.970000',1);
INSERT INTO portunes_identifier VALUES(1378,'Tanımsız kart','8396802',0,2,'2017-06-22 13:27:34.047000',1);
INSERT INTO portunes_identifier VALUES(1379,'Tanımsız kart','8388674',0,2,'2017-06-22 13:27:34.217000',1);
INSERT INTO portunes_identifier VALUES(1380,'Tanımsız kart','2097156',0,2,'2017-06-22 13:27:34.294000',1);
INSERT INTO portunes_identifier VALUES(1381,'Tanımsız kart','1050912',0,2,'2017-06-22 13:27:34.526000',1);
INSERT INTO portunes_identifier VALUES(1382,'Tanımsız kart','9437313',0,2,'2017-06-22 13:27:34.915000',1);
INSERT INTO portunes_identifier VALUES(1383,'Tanımsız kart','4196420',0,2,'2017-06-22 13:27:34.993000',1);
INSERT INTO portunes_identifier VALUES(1384,'Tanımsız kart','1116416',0,2,'2017-06-22 13:27:35.069000',1);
INSERT INTO portunes_identifier VALUES(1385,'Tanımsız kart','2099328',0,2,'2017-06-22 13:27:35.224000',1);
INSERT INTO portunes_identifier VALUES(1386,'Tanımsız kart','1049600',0,2,'2017-06-22 13:27:35.301000',1);
INSERT INTO portunes_identifier VALUES(1387,'Tanımsız kart','4719120',0,2,'2017-06-22 13:27:35.377000',1);
INSERT INTO portunes_identifier VALUES(1388,'Tanımsız kart','1050689',0,2,'2017-06-22 13:27:35.454000',1);
INSERT INTO portunes_identifier VALUES(1389,'Tanımsız kart','1179684',0,2,'2017-06-22 13:27:35.531000',1);
INSERT INTO portunes_identifier VALUES(1390,'Tanımsız kart','164360',0,2,'2017-06-22 13:27:35.608000',1);
INSERT INTO portunes_identifier VALUES(1391,'Tanımsız kart','4231808',0,2,'2017-06-22 13:27:35.840000',1);
INSERT INTO portunes_identifier VALUES(1392,'Tanımsız kart','8397056',0,2,'2017-06-22 13:27:35.917000',1);
INSERT INTO portunes_identifier VALUES(1393,'Tanımsız kart','1028',0,2,'2017-06-22 13:27:35.994000',1);
INSERT INTO portunes_identifier VALUES(1394,'Tanımsız kart','68100',0,2,'2017-06-22 13:27:36.071000',1);
INSERT INTO portunes_identifier VALUES(1395,'Tanımsız kart','589832',0,2,'2017-06-22 13:27:36.148000',1);
INSERT INTO portunes_identifier VALUES(1396,'Tanımsız kart','1048740',0,2,'2017-06-22 13:27:36.224000',1);
INSERT INTO portunes_identifier VALUES(1397,'Tanımsız kart','4202752',0,2,'2017-06-22 13:27:36.458000',1);
INSERT INTO portunes_identifier VALUES(1398,'Tanımsız kart','1048584',0,2,'2017-06-22 13:27:36.534000',1);
INSERT INTO portunes_identifier VALUES(1399,'Tanımsız kart','33280',0,2,'2017-06-22 13:27:36.843000',1);
INSERT INTO portunes_identifier VALUES(1400,'Tanımsız kart','8912898',0,2,'2017-06-22 13:27:37.076000',1);
INSERT INTO portunes_identifier VALUES(1401,'Tanımsız kart','2162720',0,2,'2017-06-22 13:27:37.231000',1);
INSERT INTO portunes_identifier VALUES(1402,'Tanımsız kart','1049616',0,2,'2017-06-22 13:27:37.620000',1);
INSERT INTO portunes_identifier VALUES(1403,'Tanımsız kart','8421632',0,2,'2017-06-22 13:27:37.699000',1);
INSERT INTO portunes_identifier VALUES(1404,'Tanımsız kart','2056',0,2,'2017-06-22 13:27:38.009000',1);
INSERT INTO portunes_identifier VALUES(1405,'Tanımsız kart','2101282',0,2,'2017-06-22 13:27:38.086000',1);
INSERT INTO portunes_identifier VALUES(1406,'Tanımsız kart','8396804',0,2,'2017-06-22 13:27:38.163000',1);
INSERT INTO portunes_identifier VALUES(1407,'Tanımsız kart','561440',0,2,'2017-06-22 13:27:38.551000',1);
INSERT INTO portunes_identifier VALUES(1408,'Tanımsız kart','132160',0,2,'2017-06-22 13:27:38.706000',1);
INSERT INTO portunes_identifier VALUES(1409,'Tanımsız kart','262400',0,2,'2017-06-22 13:27:38.861000',1);
INSERT INTO portunes_identifier VALUES(1410,'Tanımsız kart','1179648',0,2,'2017-06-22 13:27:38.937000',1);
INSERT INTO portunes_identifier VALUES(1411,'Tanımsız kart','9',0,2,'2017-06-22 13:27:39.482000',1);
INSERT INTO portunes_identifier VALUES(1412,'Tanımsız kart','2102309',0,2,'2017-06-22 13:32:40.516000',1);
INSERT INTO portunes_identifier VALUES(1413,'Tanımsız kart','8388610',0,2,'2017-06-22 13:40:41.963000',1);
INSERT INTO portunes_identifier VALUES(1414,'Tanımsız kart','4198913',0,2,'2017-06-22 13:40:42.118000',1);
INSERT INTO portunes_identifier VALUES(1415,'Tanımsız kart','131090',0,2,'2017-06-22 13:40:42.273000',1);
INSERT INTO portunes_identifier VALUES(1416,'Tanımsız kart','69636',0,2,'2017-06-22 13:40:42.428000',1);
INSERT INTO portunes_identifier VALUES(1417,'Tanımsız kart','2359298',0,2,'2017-06-22 13:40:42.505000',1);
INSERT INTO portunes_identifier VALUES(1418,'Tanımsız kart','2162692',0,2,'2017-06-22 13:40:42.581000',1);
INSERT INTO portunes_identifier VALUES(1419,'Tanımsız kart','147714',0,2,'2017-06-22 13:40:42.892000',1);
INSERT INTO portunes_identifier VALUES(1420,'Tanımsız kart','4097',0,2,'2017-06-22 13:40:42.969000',1);
INSERT INTO portunes_identifier VALUES(1421,'Tanımsız kart','1050632',0,2,'2017-06-22 13:40:43.046000',1);
INSERT INTO portunes_identifier VALUES(1422,'Tanımsız kart','16385',0,2,'2017-06-22 13:40:43.201000',1);
INSERT INTO portunes_identifier VALUES(1423,'Tanımsız kart','524289',0,2,'2017-06-22 13:40:43.356000',1);
INSERT INTO portunes_identifier VALUES(1424,'Tanımsız kart','2114049',0,2,'2017-06-22 13:40:43.433000',1);
INSERT INTO portunes_identifier VALUES(1425,'Tanımsız kart','9348',0,2,'2017-06-22 13:40:43.664000',1);
INSERT INTO portunes_identifier VALUES(1426,'Tanımsız kart','33089',0,2,'2017-06-22 13:40:43.818000',1);
INSERT INTO portunes_identifier VALUES(1427,'Tanımsız kart','131073',0,2,'2017-06-22 13:40:43.972000',1);
INSERT INTO portunes_identifier VALUES(1428,'Tanımsız kart','1152',0,2,'2017-06-22 13:40:44.048000',1);
INSERT INTO portunes_identifier VALUES(1429,'Tanımsız kart','528',0,2,'2017-06-22 13:40:44.126000',1);
INSERT INTO portunes_identifier VALUES(1430,'Tanımsız kart','16640',0,2,'2017-06-22 13:40:44.203000',1);
INSERT INTO portunes_identifier VALUES(1431,'Tanımsız kart','8454144',0,2,'2017-06-22 13:40:44.280000',1);
INSERT INTO portunes_identifier VALUES(1432,'Tanımsız kart','1048648',0,2,'2017-06-22 13:40:44.435000',1);
INSERT INTO portunes_identifier VALUES(1433,'Tanımsız kart','16898',0,2,'2017-06-22 13:40:44.512000',1);
INSERT INTO portunes_identifier VALUES(1434,'Tanımsız kart','2236416',0,2,'2017-06-22 13:40:44.589000',1);
INSERT INTO portunes_identifier VALUES(1435,'Tanımsız kart','34817',0,2,'2017-06-22 13:40:44.744000',1);
INSERT INTO portunes_identifier VALUES(1436,'Tanımsız kart','4259968',0,2,'2017-06-22 13:40:44.899000',1);
INSERT INTO portunes_identifier VALUES(1437,'Tanımsız kart','16448',0,2,'2017-06-22 13:40:45.054000',1);
INSERT INTO portunes_identifier VALUES(1438,'Tanımsız kart','131076',0,2,'2017-06-22 13:40:45.131000',1);
INSERT INTO portunes_identifier VALUES(1439,'Tanımsız kart','2228225',0,2,'2017-06-22 13:40:46.220000',1);
INSERT INTO portunes_identifier VALUES(1440,'Tanımsız kart','8913408',0,2,'2017-06-22 13:40:46.375000',1);
INSERT INTO portunes_identifier VALUES(1441,'Tanımsız kart','66',0,2,'2017-06-22 13:40:46.453000',1);
INSERT INTO portunes_identifier VALUES(1442,'Tanımsız kart','8833',0,2,'2017-06-22 13:40:46.530000',1);
INSERT INTO portunes_identifier VALUES(1443,'Tanımsız kart','655616',0,2,'2017-06-22 13:40:46.684000',1);
INSERT INTO portunes_identifier VALUES(1444,'Tanımsız kart','4176',0,2,'2017-06-22 13:40:46.761000',1);
INSERT INTO portunes_identifier VALUES(1445,'Tanımsız kart','132224',0,2,'2017-06-22 13:40:46.838000',1);
INSERT INTO portunes_identifier VALUES(1446,'Tanımsız kart','589856',0,2,'2017-06-22 13:40:46.914000',1);
INSERT INTO portunes_identifier VALUES(1447,'Tanımsız kart','8527872',0,2,'2017-06-22 13:40:46.992000',1);
INSERT INTO portunes_identifier VALUES(1448,'Tanımsız kart','2052',0,2,'2017-06-22 13:40:47.147000',1);
INSERT INTO portunes_identifier VALUES(1449,'Tanımsız kart','4160',0,2,'2017-06-22 13:40:47.302000',1);
INSERT INTO portunes_identifier VALUES(1450,'Tanımsız kart','8389634',0,2,'2017-06-22 13:40:47.846000',1);
INSERT INTO portunes_identifier VALUES(1451,'Tanımsız kart','4719616',0,2,'2017-06-22 13:40:47.924000',1);
INSERT INTO portunes_identifier VALUES(1452,'Tanımsız kart','540674',0,2,'2017-06-22 13:40:48.080000',1);
INSERT INTO portunes_identifier VALUES(1453,'Tanımsız kart','4228097',0,2,'2017-06-22 13:40:48.157000',1);
INSERT INTO portunes_identifier VALUES(1454,'Tanımsız kart','262145',0,2,'2017-06-22 13:40:48.389000',1);
INSERT INTO portunes_identifier VALUES(1455,'Tanımsız kart','18688',0,2,'2017-06-22 13:40:48.465000',1);
INSERT INTO portunes_identifier VALUES(1456,'Tanımsız kart','1081352',0,2,'2017-06-22 13:40:48.542000',1);
INSERT INTO portunes_identifier VALUES(1457,'Tanımsız kart','8536064',0,2,'2017-06-22 13:40:48.619000',1);
INSERT INTO portunes_identifier VALUES(1458,'Tanımsız kart','278529',0,2,'2017-06-22 13:40:48.774000',1);
INSERT INTO portunes_identifier VALUES(1459,'Tanımsız kart','33033',0,2,'2017-06-22 13:40:48.852000',1);
INSERT INTO portunes_identifier VALUES(1460,'Tanımsız kart','2162693',0,2,'2017-06-22 13:40:49.007000',1);
INSERT INTO portunes_identifier VALUES(1461,'Tanımsız kart','8980544',0,2,'2017-06-22 13:40:49.084000',1);
INSERT INTO portunes_identifier VALUES(1462,'Tanımsız kart','8388640',0,2,'2017-06-22 13:40:49.161000',1);
INSERT INTO portunes_identifier VALUES(1463,'Tanımsız kart','1032',0,2,'2017-06-22 13:40:49.238000',1);
INSERT INTO portunes_identifier VALUES(1464,'Tanımsız kart','5124',0,2,'2017-06-22 13:40:49.315000',1);
INSERT INTO portunes_identifier VALUES(1465,'Tanımsız kart','66050',0,2,'2017-06-22 13:40:49.392000',1);
INSERT INTO portunes_identifier VALUES(1466,'Tanımsız kart','524320',0,2,'2017-06-22 13:40:49.547000',1);
INSERT INTO portunes_identifier VALUES(1467,'Tanımsız kart','2360320',0,2,'2017-06-22 13:40:50.012000',1);
INSERT INTO portunes_identifier VALUES(1468,'Tanımsız kart','1049728',0,2,'2017-06-22 13:40:50.089000',1);
INSERT INTO portunes_identifier VALUES(1469,'Tanımsız kart','69632',0,2,'2017-06-22 13:40:50.166000',1);
INSERT INTO portunes_identifier VALUES(1470,'Tanımsız kart','524928',0,2,'2017-06-22 13:40:50.320000',1);
INSERT INTO portunes_identifier VALUES(1471,'Tanımsız kart','139280',0,2,'2017-06-22 13:40:50.398000',1);
INSERT INTO portunes_identifier VALUES(1472,'Tanımsız kart','18',0,2,'2017-06-22 13:40:50.552000',1);
INSERT INTO portunes_identifier VALUES(1473,'Tanımsız kart','1085576',0,2,'2017-06-22 13:40:50.629000',1);
INSERT INTO portunes_identifier VALUES(1474,'Tanımsız kart','5537793',0,2,'2017-06-22 13:40:50.706000',1);
INSERT INTO portunes_identifier VALUES(1475,'Tanımsız kart','525344',0,2,'2017-06-22 13:40:50.783000',1);
INSERT INTO portunes_identifier VALUES(1476,'Tanımsız kart','2394112',0,2,'2017-06-22 13:40:50.860000',1);
INSERT INTO portunes_identifier VALUES(1477,'Tanımsız kart','2097416',0,2,'2017-06-22 13:40:50.937000',1);
INSERT INTO portunes_identifier VALUES(1478,'Tanımsız kart','270344',0,2,'2017-06-22 13:40:51.014000',1);
INSERT INTO portunes_identifier VALUES(1479,'Tanımsız kart','1310720',0,2,'2017-06-22 13:40:51.169000',1);
INSERT INTO portunes_identifier VALUES(1480,'Tanımsız kart','33800',0,2,'2017-06-22 13:40:51.246000',1);
INSERT INTO portunes_identifier VALUES(1481,'Tanımsız kart','165889',0,2,'2017-06-22 13:40:51.323000',1);
INSERT INTO portunes_identifier VALUES(1482,'Tanımsız kart','9217',0,2,'2017-06-22 13:40:51.477000',1);
INSERT INTO portunes_identifier VALUES(1483,'Tanımsız kart','8519681',0,2,'2017-06-22 13:40:51.554000',1);
INSERT INTO portunes_identifier VALUES(1484,'Tanımsız kart','18560',0,2,'2017-06-22 13:40:51.865000',1);
INSERT INTO portunes_identifier VALUES(1485,'Tanımsız kart','69665',0,2,'2017-06-22 13:40:51.942000',1);
INSERT INTO portunes_identifier VALUES(1486,'Tanımsız kart','17412',0,2,'2017-06-22 13:40:52.180000',1);
INSERT INTO portunes_identifier VALUES(1487,'Tanımsız kart','9469953',0,2,'2017-06-22 13:40:52.412000',1);
INSERT INTO portunes_identifier VALUES(1488,'Tanımsız kart','1114144',0,2,'2017-06-22 13:40:52.489000',1);
INSERT INTO portunes_identifier VALUES(1489,'Tanımsız kart','2118922',0,2,'2017-06-22 14:01:14.144000',1);
INSERT INTO portunes_identifier VALUES(1490,'Tanımsız kart','1089',0,2,'2017-06-22 16:31:04.728000',1);
INSERT INTO portunes_identifier VALUES(1491,'Tanımsız kart','8954404',0,2,'2017-06-22 19:41:39.627000',1);
INSERT INTO portunes_identifier VALUES(1492,'Tanımsız kart','9610322',0,2,'2017-06-22 19:41:39.704000',1);
INSERT INTO portunes_identifier VALUES(1493,'Tanımsız kart','12495501',0,2,'2017-06-22 20:15:42.524000',1);
INSERT INTO portunes_identifier VALUES(1494,'Tanımsız kart','1118482',0,2,'2017-06-22 21:10:48.691000',1);
INSERT INTO portunes_identifier VALUES(1495,'Tanımsız kart','1189193',0,2,'2017-06-22 21:10:48.769000',1);
INSERT INTO portunes_identifier VALUES(1496,'Tanımsız kart','16643583',0,2,'2017-06-22 21:12:49.015000',1);
INSERT INTO portunes_identifier VALUES(1497,'Tanımsız kart','4676',0,2,'2017-06-22 21:18:49.796000',1);
INSERT INTO portunes_identifier VALUES(1498,'Tanımsız kart','2795817',0,2,'2017-06-22 21:22:50.447000',1);
INSERT INTO portunes_identifier VALUES(1499,'Tanımsız kart','141312',0,2,'2017-06-22 23:14:59.519000',1);
INSERT INTO portunes_identifier VALUES(1500,'Tanımsız kart','10573097',0,2,'2017-06-23 01:12:08.916000',1);
INSERT INTO portunes_identifier VALUES(1501,'Tanımsız kart','9741458',0,2,'2017-06-23 03:07:18.030000',1);
INSERT INTO portunes_identifier VALUES(1502,'Tanımsız kart','15379531',0,2,'2017-06-23 03:28:21.550000',1);
INSERT INTO portunes_identifier VALUES(1503,'Tanımsız kart','4891796',0,2,'2017-06-23 04:53:28.809000',1);
INSERT INTO portunes_identifier VALUES(1504,'Tanımsız kart','2394248',0,2,'2017-06-23 06:50:41.534000',1);
INSERT INTO portunes_identifier VALUES(1505,'Tanımsız kart','5411477',0,2,'2017-06-23 06:50:41.612000',1);
INSERT INTO portunes_identifier VALUES(1506,'Tanımsız kart','11184813',0,2,'2017-06-23 06:56:44.926000',1);
INSERT INTO portunes_identifier VALUES(1507,'Tanımsız kart','5591624',0,2,'2017-06-23 06:56:45.003000',1);
INSERT INTO portunes_identifier VALUES(1508,'Tanımsız kart','5548714',0,2,'2017-06-23 06:56:45.080000',1);
INSERT INTO portunes_identifier VALUES(1509,'Tanımsız kart','6247745',0,2,'2017-06-23 07:40:53.980000',1);
INSERT INTO portunes_identifier VALUES(1510,'Tanımsız kart','2172068',0,2,'2017-06-23 08:59:23.734000',1);
INSERT INTO portunes_identifier VALUES(1511,'Tanımsız kart','15371617',0,2,'2017-06-23 09:07:24.595000',1);
INSERT INTO portunes_identifier VALUES(1512,'Tanımsız kart','6118490',0,2,'2017-06-23 09:49:29.826000',1);
INSERT INTO portunes_identifier VALUES(1513,'Tanımsız kart','10312794',0,2,'2017-06-23 09:49:29.904000',1);
INSERT INTO portunes_identifier VALUES(1514,'Tanımsız kart','7253549',0,2,'2017-06-23 11:01:39.657000',1);
INSERT INTO portunes_identifier VALUES(1515,'Tanımsız kart','11447853',0,2,'2017-06-23 11:01:39.734000',1);
INSERT INTO portunes_identifier VALUES(1516,'Tanımsız kart','11197397',0,2,'2017-06-23 11:04:41.307000',1);
INSERT INTO portunes_identifier VALUES(1517,'Tanımsız kart','11184826',0,2,'2017-06-23 11:04:41.384000',1);
INSERT INTO portunes_identifier VALUES(1518,'Tanımsız kart','11201193',0,2,'2017-06-23 11:06:41.865000',1);
INSERT INTO portunes_identifier VALUES(1519,'Tanımsız kart','11163285',0,2,'2017-06-23 11:06:41.941000',1);
INSERT INTO portunes_identifier VALUES(1520,'Tanımsız kart','11086669',0,2,'2017-06-23 11:06:42.018000',1);
INSERT INTO portunes_identifier VALUES(1521,'Tanımsız kart','12023211',0,2,'2017-06-23 11:06:42.096000',1);
INSERT INTO portunes_identifier VALUES(1522,'Tanımsız kart','14079381',0,2,'2017-06-23 11:06:42.173000',1);
INSERT INTO portunes_identifier VALUES(1523,'Tanımsız kart','11889317',0,2,'2017-06-23 11:18:44.336000',1);
INSERT INTO portunes_identifier VALUES(1524,'Tanımsız kart','7004125',0,2,'2017-06-23 11:23:45.493000',1);
INSERT INTO portunes_identifier VALUES(1525,'Tanımsız kart','5221051',0,2,'2017-06-23 11:31:47.288000',1);
INSERT INTO portunes_identifier VALUES(1526,'Tanımsız kart','4227108',0,2,'2017-06-23 11:59:51.063000',1);
INSERT INTO portunes_identifier VALUES(1527,'Tanımsız kart','2170881',0,2,'2017-06-23 12:11:52.599000',1);
INSERT INTO portunes_identifier VALUES(1528,'Tanımsız kart','16645630',0,2,'2017-06-23 12:25:54.383000',1);
INSERT INTO portunes_identifier VALUES(1529,'Tanımsız kart','10436535',0,2,'2017-06-23 12:25:54.461000',1);
INSERT INTO portunes_identifier VALUES(1530,'Tanımsız kart','9316286',0,2,'2017-06-23 12:25:54.538000',1);
INSERT INTO portunes_identifier VALUES(1531,'Tanımsız kart','8649266',0,2,'2017-06-23 12:25:54.615000',1);
INSERT INTO portunes_identifier VALUES(1532,'Tanımsız kart','13664247',0,2,'2017-06-23 12:25:54.692000',1);
INSERT INTO portunes_identifier VALUES(1533,'Tanımsız kart','2542249',0,2,'2017-06-23 13:15:38.501000',1);
INSERT INTO portunes_identifier VALUES(1534,'Tanımsız kart','9507477',0,2,'2017-06-23 13:15:38.579000',1);
INSERT INTO portunes_identifier VALUES(1535,'Tanımsız kart','16465429',0,2,'2017-06-23 13:15:38.804000',1);
INSERT INTO portunes_identifier VALUES(1536,'Tanımsız kart','2167368',0,2,'2017-06-23 13:15:39.435000',1);
INSERT INTO portunes_identifier VALUES(1537,'Tanımsız kart','11053738',0,2,'2017-06-23 14:05:07.211000',1);
INSERT INTO portunes_identifier VALUES(1538,'Tanımsız kart','10560016',0,2,'2017-06-23 14:24:09.967000',1);
INSERT INTO portunes_identifier VALUES(1539,'Tanımsız kart','15380105',0,2,'2017-06-23 15:20:19.002000',1);
INSERT INTO portunes_identifier VALUES(1540,'Tanımsız kart','16427080',0,2,'2017-06-23 16:12:24.693000',1);
INSERT INTO portunes_identifier VALUES(1541,'Tanımsız kart','11653531',0,2,'2017-06-23 16:21:25.885000',1);
INSERT INTO portunes_identifier VALUES(1542,'Tanımsız kart','4491538',0,2,'2017-06-23 17:36:34.116000',1);
INSERT INTO portunes_identifier VALUES(1543,'Tanımsız kart','2232866',0,2,'2017-06-23 17:36:34.193000',1);
INSERT INTO portunes_identifier VALUES(1544,'Tanımsız kart','4803242',0,2,'2017-06-23 17:36:34.350000',1);
INSERT INTO portunes_identifier VALUES(1545,'Tanımsız kart','9786709',0,2,'2017-06-23 18:10:37.539000',1);
INSERT INTO portunes_identifier VALUES(1546,'Tanımsız kart','8038964',0,2,'2017-06-23 20:46:50.690000',1);
INSERT INTO portunes_identifier VALUES(1547,'Tanımsız kart','16427572',0,2,'2017-06-23 20:46:50.768000',1);
INSERT INTO portunes_identifier VALUES(1548,'Tanımsız kart','5275712',0,2,'2017-06-23 22:24:58.583000',1);
INSERT INTO portunes_identifier VALUES(1549,'Tanımsız kart','9742994',0,2,'2017-06-24 00:18:07.959000',1);
INSERT INTO portunes_identifier VALUES(1550,'Tanımsız kart','9774229',0,2,'2017-06-24 04:39:50.680000',1);
INSERT INTO portunes_identifier VALUES(1551,'Tanımsız kart','4671087',0,2,'2017-06-24 05:48:56.558000',1);
INSERT INTO portunes_identifier VALUES(1552,'Tanımsız kart','84009',0,2,'2017-06-24 06:03:57.921000',1);
INSERT INTO portunes_identifier VALUES(1553,'Tanımsız kart','7780266',0,2,'2017-06-24 10:23:19.652000',1);
INSERT INTO portunes_identifier VALUES(1554,'Tanımsız kart','296993',0,2,'2017-06-24 10:28:20.068000',1);
INSERT INTO portunes_identifier VALUES(1555,'Tanımsız kart','32772',0,2,'2017-06-24 10:29:20.551000',1);
INSERT INTO portunes_identifier VALUES(1556,'Tanımsız kart','546',0,2,'2017-06-24 10:29:21.561000',1);
INSERT INTO portunes_identifier VALUES(1557,'Tanımsız kart','73728',0,2,'2017-06-24 10:29:22.340000',1);
INSERT INTO portunes_identifier VALUES(1558,'Tanımsız kart','72',0,2,'2017-06-24 10:29:22.807000',1);
INSERT INTO portunes_identifier VALUES(1559,'Tanımsız kart','2097408',0,2,'2017-06-24 10:29:22.885000',1);
INSERT INTO portunes_identifier VALUES(1560,'Tanımsız kart','1049608',0,2,'2017-06-24 10:29:23.273000',1);
INSERT INTO portunes_identifier VALUES(1561,'Tanımsız kart','4384',0,2,'2017-06-24 10:29:23.350000',1);
INSERT INTO portunes_identifier VALUES(1562,'Tanımsız kart','8393216',0,2,'2017-06-24 10:29:23.739000',1);
INSERT INTO portunes_identifier VALUES(1563,'Tanımsız kart','4718593',0,2,'2017-06-24 10:29:23.894000',1);
INSERT INTO portunes_identifier VALUES(1564,'Tanımsız kart','163856',0,2,'2017-06-24 10:29:24.128000',1);
INSERT INTO portunes_identifier VALUES(1565,'Tanımsız kart','1179656',0,2,'2017-06-24 10:29:24.595000',1);
INSERT INTO portunes_identifier VALUES(1566,'Tanımsız kart','8388609',0,2,'2017-06-24 10:29:24.907000',1);
INSERT INTO portunes_identifier VALUES(1567,'Tanımsız kart','294912',0,2,'2017-06-24 10:29:25.063000',1);
INSERT INTO portunes_identifier VALUES(1568,'Tanımsız kart','528896',0,2,'2017-06-24 10:29:25.217000',1);
INSERT INTO portunes_identifier VALUES(1569,'Tanımsız kart','1040',0,2,'2017-06-24 10:29:25.606000',1);
INSERT INTO portunes_identifier VALUES(1570,'Tanımsız kart','8454728',0,2,'2017-06-24 10:29:25.683000',1);
INSERT INTO portunes_identifier VALUES(1571,'Tanımsız kart','16514',0,2,'2017-06-24 10:29:25.760000',1);
INSERT INTO portunes_identifier VALUES(1572,'Tanımsız kart','8396800',0,2,'2017-06-24 10:29:27.710000',1);
INSERT INTO portunes_identifier VALUES(1573,'Tanımsız kart','65664',0,2,'2017-06-24 10:29:27.788000',1);
INSERT INTO portunes_identifier VALUES(1574,'Tanımsız kart','1081344',0,2,'2017-06-24 10:29:27.944000',1);
INSERT INTO portunes_identifier VALUES(1575,'Tanımsız kart','524322',0,2,'2017-06-24 10:29:28.332000',1);
INSERT INTO portunes_identifier VALUES(1576,'Tanımsız kart','2105408',0,2,'2017-06-24 10:29:28.720000',1);
INSERT INTO portunes_identifier VALUES(1577,'Tanımsız kart','1168',0,2,'2017-06-24 10:29:29.031000',1);
INSERT INTO portunes_identifier VALUES(1578,'Tanımsız kart','9437762',0,2,'2017-06-24 10:29:29.420000',1);
INSERT INTO portunes_identifier VALUES(1579,'Tanımsız kart','8421384',0,2,'2017-06-24 10:29:29.574000',1);
INSERT INTO portunes_identifier VALUES(1580,'Tanımsız kart','540736',0,2,'2017-06-24 10:29:29.652000',1);
INSERT INTO portunes_identifier VALUES(1581,'Tanımsız kart','8388641',0,2,'2017-06-24 10:29:29.728000',1);
INSERT INTO portunes_identifier VALUES(1582,'Tanımsız kart','9502720',0,2,'2017-06-24 10:29:29.805000',1);
INSERT INTO portunes_identifier VALUES(1583,'Tanımsız kart','2129952',0,2,'2017-06-24 10:29:30.038000',1);
INSERT INTO portunes_identifier VALUES(1584,'Tanımsız kart','262657',0,2,'2017-06-24 10:29:30.115000',1);
INSERT INTO portunes_identifier VALUES(1585,'Tanımsız kart','9454600',0,2,'2017-06-24 10:29:30.270000',1);
INSERT INTO portunes_identifier VALUES(1586,'Tanımsız kart','131332',0,2,'2017-06-24 10:29:30.426000',1);
INSERT INTO portunes_identifier VALUES(1587,'Tanımsız kart','1081920',0,2,'2017-06-24 10:29:30.504000',1);
INSERT INTO portunes_identifier VALUES(1588,'Tanımsız kart','2097184',0,2,'2017-06-24 10:29:30.659000',1);
INSERT INTO portunes_identifier VALUES(1589,'Tanımsız kart','8456512',0,2,'2017-06-24 10:29:30.891000',1);
INSERT INTO portunes_identifier VALUES(1590,'Tanımsız kart','8654848',0,2,'2017-06-24 10:29:30.967000',1);
INSERT INTO portunes_identifier VALUES(1591,'Tanımsız kart','65',0,2,'2017-06-24 10:29:31.045000',1);
INSERT INTO portunes_identifier VALUES(1592,'Tanımsız kart','9439521',0,2,'2017-06-24 10:29:31.513000',1);
INSERT INTO portunes_identifier VALUES(1593,'Tanımsız kart','266272',0,2,'2017-06-24 10:29:31.824000',1);
INSERT INTO portunes_identifier VALUES(1594,'Tanımsız kart','526336',0,2,'2017-06-24 10:29:31.901000',1);
INSERT INTO portunes_identifier VALUES(1595,'Tanımsız kart','8929280',0,2,'2017-06-24 10:29:32.055000',1);
INSERT INTO portunes_identifier VALUES(1596,'Tanımsız kart','14805690',0,2,'2017-06-24 11:52:39.820000',1);
INSERT INTO portunes_identifier VALUES(1597,'Tanımsız kart','619888',0,2,'2017-06-24 11:52:39.897000',1);
INSERT INTO portunes_identifier VALUES(1598,'Tanımsız kart','4325650',0,2,'2017-06-24 15:04:57.495000',1);
INSERT INTO portunes_identifier VALUES(1599,'Tanımsız kart','165192',0,2,'2017-06-24 18:17:14.519000',1);
INSERT INTO portunes_identifier VALUES(1600,'Tanımsız kart','2376772',0,2,'2017-06-24 18:29:15.682000',1);
INSERT INTO portunes_identifier VALUES(1601,'Tanımsız kart','9603346',0,2,'2017-06-24 18:29:15.759000',1);
INSERT INTO portunes_identifier VALUES(1602,'Tanımsız kart','141460',0,2,'2017-06-24 20:41:26.733000',1);
INSERT INTO portunes_identifier VALUES(1603,'Tanımsız kart','5362075',0,2,'2017-06-24 21:14:29.552000',1);
INSERT INTO portunes_identifier VALUES(1604,'Tanımsız kart','5276968',0,2,'2017-06-28 05:41:17.812000',1);
INSERT INTO portunes_identifier VALUES(1605,'Tanımsız kart','9439392',0,2,'2017-06-28 05:41:17.907000',1);
INSERT INTO portunes_identifier VALUES(1606,'Tanımsız kart','4785194',0,2,'2017-06-28 05:41:17.984000',1);
INSERT INTO portunes_identifier VALUES(1607,'Tanımsız kart','10834964',0,2,'2017-06-28 05:41:18.061000',1);
INSERT INTO portunes_identifier VALUES(1608,'Tanımsız kart','2790568',0,2,'2017-06-28 05:41:18.139000',1);
INSERT INTO portunes_identifier VALUES(1609,'Tanımsız kart','4868266',0,2,'2017-06-28 05:41:18.216000',1);
INSERT INTO portunes_identifier VALUES(1610,'Tanımsız kart','674132',0,2,'2017-06-28 05:41:18.293000',1);
INSERT INTO portunes_identifier VALUES(1611,'bilal2','15378169',1,1,'2017-06-28 05:52:44.567000',0);
INSERT INTO portunes_identifier VALUES(1612,'Tanımsız kart','16494248',0,2,'2017-06-28 05:58:38.182000',1);
INSERT INTO portunes_identifier VALUES(1613,'Tanımsız kart','6247735',0,2,'2017-06-28 06:19:42.231000',1);
INSERT INTO portunes_identifier VALUES(1614,'Tanımsız kart','2479557',0,2,'2017-06-28 07:03:25.339000',1);
INSERT INTO portunes_identifier VALUES(1615,'Tanımsız kart','15444543',0,2,'2017-06-28 07:17:28.371000',1);
INSERT INTO portunes_identifier VALUES(1616,'Tanımsız kart','3098076',0,2,'2017-06-28 08:08:14.569000',1);
INSERT INTO portunes_identifier VALUES(1617,'Tanımsız kart','2228480',0,2,'2017-06-28 08:17:15.648000',1);
INSERT INTO portunes_identifier VALUES(1618,'Tanımsız kart','13978282',0,2,'2017-06-28 08:48:45.369000',1);
INSERT INTO portunes_identifier VALUES(1619,'Tanımsız kart','4198658',0,2,'2017-06-28 08:54:46.223000',1);
INSERT INTO portunes_identifier VALUES(1620,'Tanımsız kart','8213089',0,2,'2017-06-28 09:06:48.287000',1);
INSERT INTO portunes_identifier VALUES(1621,'Tanımsız kart','16427454',0,2,'2017-06-28 09:11:50.664000',1);
INSERT INTO portunes_identifier VALUES(1622,'Tanımsız kart','15393499',0,2,'2017-06-28 10:20:22.749000',1);
INSERT INTO portunes_identifier VALUES(1623,'Tanımsız kart','1188361',0,2,'2017-06-28 10:37:26.197000',1);
INSERT INTO portunes_identifier VALUES(1624,'Tanımsız kart','2796202',0,2,'2017-06-28 11:37:49.961000',1);
INSERT INTO portunes_identifier VALUES(1625,'Tanımsız kart','170',0,2,'2017-06-28 11:43:51.150000',1);
INSERT INTO portunes_identifier VALUES(1626,'Tanımsız kart','16506879',0,2,'2017-06-28 12:19:55.666000',1);
INSERT INTO portunes_identifier VALUES(1627,'Tanımsız kart','16767867',0,2,'2017-06-28 12:19:55.743000',1);
INSERT INTO portunes_identifier VALUES(1628,'Tanımsız kart','16760827',0,2,'2017-06-28 12:19:55.820000',1);
INSERT INTO portunes_identifier VALUES(1629,'Tanımsız kart','12578807',0,2,'2017-06-28 12:19:55.896000',1);
INSERT INTO portunes_identifier VALUES(1630,'Tanımsız kart','16776191',0,2,'2017-06-28 12:19:56.052000',1);
INSERT INTO portunes_identifier VALUES(1631,'Tanımsız kart','16646111',0,2,'2017-06-28 12:19:56.207000',1);
INSERT INTO portunes_identifier VALUES(1632,'Tanımsız kart','16776959',0,2,'2017-06-28 12:19:56.518000',1);
INSERT INTO portunes_identifier VALUES(1633,'Tanımsız kart','16777211',0,2,'2017-06-28 12:19:56.595000',1);
INSERT INTO portunes_identifier VALUES(1634,'Tanımsız kart','16775167',0,2,'2017-06-28 12:19:56.672000',1);
INSERT INTO portunes_identifier VALUES(1635,'Tanımsız kart','16773103',0,2,'2017-06-28 12:19:56.748000',1);
INSERT INTO portunes_identifier VALUES(1636,'Tanımsız kart','172324',0,2,'2017-06-28 12:24:57.697000',1);
INSERT INTO portunes_identifier VALUES(1637,'Tanımsız kart','9008497',0,2,'2017-06-28 12:34:59.461000',1);
INSERT INTO portunes_identifier VALUES(1638,'Tanımsız kart','9131754',0,2,'2017-06-28 12:34:59.539000',1);
INSERT INTO portunes_identifier VALUES(1639,'Tanımsız kart','12233883',0,2,'2017-06-28 12:48:01.270000',1);
INSERT INTO portunes_identifier VALUES(1640,'Tanımsız kart','10853724',0,2,'2017-06-28 12:48:02.276000',1);
INSERT INTO portunes_identifier VALUES(1641,'Tanımsız kart','8213727',0,2,'2017-06-28 12:51:52.671000',1);
INSERT INTO portunes_identifier VALUES(1642,'Tanımsız kart','8301167',0,2,'2017-06-28 13:08:11.084000',1);
INSERT INTO portunes_identifier VALUES(1643,'Tanımsız kart','12495471',0,2,'2017-06-28 13:08:11.162000',1);
INSERT INTO portunes_identifier VALUES(1644,'Tanımsız kart','16252927',0,2,'2017-06-28 13:08:18.521000',1);
INSERT INTO portunes_identifier VALUES(1645,'Tanımsız kart','16776868',0,2,'2017-06-28 13:08:19.472000',1);
INSERT INTO portunes_identifier VALUES(1646,'Tanımsız kart','16558524',0,2,'2017-06-28 13:08:19.551000',1);
INSERT INTO portunes_identifier VALUES(1647,'Tanımsız kart','16777210',0,2,'2017-06-28 13:08:19.630000',1);
INSERT INTO portunes_identifier VALUES(1648,'Tanımsız kart','13979123',0,2,'2017-06-28 13:08:19.709000',1);
INSERT INTO portunes_identifier VALUES(1649,'Tanımsız kart','14680063',0,2,'2017-06-28 13:08:19.789000',1);
INSERT INTO portunes_identifier VALUES(1650,'Tanımsız kart','16771750',0,2,'2017-06-28 13:08:19.868000',1);
INSERT INTO portunes_identifier VALUES(1651,'Tanımsız kart','16776874',0,2,'2017-06-28 13:08:20.263000',1);
INSERT INTO portunes_identifier VALUES(1652,'Tanımsız kart','16755355',0,2,'2017-06-28 13:08:20.343000',1);
INSERT INTO portunes_identifier VALUES(1653,'Tanımsız kart','12320767',0,2,'2017-06-28 13:08:20.422000',1);
INSERT INTO portunes_identifier VALUES(1654,'Tanımsız kart','16734875',0,2,'2017-06-28 13:08:20.501000',1);
INSERT INTO portunes_identifier VALUES(1655,'Tanımsız kart','8290303',0,2,'2017-06-28 13:08:20.660000',1);
INSERT INTO portunes_identifier VALUES(1656,'Tanımsız kart','16776532',0,2,'2017-06-28 13:08:20.739000',1);
INSERT INTO portunes_identifier VALUES(1657,'Tanımsız kart','14111611',0,2,'2017-06-28 13:08:38.154000',1);
INSERT INTO portunes_identifier VALUES(1658,'Tanımsız kart','8388607',0,2,'2017-06-28 13:08:38.866000',1);
INSERT INTO portunes_identifier VALUES(1659,'Tanımsız kart','16689775',0,2,'2017-06-28 13:08:38.945000',1);
INSERT INTO portunes_identifier VALUES(1660,'Tanımsız kart','4194303',0,2,'2017-06-28 13:08:39.736000',1);
INSERT INTO portunes_identifier VALUES(1661,'Tanımsız kart','16775849',0,2,'2017-06-28 13:08:39.815000',1);
INSERT INTO portunes_identifier VALUES(1662,'Tanımsız kart','16602335',0,2,'2017-06-28 13:08:46.067000',1);
INSERT INTO portunes_identifier VALUES(1663,'Tanımsız kart','5471487',0,2,'2017-06-28 13:08:46.622000',1);
INSERT INTO portunes_identifier VALUES(1664,'Tanımsız kart','16777213',0,2,'2017-06-28 13:08:46.701000',1);
INSERT INTO portunes_identifier VALUES(1665,'Tanımsız kart','9437183',0,2,'2017-06-28 13:08:47.177000',1);
INSERT INTO portunes_identifier VALUES(1666,'Tanımsız kart','11123711',0,2,'2017-06-28 13:08:47.256000',1);
INSERT INTO portunes_identifier VALUES(1667,'Tanımsız kart','16777199',0,2,'2017-06-28 13:08:47.336000',1);
INSERT INTO portunes_identifier VALUES(1668,'Tanımsız kart','16471263',0,2,'2017-06-28 13:08:50.502000',1);
INSERT INTO portunes_identifier VALUES(1669,'Tanımsız kart','2479554',0,2,'2017-06-28 13:23:08.368000',1);
INSERT INTO portunes_identifier VALUES(1670,'Tanımsız kart','14507098',0,2,'2017-06-28 13:37:11.270000',1);
INSERT INTO portunes_identifier VALUES(1671,'Tanımsız kart','13987181',0,2,'2017-06-28 13:41:14.509000',1);
INSERT INTO portunes_identifier VALUES(1672,'Tanımsız kart','12283733',0,2,'2017-06-28 13:41:14.586000',1);
INSERT INTO portunes_identifier VALUES(1673,'Tanımsız kart','2441506',0,2,'2017-06-28 13:41:14.819000',1);
INSERT INTO portunes_identifier VALUES(1674,'Tanımsız kart','11159888',0,2,'2017-06-28 13:41:14.896000',1);
INSERT INTO portunes_identifier VALUES(1675,'Tanımsız kart','322273',0,2,'2017-06-28 13:41:15.367000',1);
INSERT INTO portunes_identifier VALUES(1676,'Tanımsız kart','16774879',0,2,'2017-06-28 13:43:16.950000',1);
INSERT INTO portunes_identifier VALUES(1677,'Tanımsız kart','16234495',0,2,'2017-06-28 13:54:06.837000',1);
INSERT INTO portunes_identifier VALUES(1678,'Tanımsız kart','16251903',0,2,'2017-06-28 14:24:41.043000',1);
INSERT INTO portunes_identifier VALUES(1679,'Tanımsız kart','15663103',0,2,'2017-06-28 14:24:41.120000',1);
INSERT INTO portunes_identifier VALUES(1680,'Tanımsız kart','4227072',0,2,'2017-06-28 15:10:49.113000',1);
INSERT INTO portunes_identifier VALUES(1681,'Tanımsız kart','299477',0,2,'2017-06-28 15:59:02.831000',1);
INSERT INTO portunes_identifier VALUES(1682,'Tanımsız kart','6007691',0,2,'2017-06-28 15:59:03.297000',1);
INSERT INTO portunes_identifier VALUES(1683,'Tanımsız kart','8629131',0,2,'2017-06-28 15:59:03.375000',1);
INSERT INTO portunes_identifier VALUES(1684,'Tanımsız kart','3059245',0,2,'2017-06-28 15:59:03.764000',1);
INSERT INTO portunes_identifier VALUES(1685,'Tanımsız kart','1403541',0,2,'2017-06-28 15:59:05.647000',1);
INSERT INTO portunes_identifier VALUES(1686,'Tanımsız kart','16077692',0,2,'2017-06-28 15:59:07.118000',1);
INSERT INTO portunes_identifier VALUES(1687,'Tanımsız kart','7696741',0,2,'2017-06-28 15:59:08.520000',1);
INSERT INTO portunes_identifier VALUES(1688,'Tanımsız kart','7696757',0,2,'2017-06-28 15:59:08.676000',1);
INSERT INTO portunes_identifier VALUES(1689,'Tanımsız kart','15561066',0,2,'2017-06-28 15:59:08.754000',1);
INSERT INTO portunes_identifier VALUES(1690,'Tanımsız kart','11085122',0,2,'2017-06-28 15:59:10.155000',1);
INSERT INTO portunes_identifier VALUES(1691,'Tanımsız kart','9736874',0,2,'2017-06-28 15:59:10.312000',1);
INSERT INTO portunes_identifier VALUES(1692,'Tanımsız kart','11184724',0,2,'2017-06-28 15:59:10.389000',1);
INSERT INTO portunes_identifier VALUES(1693,'Tanımsız kart','5592406',0,2,'2017-06-28 15:59:10.466000',1);
INSERT INTO portunes_identifier VALUES(1694,'Tanımsız kart','11195837',0,2,'2017-06-28 15:59:10.699000',1);
INSERT INTO portunes_identifier VALUES(1695,'Tanımsız kart','5393066',0,2,'2017-06-28 15:59:10.776000',1);
INSERT INTO portunes_identifier VALUES(1696,'Tanımsız kart','15580507',0,2,'2017-06-28 15:59:11.087000',1);
INSERT INTO portunes_identifier VALUES(1697,'Tanımsız kart','5280914',0,2,'2017-06-28 15:59:11.243000',1);
INSERT INTO portunes_identifier VALUES(1698,'Tanımsız kart','11883861',0,2,'2017-06-28 15:59:11.476000',1);
INSERT INTO portunes_identifier VALUES(1699,'Tanımsız kart','5593045',0,2,'2017-06-28 15:59:11.708000',1);
INSERT INTO portunes_identifier VALUES(1700,'Tanımsız kart','11185115',0,2,'2017-06-28 15:59:11.863000',1);
INSERT INTO portunes_identifier VALUES(1701,'Tanımsız kart','5592445',0,2,'2017-06-28 15:59:12.174000',1);
INSERT INTO portunes_identifier VALUES(1702,'Tanımsız kart','16178005',0,2,'2017-06-28 15:59:12.251000',1);
INSERT INTO portunes_identifier VALUES(1703,'Tanımsız kart','5417545',0,2,'2017-06-28 15:59:12.483000',1);
INSERT INTO portunes_identifier VALUES(1704,'Tanımsız kart','13620557',0,2,'2017-06-28 15:59:12.638000',1);
INSERT INTO portunes_identifier VALUES(1705,'Tanımsız kart','2610509',0,2,'2017-06-28 15:59:12.715000',1);
INSERT INTO portunes_identifier VALUES(1706,'Tanımsız kart','10442039',0,2,'2017-06-28 15:59:12.947000',1);
INSERT INTO portunes_identifier VALUES(1707,'Tanımsız kart','16382633',0,2,'2017-06-28 15:59:13.179000',1);
INSERT INTO portunes_identifier VALUES(1708,'Tanımsız kart','7315370',0,2,'2017-06-28 16:14:16.236000',1);
INSERT INTO portunes_identifier VALUES(1709,'Tanımsız kart','10742438',0,2,'2017-06-28 16:14:16.313000',1);
INSERT INTO portunes_identifier VALUES(1710,'Tanımsız kart','5499558',0,2,'2017-06-28 16:14:17.012000',1);
INSERT INTO portunes_identifier VALUES(1711,'Tanımsız kart','15988051',0,2,'2017-06-28 16:14:17.709000',1);
INSERT INTO portunes_identifier VALUES(1712,'Tanımsız kart','9565523',0,2,'2017-06-28 16:14:17.786000',1);
INSERT INTO portunes_identifier VALUES(1713,'Tanımsız kart','5221019',0,2,'2017-06-28 16:14:17.942000',1);
INSERT INTO portunes_identifier VALUES(1714,'Tanımsız kart','10999117',0,2,'2017-06-28 16:14:18.097000',1);
INSERT INTO portunes_identifier VALUES(1715,'Tanımsız kart','9076052',0,2,'2017-06-28 16:14:18.252000',1);
INSERT INTO portunes_identifier VALUES(1716,'Tanımsız kart','9693862',0,2,'2017-06-28 16:14:20.742000',1);
INSERT INTO portunes_identifier VALUES(1717,'Tanımsız kart','11107668',0,2,'2017-06-28 16:14:21.361000',1);
INSERT INTO portunes_identifier VALUES(1718,'Tanımsız kart','10463899',0,2,'2017-06-28 16:14:21.439000',1);
INSERT INTO portunes_identifier VALUES(1719,'Tanımsız kart','16515071',0,2,'2017-06-28 16:16:22.696000',1);
INSERT INTO portunes_identifier VALUES(1720,'Tanımsız kart','16777087',0,2,'2017-06-28 16:16:22.773000',1);
INSERT INTO portunes_identifier VALUES(1721,'Tanımsız kart','598016',0,2,'2017-06-28 16:22:24.155000',1);
INSERT INTO portunes_identifier VALUES(1722,'Tanımsız kart','8389696',0,2,'2017-06-28 16:22:24.232000',1);
INSERT INTO portunes_identifier VALUES(1723,'Tanımsız kart','8650752',0,2,'2017-06-28 16:22:24.542000',1);
INSERT INTO portunes_identifier VALUES(1724,'Tanımsız kart','1064993',0,2,'2017-06-28 16:22:25.400000',1);
INSERT INTO portunes_identifier VALUES(1725,'Tanımsız kart','12032',0,2,'2017-06-28 16:22:25.478000',1);
INSERT INTO portunes_identifier VALUES(1726,'Tanımsız kart','1314851',0,2,'2017-06-28 16:22:25.556000',1);
INSERT INTO portunes_identifier VALUES(1727,'Tanımsız kart','4269090',0,2,'2017-06-28 16:22:25.812000',1);
INSERT INTO portunes_identifier VALUES(1728,'Tanımsız kart','131080',0,2,'2017-06-28 16:22:25.890000',1);
INSERT INTO portunes_identifier VALUES(1729,'Tanımsız kart','4493860',0,2,'2017-06-28 16:22:26.069000',1);
INSERT INTO portunes_identifier VALUES(1730,'Tanımsız kart','16773119',0,2,'2017-06-28 16:31:29.102000',1);
INSERT INTO portunes_identifier VALUES(1731,'Tanımsız kart','4461090',0,2,'2017-06-28 16:42:08.156000',1);
INSERT INTO portunes_identifier VALUES(1732,'Tanımsız kart','9573669',0,2,'2017-06-28 16:42:08.233000',1);
INSERT INTO portunes_identifier VALUES(1733,'Tanımsız kart','4329492',0,2,'2017-06-28 16:42:08.310000',1);
INSERT INTO portunes_identifier VALUES(1734,'Tanımsız kart','4231744',0,2,'2017-06-28 16:42:08.387000',1);
INSERT INTO portunes_identifier VALUES(1735,'Tanımsız kart','4493636',0,2,'2017-06-28 16:48:29.019000',1);
INSERT INTO portunes_identifier VALUES(1736,'Tanımsız kart','4866050',0,2,'2017-06-28 16:48:29.096000',1);
INSERT INTO portunes_identifier VALUES(1737,'Tanımsız kart','11839761',0,2,'2017-06-28 16:48:29.173000',1);
INSERT INTO portunes_identifier VALUES(1738,'Tanımsız kart','4762280',0,2,'2017-06-28 16:48:29.635000',1);
INSERT INTO portunes_identifier VALUES(1739,'Tanımsız kart','3443978',0,2,'2017-06-28 16:48:29.789000',1);
INSERT INTO portunes_identifier VALUES(1740,'Tanımsız kart','5541888',0,2,'2017-06-28 16:48:30.095000',1);
INSERT INTO portunes_identifier VALUES(1741,'Tanımsız kart','2433024',0,2,'2017-06-28 16:48:30.248000',1);
INSERT INTO portunes_identifier VALUES(1742,'Tanımsız kart','4342849',0,2,'2017-06-28 16:48:30.479000',1);
INSERT INTO portunes_identifier VALUES(1743,'Tanımsız kart','2665096',0,2,'2017-06-28 16:48:30.633000',1);
INSERT INTO portunes_identifier VALUES(1744,'Tanımsız kart','5392928',0,2,'2017-06-28 16:48:30.711000',1);
INSERT INTO portunes_identifier VALUES(1745,'Tanımsız kart','4231716',0,2,'2017-06-28 16:48:30.788000',1);
INSERT INTO portunes_identifier VALUES(1746,'Tanımsız kart','4752528',0,2,'2017-06-28 16:48:30.865000',1);
INSERT INTO portunes_identifier VALUES(1747,'Tanımsız kart','1123464',0,2,'2017-06-28 16:48:30.943000',1);
INSERT INTO portunes_identifier VALUES(1748,'Tanımsız kart','4887626',0,2,'2017-06-28 16:48:31.020000',1);
INSERT INTO portunes_identifier VALUES(1749,'Tanımsız kart','4739666',0,2,'2017-06-28 16:48:31.097000',1);
INSERT INTO portunes_identifier VALUES(1750,'Tanımsız kart','2401412',0,2,'2017-06-28 16:48:31.174000',1);
INSERT INTO portunes_identifier VALUES(1751,'Tanımsız kart','4325376',0,2,'2017-06-28 16:48:31.251000',1);
INSERT INTO portunes_identifier VALUES(1752,'Tanımsız kart','1118240',0,2,'2017-06-28 17:07:33.708000',1);
INSERT INTO portunes_identifier VALUES(1753,'Tanımsız kart','524305',0,2,'2017-06-28 17:07:33.785000',1);
INSERT INTO portunes_identifier VALUES(1754,'Tanımsız kart','2130432',0,2,'2017-06-28 17:07:33.862000',1);
INSERT INTO portunes_identifier VALUES(1755,'Tanımsız kart','16516',0,2,'2017-06-28 17:07:33.939000',1);
INSERT INTO portunes_identifier VALUES(1756,'Tanımsız kart','4491296',0,2,'2017-06-28 17:07:34.016000',1);
INSERT INTO portunes_identifier VALUES(1757,'Tanımsız kart','1069730',0,2,'2017-06-28 17:13:35.618000',1);
INSERT INTO portunes_identifier VALUES(1758,'Tanımsız kart','11184789',0,2,'2017-06-28 17:13:35.696000',1);
INSERT INTO portunes_identifier VALUES(1759,'Tanımsız kart','16775151',0,2,'2017-06-28 17:16:36.149000',1);
INSERT INTO portunes_identifier VALUES(1760,'Tanımsız kart','11531627',0,2,'2017-06-28 17:16:36.226000',1);
INSERT INTO portunes_identifier VALUES(1761,'Tanımsız kart','12042238',0,2,'2017-06-28 17:16:36.303000',1);
INSERT INTO portunes_identifier VALUES(1762,'Tanımsız kart','7340031',0,2,'2017-06-28 17:16:36.380000',1);
INSERT INTO portunes_identifier VALUES(1763,'Tanımsız kart','15292885',0,2,'2017-06-28 17:31:38.092000',1);
INSERT INTO portunes_identifier VALUES(1764,'Tanımsız kart','16743294',0,2,'2017-06-28 17:31:38.170000',1);
INSERT INTO portunes_identifier VALUES(1765,'Tanımsız kart','16777183',0,2,'2017-06-28 17:31:38.247000',1);
INSERT INTO portunes_identifier VALUES(1766,'Tanımsız kart','5592917',0,2,'2017-06-28 17:46:58.925000',1);
INSERT INTO portunes_identifier VALUES(1767,'Tanımsız kart','68',0,2,'2017-06-28 17:53:00.277000',1);
INSERT INTO portunes_identifier VALUES(1768,'Tanımsız kart','16692949',0,2,'2017-06-28 17:59:02.035000',1);
INSERT INTO portunes_identifier VALUES(1769,'Tanımsız kart','15559102',0,2,'2017-06-28 17:59:02.112000',1);
INSERT INTO portunes_identifier VALUES(1770,'Tanımsız kart','8389760',0,2,'2017-06-28 18:22:10.230000',1);
INSERT INTO portunes_identifier VALUES(1771,'Tanımsız kart','2621952',0,2,'2017-06-28 18:22:10.776000',1);
INSERT INTO portunes_identifier VALUES(1772,'Tanımsız kart','2050',0,2,'2017-06-28 18:22:10.854000',1);
INSERT INTO portunes_identifier VALUES(1773,'Tanımsız kart','2113536',0,2,'2017-06-28 18:22:12.730000',1);
INSERT INTO portunes_identifier VALUES(1774,'Tanımsız kart','9437184',0,2,'2017-06-28 18:37:15.528000',1);
INSERT INTO portunes_identifier VALUES(1775,'Tanımsız kart','2687248',0,2,'2017-06-28 18:37:15.684000',1);
INSERT INTO portunes_identifier VALUES(1776,'Tanımsız kart','1048592',0,2,'2017-06-28 18:37:15.839000',1);
INSERT INTO portunes_identifier VALUES(1777,'Tanımsız kart','139520',0,2,'2017-06-28 18:37:16.150000',1);
INSERT INTO portunes_identifier VALUES(1778,'Tanımsız kart','9043968',0,2,'2017-06-28 18:37:17.322000',1);
INSERT INTO portunes_identifier VALUES(1779,'Tanımsız kart','4196482',0,2,'2017-06-28 18:37:19.194000',1);
INSERT INTO portunes_identifier VALUES(1780,'Tanımsız kart','8655108',0,2,'2017-06-28 18:37:19.271000',1);
INSERT INTO portunes_identifier VALUES(1781,'Tanımsız kart','520',0,2,'2017-06-28 19:37:26.110000',1);
INSERT INTO portunes_identifier VALUES(1782,'Tanımsız kart','263232',0,2,'2017-06-28 19:52:32.146000',1);
INSERT INTO portunes_identifier VALUES(1783,'Tanımsız kart','8945664',0,2,'2017-06-28 19:52:32.535000',1);
INSERT INTO portunes_identifier VALUES(1784,'Tanımsız kart','1056',0,2,'2017-06-28 20:07:35.908000',1);
INSERT INTO portunes_identifier VALUES(1785,'Tanımsız kart','10485760',0,2,'2017-06-28 20:07:35.985000',1);
INSERT INTO portunes_identifier VALUES(1786,'Tanımsız kart','8388676',0,2,'2017-06-28 20:07:36.219000',1);
INSERT INTO portunes_identifier VALUES(1787,'Tanımsız kart','9437189',0,2,'2017-06-28 23:10:54.707000',1);
INSERT INTO portunes_identifier VALUES(1788,'Tanımsız kart','7166890',0,2,'2017-06-29 00:52:02.585000',1);
INSERT INTO portunes_identifier VALUES(1789,'Tanımsız kart','16252911',0,2,'2017-06-29 03:10:13.741000',1);
INSERT INTO portunes_identifier VALUES(1790,'Tanımsız kart','16081915',0,2,'2017-06-29 04:05:18.436000',1);
INSERT INTO portunes_identifier VALUES(1791,'Tanımsız kart','5887426',0,2,'2017-06-29 05:33:27.727000',1);
INSERT INTO portunes_identifier VALUES(1792,'Tanımsız kart','10442049',0,2,'2017-06-29 06:15:34.886000',1);
INSERT INTO portunes_identifier VALUES(1793,'Tanımsız kart','11179349',0,2,'2017-06-29 06:15:35.504000',1);
INSERT INTO portunes_identifier VALUES(1794,'Tanımsız kart','5704281',0,2,'2017-06-29 06:24:13.819000',1);
INSERT INTO portunes_identifier VALUES(1795,'Tanımsız kart','4472989',0,2,'2017-06-29 06:31:39.519000',1);
INSERT INTO portunes_identifier VALUES(1796,'Tanımsız kart','2621440',0,2,'2017-06-29 06:38:41.586000',1);
INSERT INTO portunes_identifier VALUES(1797,'Tanımsız kart','6039911',0,2,'2017-06-29 06:42:51.194000',1);
INSERT INTO portunes_identifier VALUES(1798,'Tanımsız kart','16645887',0,2,'2017-06-29 07:41:00.105000',1);
INSERT INTO portunes_identifier VALUES(1799,'Tanımsız kart','2808539',0,2,'2017-06-29 07:48:00.853000',1);
INSERT INTO portunes_identifier VALUES(1800,'Tanımsız kart','16609279',0,2,'2017-06-29 08:03:03.589000',1);
INSERT INTO portunes_identifier VALUES(1801,'Tanımsız kart','16695295',0,2,'2017-06-29 08:03:03.666000',1);
INSERT INTO portunes_identifier VALUES(1802,'Tanımsız kart','16776703',0,2,'2017-06-29 08:03:03.743000',1);
INSERT INTO portunes_identifier VALUES(1803,'Tanımsız kart','16098229',0,2,'2017-06-29 08:10:04.666000',1);
INSERT INTO portunes_identifier VALUES(1804,'Tanımsız kart','3546466',0,2,'2017-06-29 08:31:10.096000',1);
INSERT INTO portunes_identifier VALUES(1805,'Tanımsız kart','5381474',0,2,'2017-06-29 08:31:10.173000',1);
INSERT INTO portunes_identifier VALUES(1806,'Tanımsız kart','16711678',0,2,'2017-06-29 08:33:10.475000',1);
INSERT INTO portunes_identifier VALUES(1807,'Tanımsız kart','16482303',0,2,'2017-06-29 08:33:10.631000',1);
INSERT INTO portunes_identifier VALUES(1808,'Tanımsız kart','16776575',0,2,'2017-06-29 08:33:10.709000',1);
INSERT INTO portunes_identifier VALUES(1809,'Tanımsız kart','14679551',0,2,'2017-06-29 08:33:10.864000',1);
INSERT INTO portunes_identifier VALUES(1810,'Tanımsız kart','5543077',0,2,'2017-06-29 08:39:12.456000',1);
INSERT INTO portunes_identifier VALUES(1811,'Tanımsız kart','1748048',0,2,'2017-06-29 08:39:12.611000',1);
INSERT INTO portunes_identifier VALUES(1812,'Tanımsız kart','3514689',0,2,'2017-06-29 08:39:12.766000',1);
INSERT INTO portunes_identifier VALUES(1813,'Tanımsız kart','12233918',0,2,'2017-06-29 10:10:31.801000',1);
INSERT INTO portunes_identifier VALUES(1814,'Tanımsız kart','15392061',0,2,'2017-06-29 10:23:33.736000',1);
INSERT INTO portunes_identifier VALUES(1815,'Tanımsız kart','3848373',0,2,'2017-06-29 11:25:46.332000',1);
INSERT INTO portunes_identifier VALUES(1816,'Tanımsız kart','1824566',0,2,'2017-06-29 11:45:50.385000',1);
INSERT INTO portunes_identifier VALUES(1817,'Tanımsız kart','10625102',0,2,'2017-06-29 12:07:53.483000',1);
INSERT INTO portunes_identifier VALUES(1818,'Tanımsız kart','11192757',0,2,'2017-06-29 12:20:54.972000',1);
INSERT INTO portunes_identifier VALUES(1819,'Tanımsız kart','11192758',0,2,'2017-06-29 12:20:55.049000',1);
INSERT INTO portunes_identifier VALUES(1820,'Tanımsız kart','12231200',0,2,'2017-06-29 12:30:56.835000',1);
INSERT INTO portunes_identifier VALUES(1821,'Tanımsız kart','9497366',0,2,'2017-06-29 12:45:00.039000',1);
INSERT INTO portunes_identifier VALUES(1822,'Tanımsız kart','2129921',0,2,'2017-06-29 12:53:01.440000',1);
INSERT INTO portunes_identifier VALUES(1823,'Tanımsız kart','14196565',0,2,'2017-06-29 14:26:21.754000',1);
INSERT INTO portunes_identifier VALUES(1824,'Tanımsız kart','13979743',0,2,'2017-06-29 15:52:31.051000',1);
INSERT INTO portunes_identifier VALUES(1825,'Tanımsız kart','15552607',0,2,'2017-06-29 15:52:31.128000',1);
INSERT INTO portunes_identifier VALUES(1826,'Tanımsız kart','16689794',0,2,'2017-06-29 15:52:31.205000',1);
INSERT INTO portunes_identifier VALUES(1827,'Tanımsız kart','12495490',0,2,'2017-06-29 15:52:31.282000',1);
INSERT INTO portunes_identifier VALUES(1828,'Tanımsız kart','16077847',0,2,'2017-06-29 15:52:31.590000',1);
INSERT INTO portunes_identifier VALUES(1829,'Tanımsız kart','4473924',0,2,'2017-06-29 16:18:36.235000',1);
INSERT INTO portunes_identifier VALUES(1830,'Tanımsız kart','6275035',0,2,'2017-06-29 16:32:37.607000',1);
INSERT INTO portunes_identifier VALUES(1831,'Tanımsız kart','13980068',0,2,'2017-06-29 19:38:55.017000',1);
INSERT INTO portunes_identifier VALUES(1832,'Tanımsız kart','9589925',0,2,'2017-06-29 20:04:57.578000',1);
INSERT INTO portunes_identifier VALUES(1833,'Tanımsız kart','2435746',0,2,'2017-06-29 20:24:59.335000',1);
INSERT INTO portunes_identifier VALUES(1834,'Tanımsız kart','11184809',0,2,'2017-06-29 20:33:00.911000',1);
INSERT INTO portunes_identifier VALUES(1835,'Tanımsız kart','2394432',0,2,'2017-06-29 20:57:03.092000',1);
INSERT INTO portunes_identifier VALUES(1836,'Tanımsız kart','12409086',0,2,'2017-06-30 00:17:19.941000',1);
INSERT INTO portunes_identifier VALUES(1837,'Tanımsız kart','16644539',0,2,'2017-06-30 02:30:33.537000',1);
INSERT INTO portunes_identifier VALUES(1838,'Tanımsız kart','4795730',0,2,'2017-06-30 04:29:42.949000',1);
INSERT INTO portunes_identifier VALUES(1839,'Tanımsız kart','5542472',0,2,'2017-06-30 04:36:44.554000',1);
INSERT INTO portunes_identifier VALUES(1840,'Tanımsız kart','15424502',0,2,'2017-06-30 04:53:47.472000',1);
INSERT INTO portunes_identifier VALUES(1841,'Tanımsız kart','2236997',0,2,'2017-06-30 04:53:47.627000',1);
INSERT INTO portunes_identifier VALUES(1842,'Tanımsız kart','9606290',0,2,'2017-06-30 04:53:47.704000',1);
INSERT INTO portunes_identifier VALUES(1843,'Tanımsız kart','16186239',0,2,'2017-06-30 05:26:51.115000',1);
INSERT INTO portunes_identifier VALUES(1844,'Tanımsız kart','10446786',0,2,'2017-06-30 06:28:59.878000',1);
INSERT INTO portunes_identifier VALUES(1845,'Tanımsız kart','4675022',0,2,'2017-06-30 06:37:02.271000',1);
INSERT INTO portunes_identifier VALUES(1846,'Tanımsız kart','6118547',0,2,'2017-06-30 07:35:17.092000',1);
INSERT INTO portunes_identifier VALUES(1847,'Tanımsız kart','9123357',0,2,'2017-06-30 08:17:23.543000',1);
INSERT INTO portunes_identifier VALUES(1848,'Tanımsız kart','9786517',0,2,'2017-06-30 08:31:26.207000',1);
INSERT INTO portunes_identifier VALUES(1849,'Tanımsız kart','8377680',0,2,'2017-06-30 08:44:28.372000',1);
INSERT INTO portunes_identifier VALUES(1850,'Tanımsız kart','6673861',0,2,'2017-06-30 08:50:29.799000',1);
INSERT INTO portunes_identifier VALUES(1851,'Tanımsız kart','2164881',0,2,'2017-06-30 09:19:34.746000',1);
INSERT INTO portunes_identifier VALUES(1852,'Tanımsız kart','8955218',0,2,'2017-06-30 09:19:34.823000',1);
INSERT INTO portunes_identifier VALUES(1853,'Tanımsız kart','5284514',0,2,'2017-06-30 09:19:34.900000',1);
INSERT INTO portunes_identifier VALUES(1854,'Tanımsız kart','10791594',0,2,'2017-06-30 09:19:34.978000',1);
INSERT INTO portunes_identifier VALUES(1855,'Tanımsız kart','5395626',0,2,'2017-06-30 09:19:35.055000',1);
INSERT INTO portunes_identifier VALUES(1856,'Tanımsız kart','11183442',0,2,'2017-06-30 09:19:35.132000',1);
INSERT INTO portunes_identifier VALUES(1857,'Tanımsız kart','9086290',0,2,'2017-06-30 09:42:38.132000',1);
INSERT INTO portunes_identifier VALUES(1858,'Tanımsız kart','12473983',0,2,'2017-06-30 10:49:47.162000',1);
INSERT INTO portunes_identifier VALUES(1859,'Tanımsız kart','2393162',0,2,'2017-06-30 11:07:50.770000',1);
INSERT INTO portunes_identifier VALUES(1860,'Tanımsız kart','11097385',0,2,'2017-06-30 11:07:50.847000',1);
INSERT INTO portunes_identifier VALUES(1861,'Tanımsız kart','5589673',0,2,'2017-06-30 11:07:50.924000',1);
INSERT INTO portunes_identifier VALUES(1862,'Tanımsız kart','11044883',0,2,'2017-06-30 11:41:56.571000',1);
INSERT INTO portunes_identifier VALUES(1863,'Tanımsız kart','11214809',0,2,'2017-06-30 13:52:16.836000',1);
INSERT INTO portunes_identifier VALUES(1864,'Tanımsız kart','11446408',0,2,'2017-06-30 14:02:18.788000',1);
INSERT INTO portunes_identifier VALUES(1865,'Tanımsız kart','9786706',0,2,'2017-06-30 14:16:20.362000',1);
INSERT INTO portunes_identifier VALUES(1866,'Tanımsız kart','10423039',0,2,'2017-06-30 14:44:27.168000',1);
INSERT INTO portunes_identifier VALUES(1867,'Tanımsız kart','16036586',0,2,'2017-06-30 15:07:30.873000',1);
INSERT INTO portunes_identifier VALUES(1868,'Tanımsız kart','524329',0,2,'2017-06-30 15:47:37.646000',1);
INSERT INTO portunes_identifier VALUES(1869,'Tanımsız kart','12231675',0,2,'2017-06-30 15:49:38.050000',1);
INSERT INTO portunes_identifier VALUES(1870,'Tanımsız kart','8349611',0,2,'2017-06-30 15:49:38.516000',1);
INSERT INTO portunes_identifier VALUES(1871,'Tanımsız kart','11184298',0,2,'2017-06-30 17:05:48.686000',1);
INSERT INTO portunes_identifier VALUES(1872,'Tanımsız kart','5313160',0,2,'2017-06-30 17:50:53.009000',1);
INSERT INTO portunes_identifier VALUES(1873,'Tanımsız kart','1189001',0,2,'2017-06-30 17:50:53.086000',1);
INSERT INTO portunes_identifier VALUES(1874,'Tanımsız kart','9783882',0,2,'2017-06-30 17:50:53.163000',1);
INSERT INTO portunes_identifier VALUES(1875,'Tanımsız kart','13535411',0,2,'2017-06-30 18:18:56.074000',1);
INSERT INTO portunes_identifier VALUES(1876,'Tanımsız kart','12778148',0,2,'2017-06-30 18:38:58.041000',1);
INSERT INTO portunes_identifier VALUES(1877,'Tanımsız kart','16733505',0,2,'2017-06-30 19:16:01.555000',1);
INSERT INTO portunes_identifier VALUES(1878,'Tanımsız kart','10660181',0,2,'2017-07-01 04:52:47.889000',1);
INSERT INTO portunes_identifier VALUES(1879,'Tanımsız kart','4793493',0,2,'2017-07-01 04:54:48.214000',1);
INSERT INTO portunes_identifier VALUES(1880,'Tanımsız kart','5280426',0,2,'2017-07-01 04:54:48.291000',1);
INSERT INTO portunes_identifier VALUES(1881,'Tanımsız kart','14400970',0,2,'2017-07-01 06:38:57.278000',1);
INSERT INTO portunes_identifier VALUES(1882,'Tanımsız kart','8383709',0,2,'2017-07-01 07:04:59.396000',1);
INSERT INTO portunes_identifier VALUES(1883,'Tanımsız kart','10789544',0,2,'2017-07-01 07:44:02.726000',1);
INSERT INTO portunes_identifier VALUES(1884,'Tanımsız kart','9079073',0,2,'2017-07-01 15:32:43.376000',1);
INSERT INTO portunes_identifier VALUES(1885,'Tanımsız kart','5941930',0,2,'2017-07-01 17:58:56.328000',1);
INSERT INTO portunes_identifier VALUES(1886,'Tanımsız kart','610948',0,2,'2017-07-01 20:06:07.114000',1);
INSERT INTO portunes_identifier VALUES(1887,'Tanımsız kart','15645565',0,2,'2017-07-01 20:48:10.878000',1);
INSERT INTO portunes_identifier VALUES(1888,'Tanımsız kart','11197109',0,2,'2017-07-01 20:48:10.955000',1);
INSERT INTO portunes_identifier VALUES(1889,'Tanımsız kart','12495870',0,2,'2017-07-01 22:00:16.936000',1);
INSERT INTO portunes_identifier VALUES(1890,'Tanımsız kart','4788801',0,2,'2017-07-01 23:24:23.665000',1);
INSERT INTO portunes_identifier VALUES(1891,'Tanımsız kart','12496877',0,2,'2017-07-02 00:36:29.594000',1);
INSERT INTO portunes_identifier VALUES(1892,'Tanımsız kart','1217706',0,2,'2017-07-02 01:15:32.852000',1);
INSERT INTO portunes_identifier VALUES(1893,'Tanımsız kart','16252891',0,2,'2017-07-02 04:00:46.449000',1);
INSERT INTO portunes_identifier VALUES(1894,'Tanımsız kart','9783653',0,2,'2017-07-02 04:34:49.315000',1);
INSERT INTO portunes_identifier VALUES(1895,'Tanımsız kart','8388628',0,2,'2017-07-02 05:48:56.696000',1);
INSERT INTO portunes_identifier VALUES(1896,'Tanımsız kart','5592402',0,2,'2017-07-02 06:03:57.935000',1);
INSERT INTO portunes_identifier VALUES(1897,'Tanımsız kart','2359296',0,2,'2017-07-02 08:02:09.393000',1);
INSERT INTO portunes_identifier VALUES(1898,'Tanımsız kart','131104',0,2,'2017-07-02 08:02:09.783000',1);
INSERT INTO portunes_identifier VALUES(1899,'Tanımsız kart','144',0,2,'2017-07-02 08:02:09.938000',1);
INSERT INTO portunes_identifier VALUES(1900,'Tanımsız kart','262272',0,2,'2017-07-02 08:02:10.328000',1);
INSERT INTO portunes_identifier VALUES(1901,'Tanımsız kart','65538',0,2,'2017-07-02 08:02:12.909000',1);
INSERT INTO portunes_identifier VALUES(1902,'Tanımsız kart','4325380',0,2,'2017-07-02 08:02:13.847000',1);
INSERT INTO portunes_identifier VALUES(1903,'Tanımsız kart','65608',0,2,'2017-07-02 08:02:15.019000',1);
INSERT INTO portunes_identifier VALUES(1904,'Tanımsız kart','16386',0,2,'2017-07-02 08:02:15.879000',1);
INSERT INTO portunes_identifier VALUES(1905,'Tanımsız kart','11183392',0,2,'2017-07-02 17:03:04.372000',1);
INSERT INTO portunes_identifier VALUES(1906,'Tanımsız kart','2378018',0,2,'2017-07-02 17:32:07.402000',1);
INSERT INTO portunes_identifier VALUES(1907,'Tanımsız kart','8929808',0,2,'2017-07-02 17:32:07.480000',1);
INSERT INTO portunes_identifier VALUES(1908,'Tanımsız kart','4681',0,2,'2017-07-02 17:39:08.049000',1);
INSERT INTO portunes_identifier VALUES(1909,'Tanımsız kart','8798416',0,2,'2017-07-02 17:39:08.127000',1);
INSERT INTO portunes_identifier VALUES(1910,'Tanımsız kart','4210818',0,2,'2017-07-02 17:39:08.204000',1);
INSERT INTO portunes_identifier VALUES(1911,'Tanımsız kart','8947844',0,2,'2017-07-02 17:39:08.281000',1);
INSERT INTO portunes_identifier VALUES(1912,'Tanımsız kart','8458368',0,2,'2017-07-02 17:39:08.359000',1);
INSERT INTO portunes_identifier VALUES(1913,'Tanımsız kart','2097173',0,2,'2017-07-02 17:39:08.436000',1);
INSERT INTO portunes_identifier VALUES(1914,'Tanımsız kart','590114',0,2,'2017-07-02 17:39:08.513000',1);
INSERT INTO portunes_identifier VALUES(1915,'Tanımsız kart','11184821',0,2,'2017-07-02 18:00:10.726000',1);
INSERT INTO portunes_identifier VALUES(1916,'Tanımsız kart','2376260',0,2,'2017-07-02 19:03:16.792000',1);
INSERT INTO portunes_identifier VALUES(1917,'Tanımsız kart','4202562',0,2,'2017-07-02 19:03:16.870000',1);
INSERT INTO portunes_identifier VALUES(1918,'Tanımsız kart','10701290',0,2,'2017-07-02 20:00:21.791000',1);
INSERT INTO portunes_identifier VALUES(1919,'Tanımsız kart','8921218',0,2,'2017-07-02 23:15:40.283000',1);
INSERT INTO portunes_identifier VALUES(1920,'Tanımsız kart','13454813',0,2,'2017-07-02 23:50:43.799000',1);
INSERT INTO portunes_identifier VALUES(1921,'Tanımsız kart','1343488',0,2,'2017-07-03 00:14:46.208000',1);
INSERT INTO portunes_identifier VALUES(1922,'Tanımsız kart','4499605',0,2,'2017-07-03 01:32:52.685000',1);
INSERT INTO portunes_identifier VALUES(1923,'Tanımsız kart','5553645',0,2,'2017-07-03 01:52:54.318000',1);
INSERT INTO portunes_identifier VALUES(1924,'Tanımsız kart','8338095',0,2,'2017-07-03 02:31:57.466000',1);
INSERT INTO portunes_identifier VALUES(1925,'Tanımsız kart','11162772',0,2,'2017-07-03 04:55:09.795000',1);
INSERT INTO portunes_identifier VALUES(1926,'Stajyer1','1932759',1,2,'2017-07-03 07:48:28.312000',0);
INSERT INTO portunes_identifier VALUES(1927,'Stajyer2','1932804',1,2,'2017-07-03 07:48:47.050000',0);
INSERT INTO portunes_identifier VALUES(1928,'Stajyer3','1923068',1,1,'2017-07-03 07:49:08.353000',0);
INSERT INTO portunes_identifier VALUES(1929,'Stajyer5','1907153',1,2,'2017-07-03 07:49:29.833000',0);
INSERT INTO portunes_identifier VALUES(1930,'Stajyer4','1922810',1,2,'2017-07-03 07:49:48.688000',0);
INSERT INTO portunes_identifier VALUES(1931,'Tanımsız kart','5542176',0,2,'2017-07-03 08:12:53.814000',1);
INSERT INTO portunes_identifier VALUES(1932,'Tanımsız kart','10486850',0,2,'2017-07-03 08:54:02.067000',1);
INSERT INTO portunes_identifier VALUES(1933,'Tanımsız kart','13985239',0,2,'2017-07-03 09:02:03.601000',1);
INSERT INTO portunes_identifier VALUES(1934,'Tanımsız kart','13985271',0,2,'2017-07-03 09:02:03.678000',1);
INSERT INTO portunes_identifier VALUES(1935,'Tanımsız kart','10776766',0,2,'2017-07-03 09:04:05.008000',1);
INSERT INTO portunes_identifier VALUES(1936,'Tanımsız kart','2229482',0,2,'2017-07-03 09:12:06.152000',1);
INSERT INTO portunes_identifier VALUES(1937,'Tanımsız kart','12566446',0,2,'2017-07-03 11:06:21.346000',1);
INSERT INTO portunes_identifier VALUES(1938,'Tanımsız kart','7432925',0,2,'2017-07-03 11:35:25.119000',1);
INSERT INTO portunes_identifier VALUES(1939,'Tanımsız kart','6198933',0,2,'2017-07-03 12:24:24.157000',1);
INSERT INTO portunes_identifier VALUES(1940,'Tanımsız kart','2794988',0,2,'2017-07-03 12:24:26.041000',1);
INSERT INTO portunes_identifier VALUES(1941,'Tanımsız kart','11250571',0,2,'2017-07-03 13:21:20.973000',1);
INSERT INTO portunes_identifier VALUES(1942,'Tanımsız kart','5120',0,2,'2017-07-03 13:29:47.853000',1);
INSERT INTO portunes_identifier VALUES(1943,'Tanımsız kart','10790185',0,2,'2017-07-03 13:30:15.581000',1);
INSERT INTO portunes_identifier VALUES(1944,'Tanımsız kart','8448',0,2,'2017-07-03 13:30:57.870000',1);
INSERT INTO portunes_identifier VALUES(1945,'Tanımsız kart','5581380',0,2,'2017-07-03 13:31:26.801000',1);
INSERT INTO portunes_identifier VALUES(1946,'Tanımsız kart','4224',0,2,'2017-07-03 13:31:45.793000',1);
INSERT INTO portunes_identifier VALUES(1947,'Tanımsız kart','1052680',0,2,'2017-07-03 13:32:07.149000',1);
INSERT INTO portunes_identifier VALUES(1948,'Tanımsız kart','163840',0,2,'2017-07-03 13:32:24.208000',1);
INSERT INTO portunes_identifier VALUES(1949,'Tanımsız kart','1056776',0,2,'2017-07-03 13:32:29.857000',1);
INSERT INTO portunes_identifier VALUES(1950,'Tanımsız kart','4281509',0,2,'2017-07-03 13:32:48.429000',1);
INSERT INTO portunes_identifier VALUES(1951,'Tanımsız kart','4194368',0,2,'2017-07-03 13:33:03.569000',1);
INSERT INTO portunes_identifier VALUES(1952,'Tanımsız kart','10768930',0,2,'2017-07-03 13:33:14.345000',1);
INSERT INTO portunes_identifier VALUES(1953,'Tanımsız kart','2697872',0,2,'2017-07-03 13:33:16.141000',1);
INSERT INTO portunes_identifier VALUES(1954,'Tanımsız kart','9775360',0,2,'2017-07-03 13:33:17.617000',1);
INSERT INTO portunes_identifier VALUES(1955,'Tanımsız kart','270336',0,2,'2017-07-03 13:33:23.845000',1);
INSERT INTO portunes_identifier VALUES(1956,'Tanımsız kart','524578',0,2,'2017-07-03 13:33:29.017000',1);
INSERT INTO portunes_identifier VALUES(1957,'Tanımsız kart','320',0,2,'2017-07-03 13:33:35.561000',1);
INSERT INTO portunes_identifier VALUES(1958,'Tanımsız kart','131328',0,2,'2017-07-03 13:33:42.253000',1);
INSERT INTO portunes_identifier VALUES(1959,'Tanımsız kart','1052673',0,2,'2017-07-03 13:34:04.449000',1);
INSERT INTO portunes_identifier VALUES(1960,'Tanımsız kart','40960',0,2,'2017-07-03 13:34:10.601000',1);
INSERT INTO portunes_identifier VALUES(1961,'Tanımsız kart','34816',0,2,'2017-07-03 13:34:27.221000',1);
INSERT INTO portunes_identifier VALUES(1962,'Tanımsız kart','8987786',0,2,'2017-07-03 13:34:35.057000',1);
INSERT INTO portunes_identifier VALUES(1963,'Tanımsız kart','5294762',0,2,'2017-07-03 13:34:40.941000',1);
INSERT INTO portunes_identifier VALUES(1964,'Tanımsız kart','2560',0,2,'2017-07-03 13:34:42.469000',1);
INSERT INTO portunes_identifier VALUES(1965,'Tanımsız kart','67584',0,2,'2017-07-03 13:34:45.177000',1);
INSERT INTO portunes_identifier VALUES(1966,'Tanımsız kart','5593386',0,2,'2017-07-03 13:34:47.029000',1);
INSERT INTO portunes_identifier VALUES(1967,'Tanımsız kart','10843505',0,2,'2017-07-03 13:34:48.933000',1);
INSERT INTO portunes_identifier VALUES(1968,'Tanımsız kart','13178377',0,2,'2017-07-03 13:34:54.725000',1);
INSERT INTO portunes_identifier VALUES(1969,'Tanımsız kart','1048640',0,2,'2017-07-03 13:35:11.397000',1);
INSERT INTO portunes_identifier VALUES(1970,'Tanımsız kart','8396816',0,2,'2017-07-03 13:35:21.333000',1);
INSERT INTO portunes_identifier VALUES(1971,'Tanımsız kart','33312',0,2,'2017-07-03 13:35:41.589000',1);
INSERT INTO portunes_identifier VALUES(1972,'Tanımsız kart','541184',0,2,'2017-07-03 13:35:50.877000',1);
INSERT INTO portunes_identifier VALUES(1973,'Tanımsız kart','1179712',0,2,'2017-07-03 13:35:54.677000',1);
INSERT INTO portunes_identifier VALUES(1974,'Tanımsız kart','1064960',0,2,'2017-07-03 13:36:18.637000',1);
INSERT INTO portunes_identifier VALUES(1975,'Tanımsız kart','139266',0,2,'2017-07-03 13:36:25.305000',1);
INSERT INTO portunes_identifier VALUES(1976,'Tanımsız kart','4194312',0,2,'2017-07-03 13:36:29.153000',1);
INSERT INTO portunes_identifier VALUES(1977,'Tanımsız kart','8421888',0,2,'2017-07-03 13:36:45.641000',1);
INSERT INTO portunes_identifier VALUES(1978,'Tanımsız kart','131088',0,2,'2017-07-03 13:36:57.089000',1);
INSERT INTO portunes_identifier VALUES(1979,'Tanımsız kart','2097424',0,2,'2017-07-03 13:36:58.937000',1);
INSERT INTO portunes_identifier VALUES(1980,'Tanımsız kart','4132',0,2,'2017-07-03 13:37:00.529000',1);
INSERT INTO portunes_identifier VALUES(1981,'Tanımsız kart','16417',0,2,'2017-07-03 13:37:06.185000',1);
INSERT INTO portunes_identifier VALUES(1982,'Tanımsız kart','8390912',0,2,'2017-07-03 13:37:31.793000',1);
INSERT INTO portunes_identifier VALUES(1983,'Tanımsız kart','4784136',0,2,'2017-07-03 13:37:33.497000',1);
INSERT INTO portunes_identifier VALUES(1984,'Tanımsız kart','10635596',0,2,'2017-07-03 13:38:07.689000',1);
INSERT INTO portunes_identifier VALUES(1985,'Tanımsız kart','149504',0,2,'2017-07-03 13:38:09.457000',1);
INSERT INTO portunes_identifier VALUES(1986,'Tanımsız kart','5331108',0,2,'2017-07-03 13:38:12.445000',1);
INSERT INTO portunes_identifier VALUES(1987,'Tanımsız kart','4229456',0,2,'2017-07-03 13:38:13.857000',1);
INSERT INTO portunes_identifier VALUES(1988,'Tanımsız kart','11201250',0,2,'2017-07-03 13:38:17.625000',1);
INSERT INTO portunes_identifier VALUES(1989,'Tanımsız kart','11146580',0,2,'2017-07-03 13:38:19.153000',1);
INSERT INTO portunes_identifier VALUES(1990,'Tanımsız kart','9086292',0,2,'2017-07-03 13:38:20.937000',1);
INSERT INTO portunes_identifier VALUES(1991,'Tanımsız kart','2646569',0,2,'2017-07-03 13:38:22.401000',1);
INSERT INTO portunes_identifier VALUES(1992,'Tanımsız kart','9511445',0,2,'2017-07-03 13:38:23.833000',1);
INSERT INTO portunes_identifier VALUES(1993,'Tanımsız kart','2232978',0,2,'2017-07-03 13:38:25.305000',1);
INSERT INTO portunes_identifier VALUES(1994,'Tanımsız kart','9275541',0,2,'2017-07-03 13:38:28.449000',1);
INSERT INTO portunes_identifier VALUES(1995,'Tanımsız kart','149544',0,2,'2017-07-03 13:38:30.753000',1);
INSERT INTO portunes_identifier VALUES(1996,'Tanımsız kart','11018496',0,2,'2017-07-03 13:38:32.709000',1);
INSERT INTO portunes_identifier VALUES(1997,'Tanımsız kart','13980842',0,2,'2017-07-03 13:38:34.841000',1);
INSERT INTO portunes_identifier VALUES(1998,'Tanımsız kart','8939669',0,2,'2017-07-03 13:38:36.837000',1);
INSERT INTO portunes_identifier VALUES(1999,'Tanımsız kart','2107413',0,2,'2017-07-03 13:38:38.181000',1);
INSERT INTO portunes_identifier VALUES(2000,'Tanımsız kart','5417620',0,2,'2017-07-03 13:38:39.985000',1);
INSERT INTO portunes_identifier VALUES(2001,'Tanımsız kart','5384874',0,2,'2017-07-03 13:38:41.621000',1);
INSERT INTO portunes_identifier VALUES(2002,'Tanımsız kart','657928',0,2,'2017-07-03 13:38:43.253000',1);
INSERT INTO portunes_identifier VALUES(2003,'Tanımsız kart','10835113',0,2,'2017-07-03 13:38:44.913000',1);
INSERT INTO portunes_identifier VALUES(2004,'Tanımsız kart','11358888',0,2,'2017-07-03 13:38:46.153000',1);
INSERT INTO portunes_identifier VALUES(2005,'Tanımsız kart','10854946',0,2,'2017-07-03 13:38:47.737000',1);
INSERT INTO portunes_identifier VALUES(2006,'Tanımsız kart','4477957',0,2,'2017-07-03 13:38:49.593000',1);
INSERT INTO portunes_identifier VALUES(2007,'Tanımsız kart','11094665',0,2,'2017-07-03 13:38:50.833000',1);
INSERT INTO portunes_identifier VALUES(2008,'Tanımsız kart','4362922',0,2,'2017-07-03 13:38:54.098000',1);
INSERT INTO portunes_identifier VALUES(2009,'Tanımsız kart','2630984',0,2,'2017-07-03 13:38:56.165000',1);
INSERT INTO portunes_identifier VALUES(2010,'Tanımsız kart','11152042',0,2,'2017-07-03 13:39:00.509000',1);
INSERT INTO portunes_identifier VALUES(2011,'Tanımsız kart','9611861',0,2,'2017-07-03 13:39:02.077000',1);
INSERT INTO portunes_identifier VALUES(2012,'Tanımsız kart','8686229',0,2,'2017-07-03 13:39:03.481000',1);
INSERT INTO portunes_identifier VALUES(2013,'Tanımsız kart','4805204',0,2,'2017-07-03 13:39:05.185000',1);
INSERT INTO portunes_identifier VALUES(2014,'Tanımsız kart','9087120',0,2,'2017-07-03 13:39:06.914000',1);
INSERT INTO portunes_identifier VALUES(2015,'Tanımsız kart','11174185',0,2,'2017-07-03 13:39:08.541000',1);
INSERT INTO portunes_identifier VALUES(2016,'Tanımsız kart','9742357',0,2,'2017-07-03 13:39:10.349000',1);
INSERT INTO portunes_identifier VALUES(2017,'Tanımsız kart','4499621',0,2,'2017-07-03 13:39:11.538000',1);
INSERT INTO portunes_identifier VALUES(2018,'Tanımsız kart','11097381',0,2,'2017-07-03 13:39:13.293000',1);
INSERT INTO portunes_identifier VALUES(2019,'Tanımsız kart','2756874',0,2,'2017-07-03 13:39:15.133000',1);
INSERT INTO portunes_identifier VALUES(2020,'Tanımsız kart','2435756',0,2,'2017-07-03 13:39:16.845000',1);
INSERT INTO portunes_identifier VALUES(2021,'Tanımsız kart','2795776',0,2,'2017-07-03 13:39:19.053000',1);
INSERT INTO portunes_identifier VALUES(2022,'Tanımsız kart','11184778',0,2,'2017-07-03 13:39:21.337000',1);
INSERT INTO portunes_identifier VALUES(2023,'Tanımsız kart','10638674',0,2,'2017-07-03 13:39:23.365000',1);
INSERT INTO portunes_identifier VALUES(2024,'Tanımsız kart','10507346',0,2,'2017-07-03 13:39:25.917000',1);
INSERT INTO portunes_identifier VALUES(2025,'Tanımsız kart','4198986',0,2,'2017-07-03 13:39:27.682000',1);
INSERT INTO portunes_identifier VALUES(2026,'Tanımsız kart','4866725',0,2,'2017-07-03 13:39:28.953000',1);
INSERT INTO portunes_identifier VALUES(2027,'Tanımsız kart','9603754',0,2,'2017-07-03 13:39:30.785000',1);
INSERT INTO portunes_identifier VALUES(2028,'Tanımsız kart','11086146',0,2,'2017-07-03 13:39:31.905000',1);
INSERT INTO portunes_identifier VALUES(2029,'Tanımsız kart','76116',0,2,'2017-07-03 13:39:33.345000',1);
INSERT INTO portunes_identifier VALUES(2030,'Tanımsız kart','5581394',0,2,'2017-07-03 13:39:34.974000',1);
INSERT INTO portunes_identifier VALUES(2031,'Tanımsız kart','1217674',0,2,'2017-07-03 13:39:36.689000',1);
INSERT INTO portunes_identifier VALUES(2032,'Tanımsız kart','12235858',0,2,'2017-07-03 13:46:01.565000',1);
INSERT INTO portunes_identifier VALUES(2033,'Tanımsız kart','11250501',0,2,'2017-07-03 13:46:49.789000',1);
INSERT INTO portunes_identifier VALUES(2034,'Tanımsız kart','3910542',0,2,'2017-07-03 13:50:21.701000',1);
INSERT INTO portunes_identifier VALUES(2035,'Tanımsız kart','15540189',0,2,'2017-07-03 14:05:40.389000',1);
INSERT INTO portunes_identifier VALUES(2036,'Tanımsız kart','4493858',0,2,'2017-07-03 14:38:44.137000',1);
INSERT INTO portunes_identifier VALUES(2037,'Tanımsız kart','5592404',0,2,'2017-07-03 15:00:28.550000',1);
INSERT INTO portunes_identifier VALUES(2038,'Tanımsız kart','11183450',0,2,'2017-07-03 15:26:36.385000',1);
INSERT INTO portunes_identifier VALUES(2039,'Tanımsız kart','11184805',0,2,'2017-07-03 15:29:42.053000',1);
INSERT INTO portunes_identifier VALUES(2040,'Tanımsız kart','11184725',0,2,'2017-07-03 15:58:50.561000',1);
INSERT INTO portunes_identifier VALUES(2041,'Tanımsız kart','2163232',0,2,'2017-07-03 17:04:41.901000',1);
INSERT INTO portunes_identifier VALUES(2042,'Tanımsız kart','4227586',0,2,'2017-07-03 17:04:43.509000',1);
INSERT INTO portunes_identifier VALUES(2043,'Tanımsız kart','9210001',0,2,'2017-07-03 17:12:52.349000',1);
INSERT INTO portunes_identifier VALUES(2044,'Tanımsız kart','16251899',0,2,'2017-07-03 17:18:02.305000',1);
INSERT INTO portunes_identifier VALUES(2045,'Tanımsız kart','2192',0,2,'2017-07-03 17:19:04.693000',1);
INSERT INTO portunes_identifier VALUES(2046,'Tanımsız kart','8390800',0,2,'2017-07-03 17:19:06.069000',1);
INSERT INTO portunes_identifier VALUES(2047,'Tanımsız kart','8390665',0,2,'2017-07-03 17:19:07.341000',1);
INSERT INTO portunes_identifier VALUES(2048,'Tanımsız kart','11233962',0,2,'2017-07-03 20:13:37.750000',1);
INSERT INTO portunes_identifier VALUES(2049,'Tanımsız kart','11228581',0,2,'2017-07-03 21:10:51.159000',1);
INSERT INTO portunes_identifier VALUES(2050,'Tanımsız kart','11228501',0,2,'2017-07-03 23:47:21.621000',1);
INSERT INTO portunes_identifier VALUES(2051,'Tanımsız kart','5597866',0,2,'2017-07-04 00:30:01.193000',1);
INSERT INTO portunes_identifier VALUES(2052,'Tanımsız kart','15379114',0,2,'2017-07-04 02:09:26.061000',1);
INSERT INTO portunes_identifier VALUES(2053,'Tanımsız kart','10835370',0,2,'2017-07-04 02:23:36.957000',1);
INSERT INTO portunes_identifier VALUES(2054,'Tanımsız kart','11183402',0,2,'2017-07-04 03:14:19.029000',1);
INSERT INTO portunes_identifier VALUES(2055,'Tanımsız kart','11184981',0,2,'2017-07-04 04:31:18.169000',1);
INSERT INTO portunes_identifier VALUES(2056,'Tanımsız kart','11461451',0,2,'2017-07-04 06:04:04.985000',1);
INSERT INTO portunes_identifier VALUES(2057,'Tanımsız kart','2328053',0,2,'2017-07-04 06:25:57.365000',1);
INSERT INTO portunes_identifier VALUES(2058,'Tanımsız kart','15373189',0,2,'2017-07-04 06:25:58.989000',1);
INSERT INTO portunes_identifier VALUES(2059,'Tanımsız kart','4893354',0,2,'2017-07-04 06:30:13.857000',1);
INSERT INTO portunes_identifier VALUES(2060,'Tanımsız kart','11162153',0,2,'2017-07-04 06:38:45.453000',1);
INSERT INTO portunes_identifier VALUES(2061,'Tanımsız kart','11184469',0,2,'2017-07-04 06:45:08.718000',1);
INSERT INTO portunes_identifier VALUES(2062,'Tanımsız kart','2088309',0,2,'2017-07-04 07:28:15.353000',1);
INSERT INTO portunes_identifier VALUES(2063,'Tanımsız kart','32776',0,2,'2017-07-04 07:53:11.953000',1);
INSERT INTO portunes_identifier VALUES(2064,'Tanımsız kart','131336',0,2,'2017-07-04 07:54:04.065000',1);
INSERT INTO portunes_identifier VALUES(2065,'Tanımsız kart','1154',0,2,'2017-07-04 07:54:49.813000',1);
INSERT INTO portunes_identifier VALUES(2066,'Tanımsız kart','2097153',0,2,'2017-07-04 07:56:51.549000',1);
INSERT INTO portunes_identifier VALUES(2067,'Tanımsız kart','260',0,2,'2017-07-04 07:56:58.505000',1);
INSERT INTO portunes_identifier VALUES(2068,'Tanımsız kart','2097154',0,2,'2017-07-04 07:57:00.741000',1);
INSERT INTO portunes_identifier VALUES(2069,'Tanımsız kart','2097168',0,2,'2017-07-04 07:57:09.636000',1);
INSERT INTO portunes_identifier VALUES(2070,'Tanımsız kart','262208',0,2,'2017-07-04 07:58:21.381000',1);
INSERT INTO portunes_identifier VALUES(2071,'Tanımsız kart','262146',0,2,'2017-07-04 07:58:25.481000',1);
INSERT INTO portunes_identifier VALUES(2072,'Tanımsız kart','2129920',0,2,'2017-07-04 08:14:11.881000',1);
INSERT INTO portunes_identifier VALUES(2073,'Tanımsız kart','8389640',0,2,'2017-07-04 08:14:18.561000',1);
INSERT INTO portunes_identifier VALUES(2074,'Tanımsız kart','8978688',0,2,'2017-07-04 08:14:19.849000',1);
INSERT INTO portunes_identifier VALUES(2075,'Tanımsız kart','2049',0,2,'2017-07-04 08:15:13.317000',1);
INSERT INTO portunes_identifier VALUES(2076,'Tanımsız kart','18724',0,2,'2017-07-04 08:15:27.181000',1);
INSERT INTO portunes_identifier VALUES(2077,'Tanımsız kart','4194305',0,2,'2017-07-04 08:15:40.005000',1);
INSERT INTO portunes_identifier VALUES(2078,'Tanımsız kart','8193',0,2,'2017-07-04 08:15:47.917000',1);
INSERT INTO portunes_identifier VALUES(2079,'Tanımsız kart','2105346',0,2,'2017-07-04 08:16:07.253000',1);
INSERT INTO portunes_identifier VALUES(2080,'dene','12345667',1,2,'2017-07-04 09:19:48.223000',0);
INSERT INTO portunes_identifier VALUES(2081,'Tanımsız kart','5992210',0,2,'2017-07-04 09:56:11.457000',1);
INSERT INTO portunes_identifier VALUES(2082,'Tanımsız kart','15394154',0,2,'2017-07-04 10:10:13.533000',1);
INSERT INTO portunes_identifier VALUES(2083,'Tanımsız kart','14656419',0,2,'2017-07-04 10:10:13.766000',1);
INSERT INTO portunes_identifier VALUES(2084,'Tanımsız kart','278528',0,2,'2017-07-04 10:33:22.459000',1);
INSERT INTO portunes_identifier VALUES(2085,'Tanımsız kart','4489346',0,2,'2017-07-04 10:33:26.290000',1);
INSERT INTO portunes_identifier VALUES(2086,'Tanımsız kart','2236962',0,2,'2017-07-04 11:14:33.123000',1);
INSERT INTO portunes_identifier VALUES(2087,'Tanımsız kart','4854016',0,2,'2017-07-04 11:31:35.877000',1);
INSERT INTO portunes_identifier VALUES(2088,'Tanımsız kart','10837338',0,2,'2017-07-04 12:20:44.123000',1);
INSERT INTO portunes_identifier VALUES(2089,'Tanımsız kart','11615914',0,2,'2017-07-04 12:34:47.844000',1);
INSERT INTO portunes_identifier VALUES(2090,'Tanımsız kart','12419071',0,2,'2017-07-04 13:16:17.599000',1);
INSERT INTO portunes_identifier VALUES(2091,'Tanımsız kart','12234358',0,2,'2017-07-04 13:17:17.916000',1);
INSERT INTO portunes_identifier VALUES(2092,'Tanımsız kart','4887722',0,2,'2017-07-04 13:41:23.951000',1);
INSERT INTO portunes_identifier VALUES(2093,'Tanımsız kart','16710333',0,2,'2017-07-04 13:44:24.284000',1);
INSERT INTO portunes_identifier VALUES(2094,'Tanımsız kart','6995306',0,2,'2017-07-04 13:44:24.440000',1);
INSERT INTO portunes_identifier VALUES(2095,'Tanımsız kart','11088127',0,2,'2017-07-04 14:02:48.105000',1);
INSERT INTO portunes_identifier VALUES(2096,'Tanımsız kart','16078690',0,2,'2017-07-04 14:14:38.134000',1);
INSERT INTO portunes_identifier VALUES(2097,'Tanımsız kart','9577618',0,2,'2017-07-04 14:58:44.287000',1);
INSERT INTO portunes_identifier VALUES(2098,'Tanımsız kart','2245701',0,2,'2017-07-04 14:58:44.364000',1);
INSERT INTO portunes_identifier VALUES(2099,'Tanımsız kart','9474634',0,2,'2017-07-04 14:58:44.442000',1);
INSERT INTO portunes_identifier VALUES(2100,'Tanımsız kart','9587370',0,2,'2017-07-04 14:58:44.597000',1);
INSERT INTO portunes_identifier VALUES(2101,'Tanımsız kart','7691501',0,2,'2017-07-04 15:08:45.829000',1);
INSERT INTO portunes_identifier VALUES(2102,'Tanımsız kart','10485768',0,2,'2017-07-04 15:54:53.916000',1);
INSERT INTO portunes_identifier VALUES(2103,'Tanımsız kart','2570',0,2,'2017-07-04 17:06:01.925000',1);
INSERT INTO portunes_identifier VALUES(2104,'Tanımsız kart','133122',0,2,'2017-07-04 17:06:02.003000',1);
INSERT INTO portunes_identifier VALUES(2105,'Tanımsız kart','4475200',0,2,'2017-07-04 17:33:04.501000',1);
INSERT INTO portunes_identifier VALUES(2106,'Tanımsız kart','3123783',0,2,'2017-07-04 17:57:06.563000',1);
INSERT INTO portunes_identifier VALUES(2107,'Tanımsız kart','11183434',0,2,'2017-07-04 18:27:09.583000',1);
INSERT INTO portunes_identifier VALUES(2108,'Tanımsız kart','4893013',0,2,'2017-07-04 18:27:09.660000',1);
INSERT INTO portunes_identifier VALUES(2109,'Tanımsız kart','1066048',0,2,'2017-07-04 20:36:21.317000',1);
INSERT INTO portunes_identifier VALUES(2110,'Tanımsız kart','13701185',0,2,'2017-07-04 20:41:21.797000',1);
INSERT INTO portunes_identifier VALUES(2111,'Tanımsız kart','15728639',0,2,'2017-07-04 20:44:22.130000',1);
INSERT INTO portunes_identifier VALUES(2112,'Tanımsız kart','2638994',0,2,'2017-07-04 20:44:22.207000',1);
INSERT INTO portunes_identifier VALUES(2113,'Tanımsız kart','11086421',0,2,'2017-07-04 20:49:22.791000',1);
INSERT INTO portunes_identifier VALUES(2114,'Tanımsız kart','279876',0,2,'2017-07-04 20:50:22.953000',1);
INSERT INTO portunes_identifier VALUES(2115,'Tanımsız kart','294986',0,2,'2017-07-04 20:50:23.187000',1);
INSERT INTO portunes_identifier VALUES(2116,'Tanımsız kart','9446404',0,2,'2017-07-04 20:50:23.264000',1);
INSERT INTO portunes_identifier VALUES(2117,'Tanımsız kart','131106',0,2,'2017-07-04 20:50:23.342000',1);
INSERT INTO portunes_identifier VALUES(2118,'Tanımsız kart','9507080',0,2,'2017-07-04 20:55:23.819000',1);
INSERT INTO portunes_identifier VALUES(2119,'Tanımsız kart','9507362',0,2,'2017-07-04 20:55:23.896000',1);
INSERT INTO portunes_identifier VALUES(2120,'Tanımsız kart','9061410',0,2,'2017-07-04 20:55:23.974000',1);
INSERT INTO portunes_identifier VALUES(2121,'Tanımsız kart','2232452',0,2,'2017-07-04 20:55:24.051000',1);
INSERT INTO portunes_identifier VALUES(2122,'Tanımsız kart','11184465',0,2,'2017-07-04 20:56:24.368000',1);
INSERT INTO portunes_identifier VALUES(2123,'Tanımsız kart','8076821',0,2,'2017-07-04 20:56:24.912000',1);
INSERT INTO portunes_identifier VALUES(2124,'Tanımsız kart','2763413',0,2,'2017-07-04 20:56:25.067000',1);
INSERT INTO portunes_identifier VALUES(2125,'Tanımsız kart','5547154',0,2,'2017-07-04 20:57:25.773000',1);
INSERT INTO portunes_identifier VALUES(2126,'Tanımsız kart','11359573',0,2,'2017-07-04 21:08:26.872000',1);
INSERT INTO portunes_identifier VALUES(2127,'Tanımsız kart','1299855',0,2,'2017-07-04 23:32:38.576000',1);
INSERT INTO portunes_identifier VALUES(2128,'Tanımsız kart','16774889',0,2,'2017-07-04 23:49:40.194000',1);
INSERT INTO portunes_identifier VALUES(2129,'Tanımsız kart','9786738',0,2,'2017-07-05 01:53:50.131000',1);
INSERT INTO portunes_identifier VALUES(2130,'Tanımsız kart','11150484',0,2,'2017-07-05 01:53:50.209000',1);
INSERT INTO portunes_identifier VALUES(2131,'Tanımsız kart','16629245',0,2,'2017-07-05 02:04:51.214000',1);
INSERT INTO portunes_identifier VALUES(2132,'Tanımsız kart','9589930',0,2,'2017-07-05 02:08:51.585000',1);
INSERT INTO portunes_identifier VALUES(2133,'Tanımsız kart','1399125',0,2,'2017-07-05 03:14:57.539000',1);
INSERT INTO portunes_identifier VALUES(2134,'Tanımsız kart','5679797',0,2,'2017-07-05 03:38:59.622000',1);
INSERT INTO portunes_identifier VALUES(2135,'Tanımsız kart','4292565',0,2,'2017-07-05 04:47:29.427000',1);
INSERT INTO portunes_identifier VALUES(2136,'Tanımsız kart','4793684',0,2,'2017-07-05 04:51:30.075000',1);
INSERT INTO portunes_identifier VALUES(2137,'Tanımsız kart','11185835',0,2,'2017-07-05 05:50:37.718000',1);
INSERT INTO portunes_identifier VALUES(2138,'Tanımsız kart','14396105',0,2,'2017-07-05 06:14:41.695000',1);
INSERT INTO portunes_identifier VALUES(2139,'Tanımsız kart','11250377',0,2,'2017-07-05 06:14:41.773000',1);
INSERT INTO portunes_identifier VALUES(2140,'Tanımsız kart','11179338',0,2,'2017-07-05 06:14:41.928000',1);
INSERT INTO portunes_identifier VALUES(2141,'Tanımsız kart','5093205',0,2,'2017-07-05 06:30:46.476000',1);
INSERT INTO portunes_identifier VALUES(2142,'Tanımsız kart','2430144',0,2,'2017-07-05 06:54:51.105000',1);
INSERT INTO portunes_identifier VALUES(2143,'Tanımsız kart','11883818',0,2,'2017-07-05 07:25:57.528000',1);
INSERT INTO portunes_identifier VALUES(2144,'Tanımsız kart','264',0,2,'2017-07-05 07:53:04.864000',1);
INSERT INTO portunes_identifier VALUES(2145,'Tanımsız kart','2101280',0,2,'2017-07-05 07:53:05.567000',1);
INSERT INTO portunes_identifier VALUES(2146,'Tanımsız kart','4194369',0,2,'2017-07-05 07:53:06.350000',1);
INSERT INTO portunes_identifier VALUES(2147,'Tanımsız kart','40',0,2,'2017-07-05 07:53:07.210000',1);
INSERT INTO portunes_identifier VALUES(2148,'Tanımsız kart','1049604',0,2,'2017-07-05 07:53:07.913000',1);
INSERT INTO portunes_identifier VALUES(2149,'Tanımsız kart','4112',0,2,'2017-07-05 07:53:11.276000',1);
INSERT INTO portunes_identifier VALUES(2150,'Tanımsız kart','655361',0,2,'2017-07-05 07:53:12.689000',1);
INSERT INTO portunes_identifier VALUES(2151,'Tanımsız kart','257',0,2,'2017-07-05 07:53:13.002000',1);
INSERT INTO portunes_identifier VALUES(2152,'Tanımsız kart','8396864',0,2,'2017-07-05 07:53:14.019000',1);
INSERT INTO portunes_identifier VALUES(2153,'Tanımsız kart','8929824',0,2,'2017-07-05 07:53:17.694000',1);
INSERT INTO portunes_identifier VALUES(2154,'Tanımsız kart','33040',0,2,'2017-07-05 08:08:21.703000',1);
INSERT INTO portunes_identifier VALUES(2155,'Tanımsız kart','584',0,2,'2017-07-05 08:08:21.780000',1);
INSERT INTO portunes_identifier VALUES(2156,'Tanımsız kart','2162816',0,2,'2017-07-05 08:08:21.857000',1);
INSERT INTO portunes_identifier VALUES(2157,'Tanımsız kart','20617',0,2,'2017-07-05 08:08:21.934000',1);
INSERT INTO portunes_identifier VALUES(2158,'Tanımsız kart','1048608',0,2,'2017-07-05 08:08:23.340000',1);
INSERT INTO portunes_identifier VALUES(2159,'Tanımsız kart','8392962',0,2,'2017-07-05 08:08:27.088000',1);
INSERT INTO portunes_identifier VALUES(2160,'Tanımsız kart','2114',0,2,'2017-07-05 08:08:28.026000',1);
INSERT INTO portunes_identifier VALUES(2161,'Tanımsız kart','266256',0,2,'2017-07-05 08:08:28.495000',1);
INSERT INTO portunes_identifier VALUES(2162,'Tanımsız kart','8650760',0,2,'2017-07-05 08:08:30.841000',1);
INSERT INTO portunes_identifier VALUES(2163,'Tanımsız kart','4210704',0,2,'2017-07-05 08:08:32.326000',1);
INSERT INTO portunes_identifier VALUES(2164,'Tanımsız kart','1085442',0,2,'2017-07-05 08:08:32.403000',1);
INSERT INTO portunes_identifier VALUES(2165,'Tanımsız kart','327688',0,2,'2017-07-05 08:08:32.871000',1);
INSERT INTO portunes_identifier VALUES(2166,'Tanımsız kart','8519746',0,2,'2017-07-05 08:08:33.493000',1);
INSERT INTO portunes_identifier VALUES(2167,'Tanımsız kart','65668',0,2,'2017-07-05 08:23:36.339000',1);
INSERT INTO portunes_identifier VALUES(2168,'Tanımsız kart','16214955',0,2,'2017-07-05 11:32:54.797000',1);
INSERT INTO portunes_identifier VALUES(2169,'Tanımsız kart','5945175',0,2,'2017-07-05 11:38:55.959000',1);
INSERT INTO portunes_identifier VALUES(2170,'Tanımsız kart','5696226',0,2,'2017-07-05 11:38:56.503000',1);
INSERT INTO portunes_identifier VALUES(2171,'Tanımsız kart','12954485',0,2,'2017-07-05 11:38:56.737000',1);
INSERT INTO portunes_identifier VALUES(2172,'Tanımsız kart','6052213',0,2,'2017-07-05 11:38:56.814000',1);
INSERT INTO portunes_identifier VALUES(2173,'Tanımsız kart','6052535',0,2,'2017-07-05 11:38:56.891000',1);
INSERT INTO portunes_identifier VALUES(2174,'Tanımsız kart','10398349',0,2,'2017-07-05 11:52:59.589000',1);
INSERT INTO portunes_identifier VALUES(2175,'Tanımsız kart','7694501',0,2,'2017-07-05 12:11:03.885000',1);
INSERT INTO portunes_identifier VALUES(2176,'Tanımsız kart','4959045',0,2,'2017-07-05 13:05:12.481000',1);
INSERT INTO portunes_identifier VALUES(2177,'Tanımsız kart','4954677',0,2,'2017-07-05 13:50:38.130000',1);
INSERT INTO portunes_identifier VALUES(2178,'Tanımsız kart','15379113',0,2,'2017-07-05 14:10:58.698000',1);
INSERT INTO portunes_identifier VALUES(2179,'Tanımsız kart','9586834',0,2,'2017-07-05 17:15:12.533000',1);
INSERT INTO portunes_identifier VALUES(2180,'Tanımsız kart','4795049',0,2,'2017-07-05 17:15:12.610000',1);
INSERT INTO portunes_identifier VALUES(2181,'Tanımsız kart','335880',0,2,'2017-07-05 17:29:14.057000',1);
INSERT INTO portunes_identifier VALUES(2182,'Tanımsız kart','8946754',0,2,'2017-07-05 23:25:43.186000',1);
INSERT INTO portunes_identifier VALUES(2183,'Tanımsız kart','9579088',0,2,'2017-07-05 23:26:43.503000',1);
INSERT INTO portunes_identifier VALUES(2184,'Tanımsız kart','1042',0,2,'2017-07-05 23:34:44.265000',1);
INSERT INTO portunes_identifier VALUES(2185,'Tanımsız kart','14659551',0,2,'2017-07-06 01:53:55.770000',1);
INSERT INTO portunes_identifier VALUES(2186,'Tanımsız kart','5259266',0,2,'2017-07-06 02:35:59.050000',1);
INSERT INTO portunes_identifier VALUES(2187,'Tanımsız kart','10834505',0,2,'2017-07-06 04:42:09.804000',1);
INSERT INTO portunes_identifier VALUES(2188,'Tanımsız kart','8246650',0,2,'2017-07-06 05:35:15.198000',1);
INSERT INTO portunes_identifier VALUES(2189,'Tanımsız kart','7690621',0,2,'2017-07-06 06:02:19.719000',1);
INSERT INTO portunes_identifier VALUES(2190,'Tanımsız kart','4869236',0,2,'2017-07-06 06:28:26.522000',1);
INSERT INTO portunes_identifier VALUES(2191,'Tanımsız kart','6285992',0,2,'2017-07-06 06:28:26.676000',1);
INSERT INTO portunes_identifier VALUES(2192,'Tanımsız kart','4846932',0,2,'2017-07-06 06:28:26.754000',1);
INSERT INTO portunes_identifier VALUES(2193,'Tanımsız kart','12495132',0,2,'2017-07-06 06:37:29.668000',1);
INSERT INTO portunes_identifier VALUES(2194,'Tanımsız kart','10762949',0,2,'2017-07-06 06:42:30.859000',1);
INSERT INTO portunes_identifier VALUES(2195,'Tanımsız kart','14505567',0,2,'2017-07-06 06:54:34.242000',1);
INSERT INTO portunes_identifier VALUES(2196,'Tanımsız kart','10343879',0,2,'2017-07-06 07:12:37.607000',1);
INSERT INTO portunes_identifier VALUES(2197,'Tanımsız kart','10442102',0,2,'2017-07-06 07:26:39.630000',1);
INSERT INTO portunes_identifier VALUES(2198,'Tanımsız kart','15728640',0,2,'2017-07-06 07:49:01.189000',1);
INSERT INTO portunes_identifier VALUES(2199,'Tanımsız kart','4194436',0,2,'2017-07-06 07:59:02.742000',1);
INSERT INTO portunes_identifier VALUES(2200,'Tanımsız kart','2232833',0,2,'2017-07-06 08:26:06.159000',1);
INSERT INTO portunes_identifier VALUES(2201,'Tanımsız kart','4473920',0,2,'2017-07-06 08:26:06.315000',1);
INSERT INTO portunes_identifier VALUES(2202,'Tanımsız kart','540801',0,2,'2017-07-06 08:26:06.393000',1);
INSERT INTO portunes_identifier VALUES(2203,'Tanımsız kart','1907198',0,2,'2017-07-06 09:03:38.003000',1);
INSERT INTO portunes_identifier VALUES(2204,'Tanımsız kart','2237448',0,2,'2017-07-06 09:07:38.350000',1);
INSERT INTO portunes_identifier VALUES(2205,'Tanımsız kart','11512393',0,2,'2017-07-06 10:00:44.492000',1);
INSERT INTO portunes_identifier VALUES(2206,'Tanımsız kart','2236417',0,2,'2017-07-06 10:17:47.189000',1);
INSERT INTO portunes_identifier VALUES(2207,'Tanımsız kart','1050752',0,2,'2017-07-06 10:17:47.267000',1);
INSERT INTO portunes_identifier VALUES(2208,'Tanımsız kart','16602373',0,2,'2017-07-06 10:22:48.143000',1);
INSERT INTO portunes_identifier VALUES(2209,'Tanımsız kart','16761329',0,2,'2017-07-06 10:33:49.602000',1);
INSERT INTO portunes_identifier VALUES(2210,'Tanımsız kart','277164',0,2,'2017-07-06 11:06:53.316000',1);
INSERT INTO portunes_identifier VALUES(2212,'Tanımsız kart','9250730',0,2,'2017-07-06 12:15:02.517000',1);
INSERT INTO portunes_identifier VALUES(2213,'Tanımsız kart','11040091',0,2,'2017-07-06 14:30:38.552000',1);
INSERT INTO portunes_identifier VALUES(2214,'Tanımsız kart','2671688',0,2,'2017-07-06 14:30:38.629000',1);
INSERT INTO portunes_identifier VALUES(2215,'Tanımsız kart','2972587',0,2,'2017-07-06 14:30:38.784000',1);
INSERT INTO portunes_identifier VALUES(2216,'Tanımsız kart','11185067',0,2,'2017-07-06 14:30:38.862000',1);
INSERT INTO portunes_identifier VALUES(2217,'Tanımsız kart','2412584',0,2,'2017-07-06 14:30:38.939000',1);
INSERT INTO portunes_identifier VALUES(2218,'Tanımsız kart','1920501',0,2,'2017-07-06 14:30:39.482000',1);
INSERT INTO portunes_identifier VALUES(2219,'Tanımsız kart','10626601',0,2,'2017-07-06 14:30:39.714000',1);
INSERT INTO portunes_identifier VALUES(2220,'Tanımsız kart','11201194',0,2,'2017-07-06 15:30:25.186000',1);
INSERT INTO portunes_identifier VALUES(2221,'Tanımsız kart','11381429',0,2,'2017-07-06 15:30:25.420000',1);
INSERT INTO portunes_identifier VALUES(2222,'Tanımsız kart','11195733',0,2,'2017-07-06 15:30:25.653000',1);
INSERT INTO portunes_identifier VALUES(2223,'Tanımsız kart','11185493',0,2,'2017-07-06 15:30:25.808000',1);
INSERT INTO portunes_identifier VALUES(2224,'Tanımsız kart','5679786',0,2,'2017-07-06 15:30:25.963000',1);
INSERT INTO portunes_identifier VALUES(2225,'Tanımsız kart','11187882',0,2,'2017-07-06 15:30:26.276000',1);
INSERT INTO portunes_identifier VALUES(2226,'Tanımsız kart','5592746',0,2,'2017-07-06 15:30:26.354000',1);
INSERT INTO portunes_identifier VALUES(2227,'Tanımsız kart','13986474',0,2,'2017-07-06 15:30:26.509000',1);
INSERT INTO portunes_identifier VALUES(2228,'Tanımsız kart','5614250',0,2,'2017-07-06 15:30:26.821000',1);
INSERT INTO portunes_identifier VALUES(2229,'Tanımsız kart','5593773',0,2,'2017-07-06 15:30:27.291000',1);
INSERT INTO portunes_identifier VALUES(2230,'Tanımsız kart','5614933',0,2,'2017-07-06 15:30:27.368000',1);
INSERT INTO portunes_identifier VALUES(2231,'Tanımsız kart','13981013',0,2,'2017-07-06 15:30:27.523000',1);
INSERT INTO portunes_identifier VALUES(2232,'Tanımsız kart','13981014',0,2,'2017-07-06 15:30:27.600000',1);
INSERT INTO portunes_identifier VALUES(2233,'Tanımsız kart','15553877',0,2,'2017-07-06 15:30:27.755000',1);
INSERT INTO portunes_identifier VALUES(2234,'Tanımsız kart','11184811',0,2,'2017-07-06 15:30:28.928000',1);
INSERT INTO portunes_identifier VALUES(2235,'Tanımsız kart','12233386',0,2,'2017-07-06 15:30:29.083000',1);
INSERT INTO portunes_identifier VALUES(2236,'Tanımsız kart','16429565',0,2,'2017-07-06 15:50:32.903000',1);
INSERT INTO portunes_identifier VALUES(2237,'Tanımsız kart','557216',0,2,'2017-07-06 17:03:40.751000',1);
INSERT INTO portunes_identifier VALUES(2238,'Tanımsız kart','561157',0,2,'2017-07-06 17:03:40.828000',1);
INSERT INTO portunes_identifier VALUES(2239,'Tanımsız kart','5592410',0,2,'2017-07-06 17:08:41.371000',1);
INSERT INTO portunes_identifier VALUES(2240,'Tanımsız kart','4794660',0,2,'2017-07-06 17:30:43.950000',1);
INSERT INTO portunes_identifier VALUES(2241,'Tanımsız kart','4803189',0,2,'2017-07-06 17:47:45.441000',1);
INSERT INTO portunes_identifier VALUES(2242,'Tanımsız kart','11183444',0,2,'2017-07-06 18:18:48.170000',1);
INSERT INTO portunes_identifier VALUES(2243,'Tanımsız kart','9786666',0,2,'2017-07-06 18:24:49.285000',1);
INSERT INTO portunes_identifier VALUES(2244,'Tanımsız kart','2304',0,2,'2017-07-06 21:02:04.725000',1);
INSERT INTO portunes_identifier VALUES(2245,'Tanımsız kart','657554',0,2,'2017-07-06 22:32:13.629000',1);
INSERT INTO portunes_identifier VALUES(2246,'Tanımsız kart','2065',0,2,'2017-07-06 22:40:14.403000',1);
INSERT INTO portunes_identifier VALUES(2247,'Tanımsız kart','8720416',0,2,'2017-07-06 22:40:14.480000',1);
INSERT INTO portunes_identifier VALUES(2248,'Tanımsız kart','264193',0,2,'2017-07-06 23:53:20.649000',1);
INSERT INTO portunes_identifier VALUES(2249,'Tanımsız kart','14417403',0,2,'2017-07-07 02:23:32.704000',1);
INSERT INTO portunes_identifier VALUES(2250,'Tanımsız kart','2434194',0,2,'2017-07-07 05:11:47.810000',1);
INSERT INTO portunes_identifier VALUES(2251,'Tanımsız kart','11160146',0,2,'2017-07-07 05:11:47.889000',1);
INSERT INTO portunes_identifier VALUES(2252,'Tanımsız kart','5277832',0,2,'2017-07-07 05:11:47.966000',1);
INSERT INTO portunes_identifier VALUES(2253,'Tanımsız kart','16074977',0,2,'2017-07-07 05:28:49.820000',1);
INSERT INTO portunes_identifier VALUES(2254,'Tanımsız kart','2359840',0,2,'2017-07-07 06:37:02.992000',1);
INSERT INTO portunes_identifier VALUES(2255,'Tanımsız kart','33025',0,2,'2017-07-07 06:37:04.083000',1);
INSERT INTO portunes_identifier VALUES(2256,'Tanımsız kart','131136',0,2,'2017-07-07 06:37:04.161000',1);
INSERT INTO portunes_identifier VALUES(2257,'Tanımsız kart','524416',0,2,'2017-07-07 06:37:06.112000',1);
INSERT INTO portunes_identifier VALUES(2258,'Tanımsız kart','2094409',0,2,'2017-07-07 06:39:10.114000',1);
INSERT INTO portunes_identifier VALUES(2259,'Tanımsız kart','1048577',0,2,'2017-07-07 06:51:31.004000',1);
INSERT INTO portunes_identifier VALUES(2260,'Tanımsız kart','4104',0,2,'2017-07-07 06:51:37.016000',1);
INSERT INTO portunes_identifier VALUES(2261,'Tanımsız kart','1048585',0,2,'2017-07-07 06:51:38.189000',1);
INSERT INTO portunes_identifier VALUES(2262,'Tanımsız kart','4227088',0,2,'2017-07-07 06:51:38.268000',1);
INSERT INTO portunes_identifier VALUES(2263,'Tanımsız kart','4456448',0,2,'2017-07-07 06:51:38.345000',1);
INSERT INTO portunes_identifier VALUES(2264,'Tanımsız kart','32769',0,2,'2017-07-07 06:51:39.828000',1);
INSERT INTO portunes_identifier VALUES(2265,'Tanımsız kart','8388896',0,2,'2017-07-07 06:51:40.297000',1);
INSERT INTO portunes_identifier VALUES(2266,'Tanımsız kart','2162688',0,2,'2017-07-07 06:51:43.579000',1);
INSERT INTO portunes_identifier VALUES(2267,'Tanımsız kart','7388841',0,2,'2017-07-07 06:53:51.880000',1);
INSERT INTO portunes_identifier VALUES(2268,'Tanımsız kart','5625285',0,2,'2017-07-07 06:55:52.208000',1);
INSERT INTO portunes_identifier VALUES(2269,'Tanımsız kart','6936004',0,2,'2017-07-07 06:55:52.288000',1);
INSERT INTO portunes_identifier VALUES(2270,'Tanımsız kart','8397312',0,2,'2017-07-07 07:05:54.502000',1);
INSERT INTO portunes_identifier VALUES(2271,'Tanımsız kart','8388866',0,2,'2017-07-07 07:05:57.854000',1);
INSERT INTO portunes_identifier VALUES(2272,'Tanımsız kart','8388626',0,2,'2017-07-07 07:06:03.555000',1);
INSERT INTO portunes_identifier VALUES(2273,'Tanımsız kart','10312831',0,2,'2017-07-07 07:11:05.544000',1);
INSERT INTO portunes_identifier VALUES(2274,'Tanımsız kart','3848319',0,2,'2017-07-07 07:11:05.622000',1);
INSERT INTO portunes_identifier VALUES(2275,'Tanımsız kart','7696639',0,2,'2017-07-07 07:11:05.699000',1);
INSERT INTO portunes_identifier VALUES(2276,'Tanımsız kart','15036926',0,2,'2017-07-07 07:11:06.165000',1);
INSERT INTO portunes_identifier VALUES(2277,'Tanımsız kart','15393788',0,2,'2017-07-07 07:11:06.320000',1);
INSERT INTO portunes_identifier VALUES(2278,'Tanımsız kart','3848447',0,2,'2017-07-07 07:11:06.475000',1);
INSERT INTO portunes_identifier VALUES(2279,'Tanımsız kart','7696894',0,2,'2017-07-07 07:11:06.552000',1);
INSERT INTO portunes_identifier VALUES(2280,'Tanımsız kart','15299070',0,2,'2017-07-07 07:11:06.707000',1);
INSERT INTO portunes_identifier VALUES(2281,'Tanımsız kart','8388865',0,2,'2017-07-07 07:20:10.305000',1);
INSERT INTO portunes_identifier VALUES(2282,'Tanımsız kart','8456192',0,2,'2017-07-07 07:20:10.460000',1);
INSERT INTO portunes_identifier VALUES(2283,'Tanımsız kart','526340',0,2,'2017-07-07 07:20:10.771000',1);
INSERT INTO portunes_identifier VALUES(2284,'Tanımsız kart','8200',0,2,'2017-07-07 07:20:11.005000',1);
INSERT INTO portunes_identifier VALUES(2285,'Tanımsız kart','4194434',0,2,'2017-07-07 07:20:11.941000',1);
INSERT INTO portunes_identifier VALUES(2286,'Tanımsız kart','7518463',0,2,'2017-07-07 07:39:17.920000',1);
INSERT INTO portunes_identifier VALUES(2287,'Tanımsız kart','15393278',0,2,'2017-07-07 07:39:18.153000',1);
INSERT INTO portunes_identifier VALUES(2288,'Tanımsız kart','1114128',0,2,'2017-07-07 07:48:21.173000',1);
INSERT INTO portunes_identifier VALUES(2289,'Tanımsız kart','12054398',0,2,'2017-07-07 07:50:23.110000',1);
INSERT INTO portunes_identifier VALUES(2290,'Tanımsız kart','16498671',0,2,'2017-07-07 07:50:23.188000',1);
INSERT INTO portunes_identifier VALUES(2291,'Tanımsız kart','2585969',0,2,'2017-07-07 07:57:24.468000',1);
INSERT INTO portunes_identifier VALUES(2292,'Tanımsız kart','541696',0,2,'2017-07-07 08:02:26.447000',1);
INSERT INTO portunes_identifier VALUES(2293,'Tanımsız kart','5587327',0,2,'2017-07-07 08:13:28.997000',1);
INSERT INTO portunes_identifier VALUES(2294,'Tanımsız kart','8454657',0,2,'2017-07-07 08:44:36.927000',1);
INSERT INTO portunes_identifier VALUES(2295,'Tanımsız kart','15364606',0,2,'2017-07-07 08:49:00.804000',1);
INSERT INTO portunes_identifier VALUES(2296,'Tanımsız kart','7649535',0,2,'2017-07-07 08:49:01.038000',1);
INSERT INTO portunes_identifier VALUES(2297,'Tanımsız kart','3759231',0,2,'2017-07-07 08:49:01.194000',1);
INSERT INTO portunes_identifier VALUES(2298,'Tanımsız kart','16414065',0,2,'2017-07-07 08:49:01.428000',1);
INSERT INTO portunes_identifier VALUES(2299,'Tanımsız kart','15695797',0,2,'2017-07-07 09:11:09.553000',1);
INSERT INTO portunes_identifier VALUES(2300,'Tanımsız kart','10402489',0,2,'2017-07-07 09:44:55.154000',1);
INSERT INTO portunes_identifier VALUES(2301,'Tanımsız kart','4182955',0,2,'2017-07-07 10:06:58.820000',1);
INSERT INTO portunes_identifier VALUES(2302,'Tanımsız kart','13951997',0,2,'2017-07-07 10:46:03.081000',1);
INSERT INTO portunes_identifier VALUES(2303,'Tanımsız kart','4196368',0,2,'2017-07-07 10:54:04.326000',1);
INSERT INTO portunes_identifier VALUES(2304,'Tanımsız kart','5593749',0,2,'2017-07-07 10:57:04.661000',1);
INSERT INTO portunes_identifier VALUES(2305,'Tanımsız kart','15582635',0,2,'2017-07-07 11:16:19.309000',1);
INSERT INTO portunes_identifier VALUES(2306,'Tanımsız kart','15378527',0,2,'2017-07-07 11:22:20.478000',1);
INSERT INTO portunes_identifier VALUES(2307,'Tanımsız kart','8055524',0,2,'2017-07-07 11:53:52.859000',1);
INSERT INTO portunes_identifier VALUES(2308,'Tanımsız kart','4027760',0,2,'2017-07-07 11:53:52.936000',1);
INSERT INTO portunes_identifier VALUES(2309,'Tanımsız kart','4027762',0,2,'2017-07-07 11:53:53.014000',1);
INSERT INTO portunes_identifier VALUES(2310,'Tanımsız kart','5434084',0,2,'2017-07-07 12:04:54.835000',1);
INSERT INTO portunes_identifier VALUES(2311,'Tanımsız kart','2546602',0,2,'2017-07-07 12:04:55.146000',1);
INSERT INTO portunes_identifier VALUES(2312,'Tanımsız kart','4803498',0,2,'2017-07-07 12:04:55.223000',1);
INSERT INTO portunes_identifier VALUES(2313,'Tanımsız kart','3842592',0,2,'2017-07-07 12:06:55.706000',1);
INSERT INTO portunes_identifier VALUES(2314,'Tanımsız kart','15990319',0,2,'2017-07-07 12:28:59.758000',1);
INSERT INTO portunes_identifier VALUES(2315,'Tanımsız kart','12564157',0,2,'2017-07-07 12:28:59.912000',1);
INSERT INTO portunes_identifier VALUES(2316,'Tanımsız kart','8987794',0,2,'2017-07-07 12:31:00.491000',1);
INSERT INTO portunes_identifier VALUES(2317,'Tanımsız kart','962121',0,2,'2017-07-07 12:31:00.881000',1);
INSERT INTO portunes_identifier VALUES(2318,'Tanımsız kart','9994197',0,2,'2017-07-07 13:05:07.270000',1);
INSERT INTO portunes_identifier VALUES(2319,'Tanımsız kart','7696975',0,2,'2017-07-07 13:22:13.592000',1);
INSERT INTO portunes_identifier VALUES(2320,'Tanımsız kart','15364351',0,2,'2017-07-07 15:08:55.805000',1);
INSERT INTO portunes_identifier VALUES(2321,'Tanımsız kart','5388383',0,2,'2017-07-07 15:34:59.166000',1);
INSERT INTO portunes_identifier VALUES(2322,'Tanımsız kart','2862009',0,2,'2017-07-07 15:58:01.710000',1);
INSERT INTO portunes_identifier VALUES(2323,'Tanımsız kart','9342175',0,2,'2017-07-07 17:10:09.302000',1);
INSERT INTO portunes_identifier VALUES(2324,'Tanımsız kart','1118484',0,2,'2017-07-07 20:29:30.315000',1);
INSERT INTO portunes_identifier VALUES(2325,'Tanımsız kart','1131665',0,2,'2017-07-07 20:29:30.392000',1);
INSERT INTO portunes_identifier VALUES(2326,'Tanımsız kart','11884210',0,2,'2017-07-08 04:53:10.886000',1);
INSERT INTO portunes_identifier VALUES(2327,'Tanımsız kart','1572181',0,2,'2017-07-08 05:40:14.847000',1);
INSERT INTO portunes_identifier VALUES(2328,'Tanımsız kart','5406037',0,2,'2017-07-08 05:40:14.925000',1);
INSERT INTO portunes_identifier VALUES(2329,'Tanımsız kart','6204045',0,2,'2017-07-08 09:35:35.173000',1);
INSERT INTO portunes_identifier VALUES(2330,'Tanımsız kart','9688401',0,2,'2017-07-08 09:35:35.328000',1);
INSERT INTO portunes_identifier VALUES(2331,'Tanımsız kart','12535622',0,2,'2017-07-08 12:22:19.439000',1);
INSERT INTO portunes_identifier VALUES(2332,'Tanımsız kart','13935141',0,2,'2017-07-08 13:03:22.839000',1);
INSERT INTO portunes_identifier VALUES(2333,'Tanımsız kart','11753205',0,2,'2017-07-08 13:36:26.187000',1);
INSERT INTO portunes_identifier VALUES(2334,'Tanımsız kart','4474025',0,2,'2017-07-08 18:59:52.615000',1);
INSERT INTO portunes_identifier VALUES(2335,'Tanımsız kart','15370774',0,2,'2017-07-09 09:52:04.333000',1);
INSERT INTO portunes_identifier VALUES(2336,'Tanımsız kart','15373401',0,2,'2017-07-09 09:52:04.410000',1);
INSERT INTO portunes_identifier VALUES(2337,'Tanımsız kart','15373357',0,2,'2017-07-09 09:52:04.565000',1);
INSERT INTO portunes_identifier VALUES(2338,'Tanımsız kart','15370797',0,2,'2017-07-09 09:52:04.642000',1);
INSERT INTO portunes_identifier VALUES(2339,'Tanımsız kart','15026733',0,2,'2017-07-09 09:52:04.797000',1);
INSERT INTO portunes_identifier VALUES(2340,'Tanımsız kart','16033046',0,2,'2017-07-09 10:03:05.791000',1);
INSERT INTO portunes_identifier VALUES(2341,'Tanımsız kart','16075309',0,2,'2017-07-09 10:03:06.025000',1);
INSERT INTO portunes_identifier VALUES(2342,'Tanımsız kart','1871071',0,2,'2017-07-09 10:25:08.133000',1);
INSERT INTO portunes_identifier VALUES(2343,'Tanımsız kart','4199701',0,2,'2017-07-10 04:02:39.715000',1);
INSERT INTO portunes_identifier VALUES(2344,'Tanımsız kart','11359701',0,2,'2017-07-10 04:03:39.848000',1);
INSERT INTO portunes_identifier VALUES(2345,'Tanımsız kart','7776938',0,2,'2017-07-10 04:03:39.926000',1);
INSERT INTO portunes_identifier VALUES(2346,'Tanımsız kart','5010935',0,2,'2017-07-10 05:46:00.153000',1);
INSERT INTO portunes_identifier VALUES(2347,'Tanımsız kart','6059512',0,2,'2017-07-10 05:46:00.230000',1);
INSERT INTO portunes_identifier VALUES(2348,'Tanımsız kart','12560969',0,2,'2017-07-10 06:35:07.906000',1);
INSERT INTO portunes_identifier VALUES(2349,'Tanımsız kart','3523306',0,2,'2017-07-10 06:46:10.238000',1);
INSERT INTO portunes_identifier VALUES(2350,'Tanımsız kart','10605935',0,2,'2017-07-10 06:48:11.098000',1);
INSERT INTO portunes_identifier VALUES(2351,'Tanımsız kart','5576016',0,2,'2017-07-10 07:04:13.661000',1);
INSERT INTO portunes_identifier VALUES(2352,'Tanımsız kart','10829970',0,2,'2017-07-10 07:04:13.738000',1);
INSERT INTO portunes_identifier VALUES(2353,'Tanımsız kart','9600341',0,2,'2017-07-10 07:10:14.502000',1);
INSERT INTO portunes_identifier VALUES(2354,'Tanımsız kart','12823641',0,2,'2017-07-10 08:45:04.096000',1);
INSERT INTO portunes_identifier VALUES(2355,'Tanımsız kart','16513',0,2,'2017-07-10 09:16:57.273000',1);
INSERT INTO portunes_identifier VALUES(2356,'Tanımsız kart','8870067',0,2,'2017-07-10 09:47:01.025000',1);
INSERT INTO portunes_identifier VALUES(2357,'Tanımsız kart','4787889',0,2,'2017-07-10 09:47:01.102000',1);
INSERT INTO portunes_identifier VALUES(2358,'Tanımsız kart','11201615',0,2,'2017-07-10 09:49:01.893000',1);
INSERT INTO portunes_identifier VALUES(2359,'Tanımsız kart','2498549',0,2,'2017-07-10 10:01:03.396000',1);
INSERT INTO portunes_identifier VALUES(2360,'Tanımsız kart','11725501',0,2,'2017-07-10 10:09:05.238000',1);
INSERT INTO portunes_identifier VALUES(2361,'Tanımsız kart','11987634',0,2,'2017-07-10 10:49:12.322000',1);
INSERT INTO portunes_identifier VALUES(2362,'Tanımsız kart','5397847',0,2,'2017-07-10 11:59:23.110000',1);
INSERT INTO portunes_identifier VALUES(2363,'Tanımsız kart','7448021',0,2,'2017-07-10 12:25:27.649000',1);
INSERT INTO portunes_identifier VALUES(2364,'Tanımsız kart','15036671',0,2,'2017-07-10 13:33:37.061000',1);
INSERT INTO portunes_identifier VALUES(2365,'Tanımsız kart','15369912',0,2,'2017-07-10 13:57:41.435000',1);
INSERT INTO portunes_identifier VALUES(2366,'Tanımsız kart','15287900',0,2,'2017-07-10 13:57:41.746000',1);
INSERT INTO portunes_identifier VALUES(2367,'Tanımsız kart','7685816',0,2,'2017-07-10 13:57:42.056000',1);
INSERT INTO portunes_identifier VALUES(2368,'Tanımsız kart','15025848',0,2,'2017-07-10 13:57:42.134000',1);
INSERT INTO portunes_identifier VALUES(2369,'Tanımsız kart','7684956',0,2,'2017-07-10 13:57:42.211000',1);
INSERT INTO portunes_identifier VALUES(2370,'Tanımsız kart','15371576',0,2,'2017-07-10 13:57:42.367000',1);
INSERT INTO portunes_identifier VALUES(2371,'Tanımsız kart','15393359',0,2,'2017-07-10 13:57:42.599000',1);
INSERT INTO portunes_identifier VALUES(2372,'Tanımsız kart','14282927',0,2,'2017-07-10 14:13:45.076000',1);
INSERT INTO portunes_identifier VALUES(2373,'Tanımsız kart','10037630',0,2,'2017-07-10 14:30:47.104000',1);
INSERT INTO portunes_identifier VALUES(2374,'Tanımsız kart','13061343',0,2,'2017-07-10 16:58:04.696000',1);
INSERT INTO portunes_identifier VALUES(2375,'Tanımsız kart','5583539',0,2,'2017-07-10 22:28:34.895000',1);
INSERT INTO portunes_identifier VALUES(2376,'Tanımsız kart','11184466',0,2,'2017-07-11 02:59:59.790000',1);
INSERT INTO portunes_identifier VALUES(2377,'Tanımsız kart','12233050',0,2,'2017-07-11 03:59:04.712000',1);
INSERT INTO portunes_identifier VALUES(2378,'Tanımsız kart','15773686',0,2,'2017-07-11 05:54:17.485000',1);
INSERT INTO portunes_identifier VALUES(2379,'Tanımsız kart','8365911',0,2,'2017-07-11 06:24:21.845000',1);
INSERT INTO portunes_identifier VALUES(2380,'Tanımsız kart','11238723',0,2,'2017-07-11 07:28:33.028000',1);
INSERT INTO portunes_identifier VALUES(2381,'Tanımsız kart','11446526',0,2,'2017-07-11 07:38:34.234000',1);
INSERT INTO portunes_identifier VALUES(2382,'Tanımsız kart','4532970',0,2,'2017-07-11 07:38:34.466000',1);
INSERT INTO portunes_identifier VALUES(2383,'Tanımsız kart','2217413',0,2,'2017-07-11 07:48:36.316000',1);
INSERT INTO portunes_identifier VALUES(2384,'Tanımsız kart','11419603',0,2,'2017-07-11 07:58:40.477000',1);
INSERT INTO portunes_identifier VALUES(2385,'Tanımsız kart','16447479',0,2,'2017-07-11 08:17:43.615000',1);
INSERT INTO portunes_identifier VALUES(2386,'Tanımsız kart','11534333',0,2,'2017-07-11 08:17:43.693000',1);
INSERT INTO portunes_identifier VALUES(2387,'Tanımsız kart','16711399',0,2,'2017-07-11 08:17:43.770000',1);
INSERT INTO portunes_identifier VALUES(2388,'Tanımsız kart','13937994',0,2,'2017-07-11 08:27:47.034000',1);
INSERT INTO portunes_identifier VALUES(2389,'Tanımsız kart','16743927',0,2,'2017-07-11 08:29:47.278000',1);
INSERT INTO portunes_identifier VALUES(2390,'Tanımsız kart','16743263',0,2,'2017-07-11 08:29:47.356000',1);
INSERT INTO portunes_identifier VALUES(2391,'Tanımsız kart','16181994',0,2,'2017-07-11 08:29:47.433000',1);
INSERT INTO portunes_identifier VALUES(2392,'Tanımsız kart','12539022',0,2,'2017-07-11 10:02:03.763000',1);
INSERT INTO portunes_identifier VALUES(2393,'Tanımsız kart','2651483',0,2,'2017-07-11 10:14:06.796000',1);
INSERT INTO portunes_identifier VALUES(2394,'Tanımsız kart','11179337',0,2,'2017-07-11 11:20:12.203000',1);
INSERT INTO portunes_identifier VALUES(2395,'Tanımsız kart','4107391',0,2,'2017-07-11 11:27:15.347000',1);
INSERT INTO portunes_identifier VALUES(2396,'Tanımsız kart','11446954',0,2,'2017-07-11 11:28:15.663000',1);
INSERT INTO portunes_identifier VALUES(2397,'Tanımsız kart','4793490',0,2,'2017-07-11 11:29:15.825000',1);
INSERT INTO portunes_identifier VALUES(2398,'Tanımsız kart','11187883',0,2,'2017-07-11 11:35:17.688000',1);
INSERT INTO portunes_identifier VALUES(2399,'Tanımsız kart','9478741',0,2,'2017-07-11 12:30:25.934000',1);
INSERT INTO portunes_identifier VALUES(2400,'Tanımsız kart','11221675',0,2,'2017-07-11 12:39:27.320000',1);
INSERT INTO portunes_identifier VALUES(2401,'Tanımsız kart','10795692',0,2,'2017-07-11 12:39:27.397000',1);
INSERT INTO portunes_identifier VALUES(2402,'Tanımsız kart','1528939',0,2,'2017-07-11 12:41:28.347000',1);
INSERT INTO portunes_identifier VALUES(2403,'Tanımsız kart','15528111',0,2,'2017-07-11 12:41:28.813000',1);
INSERT INTO portunes_identifier VALUES(2404,'Ziyaretçi 001','1912101',1,2,'2017-07-11 12:41:29.901000',0);
INSERT INTO portunes_identifier VALUES(2405,'Tanımsız kart','13981018',0,2,'2017-07-11 15:29:26.230000',1);
INSERT INTO portunes_identifier VALUES(2406,'Tanımsız kart','11195738',0,2,'2017-07-11 15:29:26.307000',1);
INSERT INTO portunes_identifier VALUES(2407,'Tanımsız kart','14529878',0,2,'2017-07-11 16:42:46.587000',1);
INSERT INTO portunes_identifier VALUES(2408,'Tanımsız kart','1354280',0,2,'2017-07-11 18:21:56.790000',1);
INSERT INTO portunes_identifier VALUES(2409,'Tanımsız kart','10766888',0,2,'2017-07-11 18:21:56.867000',1);
INSERT INTO portunes_identifier VALUES(2410,'Tanımsız kart','10766676',0,2,'2017-07-11 18:21:56.945000',1);
INSERT INTO portunes_identifier VALUES(2411,'Tanımsız kart','11092480',0,2,'2017-07-11 18:21:57.022000',1);
INSERT INTO portunes_identifier VALUES(2412,'Tanımsız kart','12606346',0,2,'2017-07-11 18:21:57.099000',1);
INSERT INTO portunes_identifier VALUES(2413,'Tanımsız kart','2774066',0,2,'2017-07-11 18:21:57.176000',1);
INSERT INTO portunes_identifier VALUES(2414,'Tanımsız kart','5914688',0,2,'2017-07-11 18:21:57.254000',1);
INSERT INTO portunes_identifier VALUES(2415,'Tanımsız kart','5243163',0,2,'2017-07-11 18:21:57.331000',1);
INSERT INTO portunes_identifier VALUES(2416,'Tanımsız kart','689473',0,2,'2017-07-11 18:21:57.408000',1);
INSERT INTO portunes_identifier VALUES(2417,'Tanımsız kart','8751114',0,2,'2017-07-11 18:21:57.485000',1);
INSERT INTO portunes_identifier VALUES(2418,'Tanımsız kart','2970964',0,2,'2017-07-11 18:21:57.562000',1);
INSERT INTO portunes_identifier VALUES(2419,'Tanımsız kart','12862801',0,2,'2017-07-11 18:21:57.639000',1);
INSERT INTO portunes_identifier VALUES(2420,'Tanımsız kart','14067861',0,2,'2017-07-11 18:21:57.716000',1);
INSERT INTO portunes_identifier VALUES(2421,'Tanımsız kart','11182122',0,2,'2017-07-11 18:21:57.794000',1);
INSERT INTO portunes_identifier VALUES(2422,'Tanımsız kart','107008',0,2,'2017-07-11 18:21:57.871000',1);
INSERT INTO portunes_identifier VALUES(2423,'Tanımsız kart','384',0,2,'2017-07-11 18:21:57.948000',1);
INSERT INTO portunes_identifier VALUES(2424,'Tanımsız kart','2757474',0,2,'2017-07-11 18:21:58.026000',1);
INSERT INTO portunes_identifier VALUES(2425,'Tanımsız kart','10485761',0,2,'2017-07-11 18:21:58.102000',1);
INSERT INTO portunes_identifier VALUES(2426,'Tanımsız kart','10761',0,2,'2017-07-11 18:21:58.180000',1);
INSERT INTO portunes_identifier VALUES(2427,'Tanımsız kart','14265843',0,2,'2017-07-11 18:21:58.257000',1);
INSERT INTO portunes_identifier VALUES(2428,'Tanımsız kart','10752',0,2,'2017-07-11 18:21:58.490000',1);
INSERT INTO portunes_identifier VALUES(2429,'Tanımsız kart','10488650',0,2,'2017-07-11 18:21:58.567000',1);
INSERT INTO portunes_identifier VALUES(2430,'Tanımsız kart','21760',0,2,'2017-07-11 18:21:58.645000',1);
INSERT INTO portunes_identifier VALUES(2431,'Tanımsız kart','11882512',0,2,'2017-07-11 18:21:58.722000',1);
INSERT INTO portunes_identifier VALUES(2432,'Tanımsız kart','8716416',0,2,'2017-07-11 18:21:58.799000',1);
INSERT INTO portunes_identifier VALUES(2433,'Tanımsız kart','4303528',0,2,'2017-07-11 18:21:58.876000',1);
INSERT INTO portunes_identifier VALUES(2434,'Tanımsız kart','165120',0,2,'2017-07-11 18:21:58.954000',1);
INSERT INTO portunes_identifier VALUES(2435,'Tanımsız kart','9868306',0,2,'2017-07-11 18:21:59.031000',1);
INSERT INTO portunes_identifier VALUES(2436,'Tanımsız kart','3408512',0,2,'2017-07-11 18:21:59.108000',1);
INSERT INTO portunes_identifier VALUES(2437,'Tanımsız kart','11201365',0,2,'2017-07-11 19:50:07.575000',1);
INSERT INTO portunes_identifier VALUES(2438,'Tanımsız kart','13937238',0,2,'2017-07-11 20:03:08.636000',1);
INSERT INTO portunes_identifier VALUES(2439,'Tanımsız kart','11883858',0,2,'2017-07-11 20:03:08.715000',1);
INSERT INTO portunes_identifier VALUES(2440,'Tanımsız kart','2997082',0,2,'2017-07-11 20:29:10.829000',1);
INSERT INTO portunes_identifier VALUES(2441,'Tanımsız kart','8454208',0,2,'2017-07-11 21:05:13.712000',1);
INSERT INTO portunes_identifier VALUES(2442,'Tanımsız kart','12533759',0,2,'2017-07-11 21:08:14.065000',1);
INSERT INTO portunes_identifier VALUES(2443,'Tanımsız kart','7882021',0,2,'2017-07-11 21:08:14.142000',1);
INSERT INTO portunes_identifier VALUES(2444,'Tanımsız kart','5616980',0,2,'2017-07-12 02:20:38.949000',1);
INSERT INTO portunes_identifier VALUES(2445,'Tanımsız kart','10392916',0,2,'2017-07-12 04:43:51.595000',1);
INSERT INTO portunes_identifier VALUES(2446,'Tanımsız kart','11164245',0,2,'2017-07-12 05:34:57.357000',1);
INSERT INTO portunes_identifier VALUES(2447,'Tanımsız kart','6990506',0,2,'2017-07-12 05:47:00.155000',1);
INSERT INTO portunes_identifier VALUES(2448,'Tanımsız kart','9612645',0,2,'2017-07-12 06:11:04.357000',1);
INSERT INTO portunes_identifier VALUES(2449,'Ziyaretçi 002','2141041',1,2,'2017-07-12 06:13:51.860000',0);
INSERT INTO portunes_identifier VALUES(2450,'Tanımsız kart','10220660',0,2,'2017-07-12 06:17:06.607000',1);
INSERT INTO portunes_identifier VALUES(2451,'Tanımsız kart','11188905',0,2,'2017-07-12 06:23:07.446000',1);
INSERT INTO portunes_identifier VALUES(2452,'Tanımsız kart','15016837',0,2,'2017-07-12 06:55:13.992000',1);
INSERT INTO portunes_identifier VALUES(2453,'Tanımsız kart','11359914',0,2,'2017-07-12 07:02:15.656000',1);
INSERT INTO portunes_identifier VALUES(2454,'Tanımsız kart','5393791',0,2,'2017-07-12 07:09:17.379000',1);
INSERT INTO portunes_identifier VALUES(2455,'Tanımsız kart','11195754',0,2,'2017-07-12 07:27:23.766000',1);
INSERT INTO portunes_identifier VALUES(2456,'Tanımsız kart','12577448',0,2,'2017-07-12 07:43:26.502000',1);
INSERT INTO portunes_identifier VALUES(2457,'Tanımsız kart','5499560',0,2,'2017-07-12 07:43:26.580000',1);
INSERT INTO portunes_identifier VALUES(2458,'Tanımsız kart','15381723',0,2,'2017-07-12 08:05:29.676000',1);
INSERT INTO portunes_identifier VALUES(2459,'Tanımsız kart','11097429',0,2,'2017-07-12 08:15:33.335000',1);
INSERT INTO portunes_identifier VALUES(2460,'Tanımsız kart','2446673',0,2,'2017-07-12 08:55:40.190000',1);
INSERT INTO portunes_identifier VALUES(2461,'Tanımsız kart','11889321',0,2,'2017-07-12 09:39:46.859000',1);
INSERT INTO portunes_identifier VALUES(2462,'Tanımsız kart','16426331',0,2,'2017-07-12 09:45:47.679000',1);
INSERT INTO portunes_identifier VALUES(2463,'Tanımsız kart','16768767',0,2,'2017-07-12 10:14:53.149000',1);
INSERT INTO portunes_identifier VALUES(2464,'Tanımsız kart','15686655',0,2,'2017-07-12 10:26:55.204000',1);
INSERT INTO portunes_identifier VALUES(2465,'Tanımsız kart','16776954',0,2,'2017-07-12 10:26:55.282000',1);
INSERT INTO portunes_identifier VALUES(2466,'Tanımsız kart','15728127',0,2,'2017-07-12 10:26:55.359000',1);
INSERT INTO portunes_identifier VALUES(2467,'Tanımsız kart','12578299',0,2,'2017-07-12 10:26:55.436000',1);
INSERT INTO portunes_identifier VALUES(2468,'Tanımsız kart','10402799',0,2,'2017-07-12 10:26:55.514000',1);
INSERT INTO portunes_identifier VALUES(2469,'Tanımsız kart','16514999',0,2,'2017-07-12 10:38:58.359000',1);
INSERT INTO portunes_identifier VALUES(2470,'Tanımsız kart','7026423',0,2,'2017-07-12 10:38:58.436000',1);
INSERT INTO portunes_identifier VALUES(2471,'Tanımsız kart','11228653',0,2,'2017-07-12 10:38:58.514000',1);
INSERT INTO portunes_identifier VALUES(2472,'Tanımsız kart','16744431',0,2,'2017-07-12 10:38:58.591000',1);
INSERT INTO portunes_identifier VALUES(2473,'Tanımsız kart','15858477',0,2,'2017-07-12 10:38:58.669000',1);
INSERT INTO portunes_identifier VALUES(2474,'Tanımsız kart','16711680',0,2,'2017-07-12 10:38:58.746000',1);
INSERT INTO portunes_identifier VALUES(2475,'Stajyer6','2343558',1,2,'2017-07-12 10:48:58.278000',0);
INSERT INTO portunes_identifier VALUES(2476,'Ziyaretçi 003','2140429',1,2,'2017-07-12 11:00:50.882000',0);
INSERT INTO portunes_identifier VALUES(2478,'Ziyaretçi 005','2075506',1,1,'2017-07-12 11:01:29.484000',0);
INSERT INTO portunes_identifier VALUES(2480,'Tanımsız kart','16444142',0,2,'2017-07-12 11:03:03.548000',1);
INSERT INTO portunes_identifier VALUES(2481,'Tanımsız kart','16776127',0,2,'2017-07-12 11:03:03.625000',1);
INSERT INTO portunes_identifier VALUES(2482,'Tanımsız kart','16744447',0,2,'2017-07-12 11:03:03.702000',1);
INSERT INTO portunes_identifier VALUES(2483,'Tanımsız kart','4969967',0,2,'2017-07-12 11:03:03.780000',1);
INSERT INTO portunes_identifier VALUES(2484,'Ziyaretçi 004','2140511',1,2,'2017-07-12 11:06:43.034000',0);
INSERT INTO portunes_identifier VALUES(2485,'Tanımsız kart','15372677',0,2,'2017-07-12 11:10:05.224000',1);
INSERT INTO portunes_identifier VALUES(2486,'Tanımsız kart','11447881',0,2,'2017-07-12 11:22:08.064000',1);
INSERT INTO portunes_identifier VALUES(2487,'Tanımsız kart','11242326',0,2,'2017-07-12 11:44:12.278000',1);
INSERT INTO portunes_identifier VALUES(2488,'Tanımsız kart','10876232',0,2,'2017-07-12 12:03:16.417000',1);
INSERT INTO portunes_identifier VALUES(2489,'Tanımsız kart','4795209',0,2,'2017-07-12 15:28:46.231000',1);
INSERT INTO portunes_identifier VALUES(2490,'Tanımsız kart','10852181',0,2,'2017-07-12 15:28:49.838000',1);
INSERT INTO portunes_identifier VALUES(2491,'Tanımsız kart','9628349',0,2,'2017-07-12 15:28:49.915000',1);
INSERT INTO portunes_identifier VALUES(2492,'Tanımsız kart','11447572',0,2,'2017-07-12 15:28:51.792000',1);
INSERT INTO portunes_identifier VALUES(2493,'Tanımsız kart','13996012',0,2,'2017-07-12 15:28:53.388000',1);
INSERT INTO portunes_identifier VALUES(2494,'Tanımsız kart','5616618',0,2,'2017-07-12 15:28:56.739000',1);
INSERT INTO portunes_identifier VALUES(2495,'Tanımsız kart','2931375',0,2,'2017-07-12 15:28:57.831000',1);
INSERT INTO portunes_identifier VALUES(2496,'Tanımsız kart','2397866',0,2,'2017-07-13 07:31:42.535000',1);
INSERT INTO portunes_identifier VALUES(2497,'Tanımsız kart','15422805',0,2,'2017-07-13 07:31:44.470000',1);
INSERT INTO portunes_identifier VALUES(2498,'Tanımsız kart','13257394',0,2,'2017-07-13 07:31:44.548000',1);
INSERT INTO portunes_identifier VALUES(2499,'Tanımsız kart','5592429',0,2,'2017-07-13 07:31:44.703000',1);
INSERT INTO portunes_identifier VALUES(2500,'Tanımsız kart','4893353',0,2,'2017-07-13 07:31:45.089000',1);
INSERT INTO portunes_identifier VALUES(2501,'Tanımsız kart','10534890',0,2,'2017-07-13 07:31:45.448000',1);
INSERT INTO portunes_identifier VALUES(2502,'Tanımsız kart','16731822',0,2,'2017-07-13 07:31:47.443000',1);
INSERT INTO portunes_identifier VALUES(2503,'Tanımsız kart','1924223',0,2,'2017-07-13 07:31:47.598000',1);
INSERT INTO portunes_identifier VALUES(2504,'Tanımsız kart','10966799',0,2,'2017-07-13 07:31:47.983000',1);
INSERT INTO portunes_identifier VALUES(2505,'Tanımsız kart','3824767',0,2,'2017-07-13 07:31:48.061000',1);
INSERT INTO portunes_identifier VALUES(2506,'Tanımsız kart','7682175',0,2,'2017-07-13 07:31:49.217000',1);
INSERT INTO portunes_identifier VALUES(2507,'Tanımsız kart','11086378',0,2,'2017-07-13 07:31:50.164000',1);
INSERT INTO portunes_identifier VALUES(2508,'Tanımsız kart','10830117',0,2,'2017-07-13 07:31:50.242000',1);
INSERT INTO portunes_identifier VALUES(2509,'Tanımsız kart','10826389',0,2,'2017-07-13 07:31:50.319000',1);
INSERT INTO portunes_identifier VALUES(2510,'Tanımsız kart','5608301',0,2,'2017-07-13 07:31:55.071000',1);
INSERT INTO portunes_identifier VALUES(2511,'Tanımsız kart','16427543',0,2,'2017-07-13 07:31:57.143000',1);
INSERT INTO portunes_identifier VALUES(2512,'Tanımsız kart','15263949',0,2,'2017-07-13 07:31:57.451000',1);
INSERT INTO portunes_identifier VALUES(2513,'Tanımsız kart','16426138',0,2,'2017-07-13 07:32:02.151000',1);
INSERT INTO portunes_identifier VALUES(2514,'Tanımsız kart','13872015',0,2,'2017-07-13 07:32:05.680000',1);
INSERT INTO portunes_identifier VALUES(2515,'Tanımsız kart','11184806',0,2,'2017-07-13 08:32:50.010000',1);
INSERT INTO portunes_identifier VALUES(2516,'Tanımsız kart','16639983',0,2,'2017-07-14 16:39:53.850000',1);
INSERT INTO portunes_identifier VALUES(2517,'Tanımsız kart','16480109',0,2,'2017-07-14 16:39:53.927000',1);
INSERT INTO portunes_identifier VALUES(2518,'Tanımsız kart','16709039',0,2,'2017-07-14 16:39:54.004000',1);
INSERT INTO portunes_identifier VALUES(2519,'Tanımsız kart','16678909',0,2,'2017-07-14 16:39:54.080000',1);
INSERT INTO portunes_identifier VALUES(2520,'Tanımsız kart','11199243',0,2,'2017-07-14 16:39:54.234000',1);
INSERT INTO portunes_identifier VALUES(2521,'Tanımsız kart','15370370',0,2,'2017-07-14 16:39:55.299000',1);
INSERT INTO portunes_identifier VALUES(2522,'Tanımsız kart','11186989',0,2,'2017-07-14 16:39:56.060000',1);
INSERT INTO portunes_identifier VALUES(2523,'Tanımsız kart','8995913',0,2,'2017-07-14 16:39:56.747000',1);
INSERT INTO portunes_identifier VALUES(2524,'Tanımsız kart','9864932',0,2,'2017-07-14 16:39:57.351000',1);
INSERT INTO portunes_identifier VALUES(2525,'Tanımsız kart','9857738',0,2,'2017-07-14 16:39:57.656000',1);
INSERT INTO portunes_identifier VALUES(2526,'Tanımsız kart','5592490',0,2,'2017-07-14 16:39:58.212000',1);
INSERT INTO portunes_identifier VALUES(2527,'Tanımsız kart','5598038',0,2,'2017-07-14 16:39:58.366000',1);
INSERT INTO portunes_identifier VALUES(2528,'Tanımsız kart','5989717',0,2,'2017-07-14 16:39:58.443000',1);
INSERT INTO portunes_identifier VALUES(2529,'Tanımsız kart','11359572',0,2,'2017-07-14 16:39:58.519000',1);
INSERT INTO portunes_identifier VALUES(2530,'Tanımsız kart','11185490',0,2,'2017-07-14 16:39:58.750000',1);
INSERT INTO portunes_identifier VALUES(2531,'Tanımsız kart','4891988',0,2,'2017-07-14 16:39:58.827000',1);
INSERT INTO portunes_identifier VALUES(2532,'Tanımsız kart','11184853',0,2,'2017-07-14 16:39:58.904000',1);
INSERT INTO portunes_identifier VALUES(2533,'Tanımsız kart','11457878',0,2,'2017-07-14 16:39:58.980000',1);
INSERT INTO portunes_identifier VALUES(2534,'Tanımsız kart','14002770',0,2,'2017-07-14 16:39:59.057000',1);
INSERT INTO portunes_identifier VALUES(2535,'Tanımsız kart','5581525',0,2,'2017-07-14 16:39:59.134000',1);
INSERT INTO portunes_identifier VALUES(2536,'Tanımsız kart','5942122',0,2,'2017-07-14 16:39:59.211000',1);
INSERT INTO portunes_identifier VALUES(2537,'Tanımsız kart','9808469',0,2,'2017-07-14 16:39:59.365000',1);
INSERT INTO portunes_identifier VALUES(2538,'Tanımsız kart','11184858',0,2,'2017-07-14 16:39:59.518000',1);
INSERT INTO portunes_identifier VALUES(2539,'Tanımsız kart','4896085',0,2,'2017-07-14 16:39:59.671000',1);
INSERT INTO portunes_identifier VALUES(2540,'Tanımsız kart','11365034',0,2,'2017-07-14 16:39:59.748000',1);
INSERT INTO portunes_identifier VALUES(2541,'Tanımsız kart','11328170',0,2,'2017-07-14 16:39:59.824000',1);
INSERT INTO portunes_identifier VALUES(2542,'Tanımsız kart','12233389',0,2,'2017-07-14 16:39:59.901000',1);
INSERT INTO portunes_identifier VALUES(2543,'Tanımsız kart','11162923',0,2,'2017-07-14 16:40:00.055000',1);
INSERT INTO portunes_identifier VALUES(2544,'Tanımsız kart','9783978',0,2,'2017-07-14 16:40:00.131000',1);
INSERT INTO portunes_identifier VALUES(2545,'Tanımsız kart','11184982',0,2,'2017-07-14 16:40:00.208000',1);
INSERT INTO portunes_identifier VALUES(2546,'Tanımsız kart','11188906',0,2,'2017-07-14 16:40:00.285000',1);
INSERT INTO portunes_identifier VALUES(2547,'Tanımsız kart','13981029',0,2,'2017-07-14 16:40:01.048000',1);
INSERT INTO portunes_identifier VALUES(2548,'Tanımsız kart','4943531',0,2,'2017-07-14 16:40:01.125000',1);
INSERT INTO portunes_identifier VALUES(2549,'Tanımsız kart','11266708',0,2,'2017-07-14 16:40:02.012000',1);
INSERT INTO portunes_identifier VALUES(2550,'Tanımsız kart','8727786',0,2,'2017-07-14 16:40:03.036000',1);
INSERT INTO portunes_identifier VALUES(2551,'Tanımsız kart','15393093',0,2,'2017-07-14 16:40:03.266000',1);
INSERT INTO portunes_identifier VALUES(2552,'Tanımsız kart','15392933',0,2,'2017-07-14 16:40:03.343000',1);
INSERT INTO portunes_identifier VALUES(2553,'Tanımsız kart','7382429',0,2,'2017-07-14 16:40:09.216000',1);
INSERT INTO portunes_identifier VALUES(2554,'Tanımsız kart','15364261',0,2,'2017-07-14 16:40:10.280000',1);
INSERT INTO portunes_identifier VALUES(2555,'Tanımsız kart','7518290',0,2,'2017-07-14 16:40:10.358000',1);
INSERT INTO portunes_identifier VALUES(2556,'Tanımsız kart','5862750',0,2,'2017-07-14 16:40:15.400000',1);
INSERT INTO portunes_identifier VALUES(2557,'Tanımsız kart','8038923',0,2,'2017-07-14 16:40:18.516000',1);
INSERT INTO portunes_identifier VALUES(2558,'Tanımsız kart','11447078',0,2,'2017-07-14 16:40:21.713000',1);
INSERT INTO portunes_identifier VALUES(2559,'Tanımsız kart','9917929',0,2,'2017-07-14 16:40:23.160000',1);
INSERT INTO portunes_identifier VALUES(2560,'Tanımsız kart','5832399',0,2,'2017-07-14 16:40:36.722000',1);
INSERT INTO portunes_identifier VALUES(2561,'Tanımsız kart','13588031',0,2,'2017-07-14 16:40:39.308000',1);
INSERT INTO portunes_identifier VALUES(2562,'Tanımsız kart','7501655',0,2,'2017-07-14 16:40:41.059000',1);
INSERT INTO portunes_identifier VALUES(2563,'Tanımsız kart','11594416',0,2,'2017-07-14 16:40:46.384000',1);
INSERT INTO portunes_identifier VALUES(2564,'Tanımsız kart','4656106',0,2,'2017-07-14 16:40:55.205000',1);
INSERT INTO portunes_identifier VALUES(2565,'Tanımsız kart','14010151',0,2,'2017-07-14 16:40:58.935000',1);
INSERT INTO portunes_identifier VALUES(2566,'Tanımsız kart','13051765',0,2,'2017-07-14 16:41:02.513000',1);
INSERT INTO portunes_identifier VALUES(2567,'Tanımsız kart','12237028',0,2,'2017-07-14 16:41:04.568000',1);
INSERT INTO portunes_identifier VALUES(2568,'Tanımsız kart','5522441',0,2,'2017-07-14 16:41:05.331000',1);
INSERT INTO portunes_identifier VALUES(2569,'Tanımsız kart','2878712',0,2,'2017-07-14 16:41:05.636000',1);
INSERT INTO portunes_identifier VALUES(2570,'Tanımsız kart','2882975',0,2,'2017-07-14 16:41:05.713000',1);
INSERT INTO portunes_identifier VALUES(2571,'Tanımsız kart','4106582',0,2,'2017-07-14 16:41:07.023000',1);
INSERT INTO portunes_identifier VALUES(2572,'Tanımsız kart','11785615',0,2,'2017-07-14 16:41:07.859000',1);
INSERT INTO portunes_identifier VALUES(2573,'Tanımsız kart','16755360',0,2,'2017-07-14 16:41:10.493000',1);
INSERT INTO portunes_identifier VALUES(2574,'Tanımsız kart','5267445',0,2,'2017-07-14 16:41:11.179000',1);
INSERT INTO portunes_identifier VALUES(2575,'Tanımsız kart','5756241',0,2,'2017-07-14 16:41:13.464000',1);
INSERT INTO portunes_identifier VALUES(2576,'Tanımsız kart','5559507',0,2,'2017-07-14 16:41:14.227000',1);
INSERT INTO portunes_identifier VALUES(2577,'Tanımsız kart','5626015',0,2,'2017-07-14 16:41:15.256000',1);
INSERT INTO portunes_identifier VALUES(2578,'Tanımsız kart','9613993',0,2,'2017-07-14 16:41:15.327000',1);
INSERT INTO portunes_identifier VALUES(2579,'Tanımsız kart','4788809',0,2,'2017-07-14 16:41:17.410000',1);
INSERT INTO portunes_identifier VALUES(2580,'Tanımsız kart','10654282',0,2,'2017-07-14 16:41:17.482000',1);
INSERT INTO portunes_identifier VALUES(2581,'Tanımsız kart','6991189',0,2,'2017-07-15 07:41:42.252000',1);
INSERT INTO portunes_identifier VALUES(2582,'Tanımsız kart','4893349',0,2,'2017-07-15 07:41:42.329000',1);
INSERT INTO portunes_identifier VALUES(2583,'Tanımsız kart','5925546',0,2,'2017-07-15 07:41:42.406000',1);
INSERT INTO portunes_identifier VALUES(2584,'Tanımsız kart','1398100',0,2,'2017-07-15 07:41:42.483000',1);
INSERT INTO portunes_identifier VALUES(2585,'Tanımsız kart','14245435',0,2,'2017-07-15 07:41:42.637000',1);
INSERT INTO portunes_identifier VALUES(2586,'Tanımsız kart','5155493',0,2,'2017-07-15 07:41:42.714000',1);
INSERT INTO portunes_identifier VALUES(2587,'Tanımsız kart','2796213',0,2,'2017-07-15 07:41:42.791000',1);
INSERT INTO portunes_identifier VALUES(2588,'Tanımsız kart','5591716',0,2,'2017-07-15 07:41:42.945000',1);
INSERT INTO portunes_identifier VALUES(2589,'Tanımsız kart','4894041',0,2,'2017-07-15 07:41:43.022000',1);
INSERT INTO portunes_identifier VALUES(2590,'Tanımsız kart','11217573',0,2,'2017-07-15 07:41:43.099000',1);
INSERT INTO portunes_identifier VALUES(2591,'Tanımsız kart','7165268',0,2,'2017-07-15 07:41:43.176000',1);
INSERT INTO portunes_identifier VALUES(2592,'Tanımsız kart','10835285',0,2,'2017-07-15 07:41:43.252000',1);
INSERT INTO portunes_identifier VALUES(2593,'Tanımsız kart','13462359',0,2,'2017-07-15 07:41:43.330000',1);
INSERT INTO portunes_identifier VALUES(2594,'Tanımsız kart','11900580',0,2,'2017-07-15 07:41:43.483000',1);
INSERT INTO portunes_identifier VALUES(2595,'Tanımsız kart','5592439',0,2,'2017-07-15 07:41:43.560000',1);
INSERT INTO portunes_identifier VALUES(2596,'Tanımsız kart','11195734',0,2,'2017-07-15 07:41:43.637000',1);
INSERT INTO portunes_identifier VALUES(2597,'Tanımsız kart','5592426',0,2,'2017-07-15 07:41:43.714000',1);
INSERT INTO portunes_identifier VALUES(2598,'Tanımsız kart','11360597',0,2,'2017-07-15 07:41:43.791000',1);
INSERT INTO portunes_identifier VALUES(2599,'Tanımsız kart','16077972',0,2,'2017-07-15 07:41:43.868000',1);
INSERT INTO portunes_identifier VALUES(2600,'Tanımsız kart','11971246',0,2,'2017-07-15 07:41:43.945000',1);
INSERT INTO portunes_identifier VALUES(2601,'Tanımsız kart','11179690',0,2,'2017-07-15 07:41:44.022000',1);
INSERT INTO portunes_identifier VALUES(2602,'Tanımsız kart','10835130',0,2,'2017-07-15 07:41:44.252000',1);
INSERT INTO portunes_identifier VALUES(2603,'Tanımsız kart','11182271',0,2,'2017-07-15 07:41:47.327000',1);
INSERT INTO portunes_identifier VALUES(2604,'Tanımsız kart','10824341',0,2,'2017-07-15 07:41:48.087000',1);
INSERT INTO portunes_identifier VALUES(2605,'Tanımsız kart','12408247',0,2,'2017-07-15 07:41:48.188000',1);
INSERT INTO portunes_identifier VALUES(2606,'Tanımsız kart','9734290',0,2,'2017-07-15 07:41:48.266000',1);
INSERT INTO portunes_identifier VALUES(2607,'Tanımsız kart','2428932',0,2,'2017-07-15 07:41:48.342000',1);
INSERT INTO portunes_identifier VALUES(2608,'Tanımsız kart','7855028',0,2,'2017-07-15 07:58:00.034000',1);
INSERT INTO portunes_identifier VALUES(2609,'Tanımsız kart','9860464',0,2,'2017-07-15 08:53:22.204000',1);
INSERT INTO portunes_identifier VALUES(2610,'Tanımsız kart','13986650',0,2,'2017-07-16 11:39:21.875000',1);
INSERT INTO portunes_identifier VALUES(2611,'Tanımsız kart','11447723',0,2,'2017-07-16 11:39:21.955000',1);
INSERT INTO portunes_identifier VALUES(2612,'Tanımsız kart','11359522',0,2,'2017-07-16 11:39:22.187000',1);
INSERT INTO portunes_identifier VALUES(2613,'Tanımsız kart','2434485',0,2,'2017-07-16 11:39:22.342000',1);
INSERT INTO portunes_identifier VALUES(2614,'Tanımsız kart','5581477',0,2,'2017-07-16 11:39:22.420000',1);
INSERT INTO portunes_identifier VALUES(2615,'Tanımsız kart','2798933',0,2,'2017-07-16 11:39:22.574000',1);
INSERT INTO portunes_identifier VALUES(2616,'Tanımsız kart','5592493',0,2,'2017-07-16 11:39:22.729000',1);
INSERT INTO portunes_identifier VALUES(2617,'Tanımsız kart','15298725',0,2,'2017-07-16 11:39:25.644000',1);
INSERT INTO portunes_identifier VALUES(2618,'Tanımsız kart','15393097',0,2,'2017-07-16 11:39:25.875000',1);
INSERT INTO portunes_identifier VALUES(2619,'Tanımsız kart','11145751',0,2,'2017-07-16 11:39:47.741000',1);
INSERT INTO portunes_identifier VALUES(2620,'Tanımsız kart','6152006',0,2,'2017-07-16 11:39:50.676000',1);
INSERT INTO portunes_identifier VALUES(2621,'Tanımsız kart','6507439',0,2,'2017-07-16 11:39:50.754000',1);
INSERT INTO portunes_identifier VALUES(2622,'Tanımsız kart','8235711',0,2,'2017-07-16 11:39:50.831000',1);
INSERT INTO portunes_identifier VALUES(2623,'Tanımsız kart','11501519',0,2,'2017-07-16 11:39:50.986000',1);
INSERT INTO portunes_identifier VALUES(2624,'Tanımsız kart','8386271',0,2,'2017-07-16 11:39:51.064000',1);
INSERT INTO portunes_identifier VALUES(2625,'Tanımsız kart','2378404',0,2,'2017-07-16 11:39:51.141000',1);
INSERT INTO portunes_identifier VALUES(2626,'Tanımsız kart','9081418',0,2,'2017-07-16 11:39:51.219000',1);
INSERT INTO portunes_identifier VALUES(2627,'Tanımsız kart','4788497',0,2,'2017-07-16 11:39:51.296000',1);
INSERT INTO portunes_identifier VALUES(2628,'Tanımsız kart','9585732',0,2,'2017-07-16 11:39:51.373000',1);
INSERT INTO portunes_identifier VALUES(2629,'Tanımsız kart','10822794',0,2,'2017-07-16 11:39:51.451000',1);
INSERT INTO portunes_identifier VALUES(2630,'Tanımsız kart','12299259',0,2,'2017-07-16 11:39:51.528000',1);
INSERT INTO portunes_identifier VALUES(2631,'Tanımsız kart','8561700',0,2,'2017-07-16 11:39:51.683000',1);
INSERT INTO portunes_identifier VALUES(2632,'Tanımsız kart','11184808',0,2,'2017-07-16 11:39:51.761000',1);
INSERT INTO portunes_identifier VALUES(2633,'Tanımsız kart','5588298',0,2,'2017-07-16 11:39:51.838000',1);
INSERT INTO portunes_identifier VALUES(2634,'Tanımsız kart','4755986',0,2,'2017-07-16 11:39:51.916000',1);
INSERT INTO portunes_identifier VALUES(2635,'Tanımsız kart','13033333',0,2,'2017-07-16 11:39:51.994000',1);
INSERT INTO portunes_identifier VALUES(2636,'Tanımsız kart','4849738',0,2,'2017-07-16 11:39:52.149000',1);
INSERT INTO portunes_identifier VALUES(2637,'Tanımsız kart','14548981',0,2,'2017-07-16 11:39:52.227000',1);
INSERT INTO portunes_identifier VALUES(2638,'Tanımsız kart','15378455',0,2,'2017-07-16 14:14:09.625000',1);
INSERT INTO portunes_identifier VALUES(2639,'Tanımsız kart','15029271',0,2,'2017-07-16 14:14:09.779000',1);
INSERT INTO portunes_identifier VALUES(2640,'Tanımsız kart','15378471',0,2,'2017-07-16 14:14:09.932000',1);
INSERT INTO portunes_identifier VALUES(2641,'Tanımsız kart','16427269',0,2,'2017-07-16 14:14:10.010000',1);
INSERT INTO portunes_identifier VALUES(2642,'Tanımsız kart','15291411',0,2,'2017-07-16 14:14:10.087000',1);
INSERT INTO portunes_identifier VALUES(2643,'Tanımsız kart','16405764',0,2,'2017-07-16 14:14:10.163000',1);
INSERT INTO portunes_identifier VALUES(2644,'Tanımsız kart','15029259',0,2,'2017-07-16 14:14:10.241000',1);
INSERT INTO portunes_identifier VALUES(2645,'Tanımsız kart','16077843',0,2,'2017-07-16 14:14:10.318000',1);
INSERT INTO portunes_identifier VALUES(2646,'Tanımsız kart','15373335',0,2,'2017-07-16 14:14:10.395000',1);
INSERT INTO portunes_identifier VALUES(2647,'Tanımsız kart','15356939',0,2,'2017-07-16 14:14:10.472000',1);
INSERT INTO portunes_identifier VALUES(2648,'Tanımsız kart','4805962',0,2,'2017-07-16 14:14:10.856000',1);
INSERT INTO portunes_identifier VALUES(2649,'Tanımsız kart','5589674',0,2,'2017-07-16 14:14:11.087000',1);
INSERT INTO portunes_identifier VALUES(2650,'Tanımsız kart','13981098',0,2,'2017-07-16 14:14:11.164000',1);
INSERT INTO portunes_identifier VALUES(2651,'Tanımsız kart','2468562',0,2,'2017-07-16 14:14:11.319000',1);
INSERT INTO portunes_identifier VALUES(2652,'Tanımsız kart','5417642',0,2,'2017-07-16 14:14:11.626000',1);
INSERT INTO portunes_identifier VALUES(2653,'Tanımsız kart','11883946',0,2,'2017-07-16 14:14:14.391000',1);
INSERT INTO portunes_identifier VALUES(2654,'Tanımsız kart','6993581',0,2,'2017-07-17 04:19:37.152000',1);
INSERT INTO portunes_identifier VALUES(2655,'Tanımsız kart','11193002',0,2,'2017-07-17 04:19:37.308000',1);
INSERT INTO portunes_identifier VALUES(2656,'Tanımsız kart','15022207',0,2,'2017-07-17 04:19:37.664000',1);
INSERT INTO portunes_identifier VALUES(2657,'Tanımsız kart','7682303',0,2,'2017-07-17 04:19:39.734000',1);
INSERT INTO portunes_identifier VALUES(2658,'Tanımsız kart','15372432',0,2,'2017-07-17 04:19:43.028000',1);
INSERT INTO portunes_identifier VALUES(2659,'Tanımsız kart','15376656',0,2,'2017-07-17 04:19:43.106000',1);
INSERT INTO portunes_identifier VALUES(2660,'Tanımsız kart','8038436',0,2,'2017-07-17 04:19:43.183000',1);
INSERT INTO portunes_identifier VALUES(2661,'Tanımsız kart','15376528',0,2,'2017-07-17 04:19:43.259000',1);
INSERT INTO portunes_identifier VALUES(2662,'Tanımsız kart','15376672',0,2,'2017-07-17 04:19:43.336000',1);
INSERT INTO portunes_identifier VALUES(2663,'Tanımsız kart','4871338',0,2,'2017-07-17 04:19:47.666000',1);
INSERT INTO portunes_identifier VALUES(2664,'Tanımsız kart','1188424',0,2,'2017-07-17 04:19:48.631000',1);
INSERT INTO portunes_identifier VALUES(2665,'Tanımsız kart','4794954',0,2,'2017-07-17 04:19:48.708000',1);
INSERT INTO portunes_identifier VALUES(2666,'Tanımsız kart','137',0,2,'2017-07-17 04:19:48.862000',1);
INSERT INTO portunes_identifier VALUES(2667,'Tanımsız kart','9587273',0,2,'2017-07-17 04:53:59.055000',1);
INSERT INTO portunes_identifier VALUES(2668,'Ayhan Aydın geçici','2141051',0,1,'2017-07-17 06:07:16.035000',0);
INSERT INTO portunes_identifier VALUES(2669,'Ayşe memur geçici','1916567',1,2,'2017-07-17 06:14:51.003000',0);
INSERT INTO portunes_identifier VALUES(2670,'Tanımsız kart','5220935',0,2,'2017-07-17 06:24:17.402000',1);
INSERT INTO portunes_identifier VALUES(2671,'Tanımsız kart','4388176',0,2,'2017-07-17 06:24:18.578000',1);
INSERT INTO portunes_identifier VALUES(2672,'Tanımsız kart','11085092',0,2,'2017-07-17 06:24:23.776000',1);
INSERT INTO portunes_identifier VALUES(2673,'Tanımsız kart','15382484',0,2,'2017-07-17 06:54:06.316000',1);
INSERT INTO portunes_identifier VALUES(2674,'Tanımsız kart','1345605',0,2,'2017-07-17 07:04:19.410000',1);
INSERT INTO portunes_identifier VALUES(2675,'Tanımsız kart','4282102',0,2,'2017-07-17 07:04:20.425000',1);
INSERT INTO portunes_identifier VALUES(2676,'Tanımsız kart','6117179',0,2,'2017-07-17 07:04:20.740000',1);
INSERT INTO portunes_identifier VALUES(2677,'Tanımsız kart','7760554',0,2,'2017-07-17 07:33:52.004000',1);
INSERT INTO portunes_identifier VALUES(2678,'Tanımsız kart','5416533',0,2,'2017-07-17 07:33:52.094000',1);
INSERT INTO portunes_identifier VALUES(2679,'Tanımsız kart','9786702',0,2,'2017-07-17 07:33:52.171000',1);
INSERT INTO portunes_identifier VALUES(2680,'Tanımsız kart','5593770',0,2,'2017-07-17 07:33:52.250000',1);
INSERT INTO portunes_identifier VALUES(2681,'Tanımsız kart','7689557',0,2,'2017-07-17 07:33:52.328000',1);
INSERT INTO portunes_identifier VALUES(2682,'Tanımsız kart','11447126',0,2,'2017-07-17 07:33:52.483000',1);
INSERT INTO portunes_identifier VALUES(2683,'Tanımsız kart','4106524',0,2,'2017-07-17 07:33:52.719000',1);
INSERT INTO portunes_identifier VALUES(2684,'Tanımsız kart','13981006',0,2,'2017-07-17 08:34:07.682000',1);
INSERT INTO portunes_identifier VALUES(2685,'Tanımsız kart','7306069',0,2,'2017-07-17 08:34:07.772000',1);
INSERT INTO portunes_identifier VALUES(2686,'Tanımsız kart','2134304',0,2,'2017-07-17 08:34:09.338000',1);
INSERT INTO portunes_identifier VALUES(2687,'Tanımsız kart','1396897',0,2,'2017-07-17 08:54:28.925000',1);
INSERT INTO portunes_identifier VALUES(2688,'Tanımsız kart','2790569',0,2,'2017-07-17 09:34:29.084000',1);
INSERT INTO portunes_identifier VALUES(2689,'Tanımsız kart','5591662',0,2,'2017-07-17 09:34:29.187000',1);
INSERT INTO portunes_identifier VALUES(2690,'Tanımsız kart','6875833',0,2,'2017-07-17 09:34:31.278000',1);
INSERT INTO portunes_identifier VALUES(2691,'Tanımsız kart','5417556',0,2,'2017-07-17 09:44:24.794000',1);
INSERT INTO portunes_identifier VALUES(2692,'Ömer Yavaş Geçici','2141078',0,2,'2017-07-17 10:47:29.510000',0);
INSERT INTO portunes_identifier VALUES(2693,'Tanımsız kart','14046575',0,2,'2017-07-17 11:04:25.308000',1);
INSERT INTO portunes_identifier VALUES(2694,'Tanımsız kart','3845275',0,2,'2017-07-17 11:04:26.195000',1);
INSERT INTO portunes_identifier VALUES(2695,'Tanımsız kart','5421743',0,2,'2017-07-17 11:04:26.508000',1);
INSERT INTO portunes_identifier VALUES(2696,'Tanımsız kart','11053162',0,2,'2017-07-17 13:04:52.484000',1);
INSERT INTO portunes_identifier VALUES(2697,'Tanımsız kart','16426262',0,2,'2017-07-17 13:04:53.012000',1);
INSERT INTO portunes_identifier VALUES(2698,'Tanımsız kart','4868757',0,2,'2017-07-17 13:05:04.535000',1);
INSERT INTO portunes_identifier VALUES(2699,'Tanımsız kart','8389128',0,2,'2017-07-17 13:05:04.613000',1);
INSERT INTO portunes_identifier VALUES(2700,'Tanımsız kart','16741879',0,2,'2017-07-17 13:05:04.847000',1);
INSERT INTO portunes_identifier VALUES(2701,'Tanımsız kart','16645119',0,2,'2017-07-17 13:05:05.083000',1);
INSERT INTO portunes_identifier VALUES(2702,'Tanımsız kart','12909227',0,2,'2017-07-17 14:14:38.296000',1);
INSERT INTO portunes_identifier VALUES(2703,'Tanımsız kart','4802853',0,2,'2017-07-17 14:24:33.330000',1);
INSERT INTO portunes_identifier VALUES(2704,'Tanımsız kart','9586980',0,2,'2017-07-17 14:24:33.408000',1);
INSERT INTO portunes_identifier VALUES(2705,'Tanımsız kart','6093695',0,2,'2017-07-17 15:04:32.894000',1);
INSERT INTO portunes_identifier VALUES(2706,'Tanımsız kart','5548618',0,2,'2017-07-17 15:04:32.972000',1);
INSERT INTO portunes_identifier VALUES(2707,'Tanımsız kart','11086420',0,2,'2017-07-17 15:04:33.050000',1);
INSERT INTO portunes_identifier VALUES(2708,'Tanımsız kart','2247250',0,2,'2017-07-17 16:44:41.398000',1);
INSERT INTO portunes_identifier VALUES(2709,'Tanımsız kart','11162186',0,2,'2017-07-17 17:14:36.925000',1);
INSERT INTO portunes_identifier VALUES(2710,'Tanımsız kart','4753544',0,2,'2017-07-17 17:14:37.003000',1);
INSERT INTO portunes_identifier VALUES(2711,'Tanımsız kart','11094308',0,2,'2017-07-17 17:14:37.081000',1);
INSERT INTO portunes_identifier VALUES(2712,'Tanımsız kart','16432080',0,2,'2017-07-17 20:17:19.791000',1);
INSERT INTO portunes_identifier VALUES(2713,'Tanımsız kart','4802857',0,2,'2017-07-17 20:17:19.868000',1);
INSERT INTO portunes_identifier VALUES(2714,'Tanımsız kart','11097234',0,2,'2017-07-17 20:17:19.946000',1);
INSERT INTO portunes_identifier VALUES(2715,'Tanımsız kart','4021631',0,2,'2017-07-17 20:17:20.023000',1);
INSERT INTO portunes_identifier VALUES(2716,'Tanımsız kart','5392514',0,2,'2017-07-17 20:17:20.102000',1);
INSERT INTO portunes_identifier VALUES(2717,'Tanımsız kart','4802858',0,2,'2017-07-17 20:17:20.180000',1);
INSERT INTO portunes_identifier VALUES(2718,'Tanımsız kart','5411498',0,2,'2017-07-17 20:47:14.249000',1);
INSERT INTO portunes_identifier VALUES(2719,'Tanımsız kart','8684548',0,2,'2017-07-18 02:37:27.255000',1);
INSERT INTO portunes_identifier VALUES(2720,'Tanımsız kart','8040957',0,2,'2017-07-18 05:37:09.923000',1);
INSERT INTO portunes_identifier VALUES(2721,'Tanımsız kart','10660564',0,2,'2017-07-18 06:47:14.038000',1);
INSERT INTO portunes_identifier VALUES(2722,'Tanımsız kart','14941498',0,2,'2017-07-18 06:47:15.348000',1);
INSERT INTO portunes_identifier VALUES(2723,'Tanımsız kart','6908746',0,2,'2017-07-18 06:57:53.412000',1);
INSERT INTO portunes_identifier VALUES(2724,'Tanımsız kart','5592411',0,2,'2017-07-18 06:57:53.491000',1);
INSERT INTO portunes_identifier VALUES(2725,'Tanımsız kart','4875590',0,2,'2017-07-18 07:27:18.116000',1);
INSERT INTO portunes_identifier VALUES(2726,'Tanımsız kart','4548203',0,2,'2017-07-18 07:57:16.022000',1);
INSERT INTO portunes_identifier VALUES(2727,'Tanımsız kart','2974902',0,2,'2017-07-18 07:57:16.099000',1);
INSERT INTO portunes_identifier VALUES(2728,'Tanımsız kart','11185367',0,2,'2017-07-18 07:57:16.177000',1);
INSERT INTO portunes_identifier VALUES(2729,'Tanımsız kart','1402197',0,2,'2017-07-18 07:57:16.334000',1);
INSERT INTO portunes_identifier VALUES(2730,'Tanımsız kart','11184759',0,2,'2017-07-18 07:57:16.411000',1);
INSERT INTO portunes_identifier VALUES(2731,'Tanımsız kart','11250986',0,2,'2017-07-18 07:57:16.489000',1);
INSERT INTO portunes_identifier VALUES(2732,'Tanımsız kart','12433717',0,2,'2017-07-18 07:57:16.567000',1);
INSERT INTO portunes_identifier VALUES(2733,'Tanımsız kart','11195058',0,2,'2017-07-18 07:57:16.644000',1);
INSERT INTO portunes_identifier VALUES(2734,'Tanımsız kart','3418558',0,2,'2017-07-18 07:57:18.676000',1);
INSERT INTO portunes_identifier VALUES(2735,'Tanımsız kart','7685184',0,2,'2017-07-18 09:27:23.099000',1);
INSERT INTO portunes_identifier VALUES(2736,'Tanımsız kart','644369',0,2,'2017-07-18 09:27:23.255000',1);
INSERT INTO portunes_identifier VALUES(2737,'Tanımsız kart','4172364',0,2,'2017-07-18 09:27:26.557000',1);
INSERT INTO portunes_identifier VALUES(2738,'Tanımsız kart','4188819',0,2,'2017-07-18 09:27:26.634000',1);
INSERT INTO portunes_identifier VALUES(2739,'Tanımsız kart','11184746',0,2,'2017-07-18 09:27:29.888000',1);
INSERT INTO portunes_identifier VALUES(2740,'Tanımsız kart','11709079',0,2,'2017-07-18 09:27:31.117000',1);
INSERT INTO portunes_identifier VALUES(2741,'Tanımsız kart','3003627',0,2,'2017-07-18 11:27:29.039000',1);
INSERT INTO portunes_identifier VALUES(2742,'Tanımsız kart','4959115',0,2,'2017-07-18 11:27:31.722000',1);
INSERT INTO portunes_identifier VALUES(2743,'Tanımsız kart','5434082',0,2,'2017-07-18 11:27:33.055000',1);
INSERT INTO portunes_identifier VALUES(2744,'Tanımsız kart','7690550',0,2,'2017-07-18 11:27:33.444000',1);
INSERT INTO portunes_identifier VALUES(2745,'Tanımsız kart','5723926',0,2,'2017-07-18 11:27:34.147000',1);
INSERT INTO portunes_identifier VALUES(2746,'Tanımsız kart','15033563',0,2,'2017-07-18 11:27:34.571000',1);
INSERT INTO portunes_identifier VALUES(2747,'Tanımsız kart','11447838',0,2,'2017-07-18 11:27:39.200000',1);
INSERT INTO portunes_identifier VALUES(2748,'Tanımsız kart','2364736',0,2,'2017-07-18 12:07:13.467000',1);
INSERT INTO portunes_identifier VALUES(2749,'Tanımsız kart','8213765',0,2,'2017-07-18 12:07:15.136000',1);
INSERT INTO portunes_identifier VALUES(2750,'Tanımsız kart','5569194',0,2,'2017-07-18 12:07:15.214000',1);
INSERT INTO portunes_identifier VALUES(2751,'Tanımsız kart','16498678',0,2,'2017-07-18 12:07:17.084000',1);
INSERT INTO portunes_identifier VALUES(2752,'Tanımsız kart','9469973',0,2,'2017-07-18 12:47:17.168000',1);
INSERT INTO portunes_identifier VALUES(2753,'Tanımsız kart','4997098',0,2,'2017-07-18 12:47:17.559000',1);
INSERT INTO portunes_identifier VALUES(2754,'Tanımsız kart','11890026',0,2,'2017-07-18 15:17:24.539000',1);
INSERT INTO portunes_identifier VALUES(2755,'Tanımsız kart','7252774',0,2,'2017-07-18 15:17:31.039000',1);
INSERT INTO portunes_identifier VALUES(2756,'Tanımsız kart','4793413',0,2,'2017-07-18 15:17:38.400000',1);
INSERT INTO portunes_identifier VALUES(2757,'Tanımsız kart','14865850',0,2,'2017-07-18 16:27:23.809000',1);
INSERT INTO portunes_identifier VALUES(2758,'Tanımsız kart','11242170',0,2,'2017-07-18 16:27:23.887000',1);
INSERT INTO portunes_identifier VALUES(2759,'Tanımsız kart','3845750',0,2,'2017-07-18 16:27:29.249000',1);
INSERT INTO portunes_identifier VALUES(2760,'Tanımsız kart','11097252',0,2,'2017-07-18 18:47:33.696000',1);
INSERT INTO portunes_identifier VALUES(2761,'Tanımsız kart','16771839',0,2,'2017-07-18 18:47:33.979000',1);
INSERT INTO portunes_identifier VALUES(2762,'Tanımsız kart','2132113',0,2,'2017-07-18 19:36:56.157000',1);
INSERT INTO portunes_identifier VALUES(2763,'Tanımsız kart','4227338',0,2,'2017-07-18 20:17:23.555000',1);
INSERT INTO portunes_identifier VALUES(2764,'Tanımsız kart','16760813',0,2,'2017-07-18 20:57:19.530000',1);
INSERT INTO portunes_identifier VALUES(2765,'Tanımsız kart','6029055',0,2,'2017-07-18 22:37:43.267000',1);
INSERT INTO portunes_identifier VALUES(2766,'Tanımsız kart','5989026',0,2,'2017-07-19 03:37:17.566000',1);
INSERT INTO portunes_identifier VALUES(2767,'Tanımsız kart','6911351',0,2,'2017-07-19 06:17:49.805000',1);
INSERT INTO portunes_identifier VALUES(2768,'Tanımsız kart','8922248',0,2,'2017-07-19 06:17:53.892000',1);
INSERT INTO portunes_identifier VALUES(2769,'Tanımsız kart','11217578',0,2,'2017-07-19 07:57:17.657000',1);
INSERT INTO portunes_identifier VALUES(2770,'Tanımsız kart','11187949',0,2,'2017-07-19 08:17:36.748000',1);
INSERT INTO portunes_identifier VALUES(2771,'Tanımsız kart','11097030',0,2,'2017-07-19 08:17:36.826000',1);
INSERT INTO portunes_identifier VALUES(2772,'Tanımsız kart','1932297',0,2,'2017-07-19 08:37:25.182000',1);
INSERT INTO portunes_identifier VALUES(2773,'Tanımsız kart','12763097',0,2,'2017-07-19 09:27:17.608000',1);
INSERT INTO portunes_identifier VALUES(2774,'Tanımsız kart','12496367',0,2,'2017-07-19 09:27:18.645000',1);
INSERT INTO portunes_identifier VALUES(2775,'Tanımsız kart','5952853',0,2,'2017-07-19 11:57:36.676000',1);
INSERT INTO portunes_identifier VALUES(2776,'Tanımsız kart','15645242',0,2,'2017-07-19 11:57:43.608000',1);
INSERT INTO portunes_identifier VALUES(2777,'Tanımsız kart','1005013',0,2,'2017-07-19 11:57:45.434000',1);
INSERT INTO portunes_identifier VALUES(2778,'Tanımsız kart','16086895',0,2,'2017-07-19 11:57:46.824000',1);
INSERT INTO portunes_identifier VALUES(2779,'Tanımsız kart','13970137',0,2,'2017-07-19 13:07:32.631000',1);
INSERT INTO portunes_identifier VALUES(2780,'Tanımsız kart','5508437',0,2,'2017-07-19 14:17:13.035000',1);
INSERT INTO portunes_identifier VALUES(2781,'Tanımsız kart','15497322',0,2,'2017-07-19 14:17:13.269000',1);
INSERT INTO portunes_identifier VALUES(2782,'Tanımsız kart','7387811',0,2,'2017-07-19 14:17:13.580000',1);
INSERT INTO portunes_identifier VALUES(2783,'Tanımsız kart','2389337',0,2,'2017-07-19 14:47:21.242000',1);
INSERT INTO portunes_identifier VALUES(2784,'Tanımsız kart','5542954',0,2,'2017-07-19 14:47:21.634000',1);
INSERT INTO portunes_identifier VALUES(2785,'Tanımsız kart','16621228',0,2,'2017-07-19 15:17:17.106000',1);
INSERT INTO portunes_identifier VALUES(2786,'Tanımsız kart','16427953',0,2,'2017-07-19 16:37:26.078000',1);
INSERT INTO portunes_identifier VALUES(2787,'Tanımsız kart','9586762',0,2,'2017-07-19 16:37:26.415000',1);
INSERT INTO portunes_identifier VALUES(2788,'Tanımsız kart','9605714',0,2,'2017-07-19 16:37:26.493000',1);
INSERT INTO portunes_identifier VALUES(2789,'Tanımsız kart','9605778',0,2,'2017-07-19 16:37:26.571000',1);
INSERT INTO portunes_identifier VALUES(2790,'Tanımsız kart','5514287',0,2,'2017-07-19 18:37:29.890000',1);
INSERT INTO portunes_identifier VALUES(2791,'Tanımsız kart','9737505',0,2,'2017-07-19 18:37:31.316000',1);
INSERT INTO portunes_identifier VALUES(2792,'Tanımsız kart','8947780',0,2,'2017-07-19 19:17:30.555000',1);
INSERT INTO portunes_identifier VALUES(2793,'Tanımsız kart','16252282',0,2,'2017-07-19 19:17:31.176000',1);
INSERT INTO portunes_identifier VALUES(2794,'Tanımsız kart','16699222',0,2,'2017-07-19 20:17:50.653000',1);
INSERT INTO portunes_identifier VALUES(2795,'Tanımsız kart','14146295',0,2,'2017-07-19 20:17:51.065000',1);
INSERT INTO portunes_identifier VALUES(2796,'Tanımsız kart','8947849',0,2,'2017-07-19 21:07:08.228000',1);
INSERT INTO portunes_identifier VALUES(2797,'Tanımsız kart','2796197',0,2,'2017-07-20 03:57:21.463000',1);
INSERT INTO portunes_identifier VALUES(2798,'Tanımsız kart','4887186',0,2,'2017-07-20 03:57:21.540000',1);
INSERT INTO portunes_identifier VALUES(2799,'Tanımsız kart','9565524',0,2,'2017-07-20 05:17:22.993000',1);
INSERT INTO portunes_identifier VALUES(2800,'Tanımsız kart','1090848',0,2,'2017-07-20 05:17:23.302000',1);
INSERT INTO portunes_identifier VALUES(2801,'Tanımsız kart','4844459',0,2,'2017-07-20 05:37:45.280000',1);
INSERT INTO portunes_identifier VALUES(2802,'Tanımsız kart','5723940',0,2,'2017-07-20 05:37:45.357000',1);
INSERT INTO portunes_identifier VALUES(2803,'Tanımsız kart','1066116',0,2,'2017-07-20 09:17:20.466000',1);
INSERT INTO portunes_identifier VALUES(2804,'Tanımsız kart','4884516',0,2,'2017-07-20 09:17:20.544000',1);
INSERT INTO portunes_identifier VALUES(2805,'Tanımsız kart','12270581',0,2,'2017-07-20 09:17:20.622000',1);
INSERT INTO portunes_identifier VALUES(2806,'Tanımsız kart','12233259',0,2,'2017-07-20 09:17:21.115000',1);
INSERT INTO portunes_identifier VALUES(2807,'Tanımsız kart','7056042',0,2,'2017-07-20 09:17:21.349000',1);
INSERT INTO portunes_identifier VALUES(2808,'Tanımsız kart','13982379',0,2,'2017-07-20 09:17:21.584000',1);
INSERT INTO portunes_identifier VALUES(2809,'Tanımsız kart','12213375',0,2,'2017-07-20 09:17:22.809000',1);
INSERT INTO portunes_identifier VALUES(2810,'Tanımsız kart','4342517',0,2,'2017-07-20 09:17:36.370000',1);
INSERT INTO portunes_identifier VALUES(2811,'Tanımsız kart','13968261',0,2,'2017-07-20 09:17:39.474000',1);
INSERT INTO portunes_identifier VALUES(2812,'Tanımsız kart','1924157',0,2,'2017-07-20 09:17:40.780000',1);
INSERT INTO portunes_identifier VALUES(2813,'Tanımsız kart','11348821',0,2,'2017-07-20 09:27:27.703000',1);
INSERT INTO portunes_identifier VALUES(2814,'Tanımsız kart','15389092',0,2,'2017-07-20 10:31:11.188000',1);
INSERT INTO portunes_identifier VALUES(2815,'Tanımsız kart','13990489',0,2,'2017-07-20 10:31:11.658000',1);
INSERT INTO portunes_identifier VALUES(2816,'Tanımsız kart','3852970',0,2,'2017-07-20 12:10:26.545000',1);
INSERT INTO portunes_identifier VALUES(2817,'Tanımsız kart','11901365',0,2,'2017-07-20 12:10:26.623000',1);
INSERT INTO portunes_identifier VALUES(2818,'Tanımsız kart','16506619',0,2,'2017-07-20 12:10:26.701000',1);
INSERT INTO portunes_identifier VALUES(2819,'Tanımsız kart','11709109',0,2,'2017-07-20 13:01:41.983000',1);
INSERT INTO portunes_identifier VALUES(2820,'Tanımsız kart','11320106',0,2,'2017-07-20 13:01:42.061000',1);
INSERT INTO portunes_identifier VALUES(2821,'Tanımsız kart','2774698',0,2,'2017-07-20 13:01:42.323000',1);
INSERT INTO portunes_identifier VALUES(2822,'Tanımsız kart','15298815',0,2,'2017-07-20 13:01:43.083000',1);
INSERT INTO portunes_identifier VALUES(2823,'Tanımsız kart','15298642',0,2,'2017-07-20 13:01:43.239000',1);
INSERT INTO portunes_identifier VALUES(2824,'Tanımsız kart','16686414',0,2,'2017-07-20 13:01:44.334000',1);
INSERT INTO portunes_identifier VALUES(2825,'Tanımsız kart','16595548',0,2,'2017-07-20 13:01:45.901000',1);
INSERT INTO portunes_identifier VALUES(2826,'Tanımsız kart','16399032',0,2,'2017-07-20 13:01:45.979000',1);
INSERT INTO portunes_identifier VALUES(2827,'Tanımsız kart','16107514',0,2,'2017-07-20 13:01:46.841000',1);
INSERT INTO portunes_identifier VALUES(2828,'Tanımsız kart','7696466',0,2,'2017-07-20 13:01:47.470000',1);
INSERT INTO portunes_identifier VALUES(2829,'Tanımsız kart','15393061',0,2,'2017-07-20 13:01:47.940000',1);
INSERT INTO portunes_identifier VALUES(2830,'Tanımsız kart','5699216',0,2,'2017-07-20 13:01:50.933000',1);
INSERT INTO portunes_identifier VALUES(2831,'Tanımsız kart','4927147',0,2,'2017-07-20 13:22:16.121000',1);
INSERT INTO portunes_identifier VALUES(2832,'Tanımsız kart','13315755',0,2,'2017-07-20 13:22:16.198000',1);
INSERT INTO portunes_identifier VALUES(2833,'Tanımsız kart','8564205',0,2,'2017-07-20 15:21:32.478000',1);
INSERT INTO portunes_identifier VALUES(2834,'Tanımsız kart','15384153',0,2,'2017-07-20 15:21:34.119000',1);
INSERT INTO portunes_identifier VALUES(2835,'Tanımsız kart','8115566',0,2,'2017-07-20 15:21:35.156000',1);
INSERT INTO portunes_identifier VALUES(2836,'Tanımsız kart','5411580',0,2,'2017-07-20 18:11:56.287000',1);
INSERT INTO portunes_identifier VALUES(2837,'Tanımsız kart','1067552',0,2,'2017-07-20 18:11:56.679000',1);
INSERT INTO portunes_identifier VALUES(2838,'Tanımsız kart','15036498',0,2,'2017-07-20 20:01:30.338000',1);
INSERT INTO portunes_identifier VALUES(2839,'Tanımsız kart','2249289',0,2,'2017-07-20 20:01:30.905000',1);
INSERT INTO portunes_identifier VALUES(2840,'Tanımsız kart','7696530',0,2,'2017-07-20 23:51:36.277000',1);
INSERT INTO portunes_identifier VALUES(2841,'Tanımsız kart','4800170',0,2,'2017-07-21 05:51:29.693000',1);
INSERT INTO portunes_identifier VALUES(2842,'Tanımsız kart','16514927',0,2,'2017-07-21 05:51:34.226000',1);
INSERT INTO portunes_identifier VALUES(2843,'Tanımsız kart','10502153',0,2,'2017-07-21 06:31:35.452000',1);
INSERT INTO portunes_identifier VALUES(2844,'Tanımsız kart','15381397',0,2,'2017-07-21 07:11:20.881000',1);
INSERT INTO portunes_identifier VALUES(2845,'Tanımsız kart','10834066',0,2,'2017-07-21 09:41:34.132000',1);
INSERT INTO portunes_identifier VALUES(2846,'Tanımsız kart','4805898',0,2,'2017-07-21 09:41:34.212000',1);
INSERT INTO portunes_identifier VALUES(2847,'Tanımsız kart','5330242',0,2,'2017-07-21 09:41:34.292000',1);
INSERT INTO portunes_identifier VALUES(2848,'Tanımsız kart','4805968',0,2,'2017-07-21 09:41:34.372000',1);
INSERT INTO portunes_identifier VALUES(2849,'Tanımsız kart','2639108',0,2,'2017-07-21 09:41:34.452000',1);
INSERT INTO portunes_identifier VALUES(2850,'Tanımsız kart','5412168',0,2,'2017-07-21 09:41:34.532000',1);
INSERT INTO portunes_identifier VALUES(2851,'Tanımsız kart','4891945',0,2,'2017-07-21 09:41:34.612000',1);
INSERT INTO portunes_identifier VALUES(2852,'Tanımsız kart','9520277',0,2,'2017-07-21 09:41:34.692000',1);
INSERT INTO portunes_identifier VALUES(2853,'Tanımsız kart','8733833',0,2,'2017-07-21 09:41:34.772000',1);
INSERT INTO portunes_identifier VALUES(2854,'Tanımsız kart','9579016',0,2,'2017-07-21 09:41:34.852000',1);
INSERT INTO portunes_identifier VALUES(2855,'Tanımsız kart','10818850',0,2,'2017-07-21 09:41:34.931000',1);
INSERT INTO portunes_identifier VALUES(2856,'Tanımsız kart','11175170',0,2,'2017-07-21 09:41:35.011000',1);
INSERT INTO portunes_identifier VALUES(2857,'Tanımsız kart','11052362',0,2,'2017-07-21 09:41:35.091000',1);
INSERT INTO portunes_identifier VALUES(2858,'Tanımsız kart','10627412',0,2,'2017-07-21 09:41:35.171000',1);
INSERT INTO portunes_identifier VALUES(2859,'Tanımsız kart','8692361',0,2,'2017-07-21 09:41:35.251000',1);
INSERT INTO portunes_identifier VALUES(2860,'Tanımsız kart','11048082',0,2,'2017-07-21 09:41:35.331000',1);
INSERT INTO portunes_identifier VALUES(2861,'Tanımsız kart','2705941',0,2,'2017-07-21 09:41:35.411000',1);
INSERT INTO portunes_identifier VALUES(2862,'Tanımsız kart','2692234',0,2,'2017-07-21 09:41:35.490000',1);
INSERT INTO portunes_identifier VALUES(2863,'Tanımsız kart','8474897',0,2,'2017-07-21 09:41:35.571000',1);
INSERT INTO portunes_identifier VALUES(2864,'Tanımsız kart','2754858',0,2,'2017-07-21 09:41:35.650000',1);
INSERT INTO portunes_identifier VALUES(2865,'Tanımsız kart','9569545',0,2,'2017-07-21 09:41:35.730000',1);
INSERT INTO portunes_identifier VALUES(2866,'Tanımsız kart','263300',0,2,'2017-07-21 09:41:35.810000',1);
INSERT INTO portunes_identifier VALUES(2867,'Tanımsız kart','8524368',0,2,'2017-07-21 09:41:35.889000',1);
INSERT INTO portunes_identifier VALUES(2868,'Tanımsız kart','4760704',0,2,'2017-07-21 09:41:35.968000',1);
INSERT INTO portunes_identifier VALUES(2869,'Tanımsız kart','567893',0,2,'2017-07-21 09:41:36.048000',1);
INSERT INTO portunes_identifier VALUES(2870,'Tanımsız kart','148545',0,2,'2017-07-21 09:41:36.128000',1);
INSERT INTO portunes_identifier VALUES(2871,'Tanımsız kart','8946837',0,2,'2017-07-21 09:41:36.208000',1);
INSERT INTO portunes_identifier VALUES(2872,'Tanımsız kart','561794',0,2,'2017-07-21 09:41:36.288000',1);
INSERT INTO portunes_identifier VALUES(2873,'Tanımsız kart','4326400',0,2,'2017-07-21 09:41:36.367000',1);
INSERT INTO portunes_identifier VALUES(2874,'Tanımsız kart','148617',0,2,'2017-07-21 09:41:36.448000',1);
INSERT INTO portunes_identifier VALUES(2875,'Tanımsız kart','5309442',0,2,'2017-07-21 09:41:36.528000',1);
INSERT INTO portunes_identifier VALUES(2876,'Tanımsız kart','5589524',0,2,'2017-07-21 09:41:36.608000',1);
INSERT INTO portunes_identifier VALUES(2877,'Tanımsız kart','8913577',0,2,'2017-07-21 09:41:36.687000',1);
INSERT INTO portunes_identifier VALUES(2878,'Tanımsız kart','2361672',0,2,'2017-07-21 09:41:36.767000',1);
INSERT INTO portunes_identifier VALUES(2879,'Tanımsız kart','545824',0,2,'2017-07-21 09:41:36.847000',1);
INSERT INTO portunes_identifier VALUES(2880,'Tanımsız kart','9786705',0,2,'2017-07-21 09:41:36.927000',1);
INSERT INTO portunes_identifier VALUES(2881,'Tanımsız kart','10749972',0,2,'2017-07-21 09:41:37.007000',1);
INSERT INTO portunes_identifier VALUES(2882,'Tanımsız kart','11160234',0,2,'2017-07-21 09:41:40.889000',1);
INSERT INTO portunes_identifier VALUES(2883,'Tanımsız kart','15657650',0,2,'2017-07-21 09:41:47.102000',1);
INSERT INTO portunes_identifier VALUES(2884,'Tanımsız kart','16075143',0,2,'2017-07-21 09:41:47.414000',1);
INSERT INTO portunes_identifier VALUES(2885,'Tanımsız kart','11022330',0,2,'2017-07-21 09:41:48.975000',1);
INSERT INTO portunes_identifier VALUES(2886,'Tanımsız kart','5548672',0,2,'2017-07-21 09:41:49.677000',1);
INSERT INTO portunes_identifier VALUES(2887,'Tanımsız kart','8300828',0,2,'2017-07-21 12:21:02.992000',1);
INSERT INTO portunes_identifier VALUES(2888,'Tanımsız kart','4776317',0,2,'2017-07-21 12:21:08.945000',1);
INSERT INTO portunes_identifier VALUES(2889,'Tanımsız kart','278610',0,2,'2017-07-21 12:21:15.590000',1);
INSERT INTO portunes_identifier VALUES(2890,'Tanımsız kart','9610578',0,2,'2017-07-21 12:21:16.473000',1);
INSERT INTO portunes_identifier VALUES(2891,'Tanımsız kart','11178314',0,2,'2017-07-21 12:21:16.551000',1);
INSERT INTO portunes_identifier VALUES(2892,'Tanımsız kart','4868373',0,2,'2017-07-21 12:21:16.629000',1);
INSERT INTO portunes_identifier VALUES(2893,'yedek','2141524',0,2,'2017-07-24 06:46:54',0);
INSERT INTO portunes_identifier VALUES(2894,'Tanımsız kart','10835274',0,2,'2017-07-26 08:38:27.857000',1);
INSERT INTO portunes_identifier VALUES(2895,'Tanımsız kart','8950912',0,2,'2017-07-26 08:38:29.460000',1);
INSERT INTO portunes_identifier VALUES(2896,'Tanımsız kart','14663093',0,2,'2017-07-26 08:38:29.765000',1);
INSERT INTO portunes_identifier VALUES(2897,'Tanımsız kart','11181463',0,2,'2017-07-26 08:38:29.842000',1);
INSERT INTO portunes_identifier VALUES(2898,'Tanımsız kart','5675949',0,2,'2017-07-26 08:38:29.919000',1);
INSERT INTO portunes_identifier VALUES(2899,'Tanımsız kart','7000030',0,2,'2017-07-26 08:38:29.996000',1);
INSERT INTO portunes_identifier VALUES(2900,'Tanımsız kart','16495274',0,2,'2017-07-26 08:38:30.073000',1);
INSERT INTO portunes_identifier VALUES(2901,'Tanımsız kart','11953525',0,2,'2017-07-26 08:38:30.150000',1);
INSERT INTO portunes_identifier VALUES(2902,'Tanımsız kart','8084055',0,2,'2017-07-26 08:38:30.227000',1);
INSERT INTO portunes_identifier VALUES(2903,'Tanımsız kart','132394',0,2,'2017-07-26 08:38:30.304000',1);
INSERT INTO portunes_identifier VALUES(2904,'Tanımsız kart','11184458',0,2,'2017-07-26 08:38:30.458000',1);
INSERT INTO portunes_identifier VALUES(2905,'Tanımsız kart','5399039',0,2,'2017-07-26 08:38:30.687000',1);
INSERT INTO portunes_identifier VALUES(2906,'Tanımsız kart','9459370',0,2,'2017-07-26 08:38:31.829000',1);
INSERT INTO portunes_identifier VALUES(2907,'Tanımsız kart','13968927',0,2,'2017-07-26 08:38:32.059000',1);
INSERT INTO portunes_identifier VALUES(2908,'Tanımsız kart','7260778',0,2,'2017-07-26 08:38:32.212000',1);
INSERT INTO portunes_identifier VALUES(2909,'Tanımsız kart','16775935',0,2,'2017-07-26 08:38:32.440000',1);
INSERT INTO portunes_identifier VALUES(2910,'Tanımsız kart','11162796',0,2,'2017-07-26 08:38:33.197000',1);
INSERT INTO portunes_identifier VALUES(2911,'Tanımsız kart','1223172',0,2,'2017-07-26 08:38:33.732000',1);
INSERT INTO portunes_identifier VALUES(2912,'Tanımsız kart','13312684',0,2,'2017-07-26 08:38:33.809000',1);
INSERT INTO portunes_identifier VALUES(2913,'Tanımsız kart','14962976',0,2,'2017-07-26 08:38:34.185000',1);
INSERT INTO portunes_identifier VALUES(2914,'Tanımsız kart','7225339',0,2,'2017-07-26 08:38:38.681000',1);
INSERT INTO portunes_identifier VALUES(2915,'Tanımsız kart','7992507',0,2,'2017-07-26 08:38:39.058000',1);
INSERT INTO portunes_identifier VALUES(2916,'Tanımsız kart','16772847',0,2,'2017-07-26 08:38:39.136000',1);
INSERT INTO portunes_identifier VALUES(2917,'Tanımsız kart','16244703',0,2,'2017-07-26 08:38:39.212000',1);
INSERT INTO portunes_identifier VALUES(2918,'Tanımsız kart','7864319',0,2,'2017-07-26 08:38:39.289000',1);
INSERT INTO portunes_identifier VALUES(2919,'Tanımsız kart','12277078',0,2,'2017-07-26 08:38:39.695000',1);
INSERT INTO portunes_identifier VALUES(2920,'Tanımsız kart','11884218',0,2,'2017-07-26 08:38:40.078000',1);
INSERT INTO portunes_identifier VALUES(2921,'Tanımsız kart','10835690',0,2,'2017-07-26 08:38:40.155000',1);
INSERT INTO portunes_identifier VALUES(2922,'Tanımsız kart','11183541',0,2,'2017-07-26 08:38:40.232000',1);
INSERT INTO portunes_identifier VALUES(2923,'Tanımsız kart','14505642',0,2,'2017-07-26 08:38:40.386000',1);
INSERT INTO portunes_identifier VALUES(2924,'Tanımsız kart','5680299',0,2,'2017-07-26 08:38:40.540000',1);
INSERT INTO portunes_identifier VALUES(2925,'Tanımsız kart','14374570',0,2,'2017-07-26 08:38:40.617000',1);
INSERT INTO portunes_identifier VALUES(2926,'Tanımsız kart','11197101',0,2,'2017-07-26 08:38:40.693000',1);
INSERT INTO portunes_identifier VALUES(2927,'Tanımsız kart','11971317',0,2,'2017-07-26 08:38:40.770000',1);
INSERT INTO portunes_identifier VALUES(2928,'Tanımsız kart','11094186',0,2,'2017-07-26 08:38:40.924000',1);
INSERT INTO portunes_identifier VALUES(2929,'Tanımsız kart','10922837',0,2,'2017-07-26 08:38:41.001000',1);
INSERT INTO portunes_identifier VALUES(2930,'Tanımsız kart','11905706',0,2,'2017-07-26 08:38:41.078000',1);
INSERT INTO portunes_identifier VALUES(2931,'Tanımsız kart','10037578',0,2,'2017-07-26 08:38:41.155000',1);
INSERT INTO portunes_identifier VALUES(2932,'Tanımsız kart','14529877',0,2,'2017-07-26 08:38:41.232000',1);
INSERT INTO portunes_identifier VALUES(2933,'Tanımsız kart','13981010',0,2,'2017-07-26 08:38:41.309000',1);
INSERT INTO portunes_identifier VALUES(2934,'Tanımsız kart','14002862',0,2,'2017-07-26 08:38:41.463000',1);
INSERT INTO portunes_identifier VALUES(2935,'Tanımsız kart','5592425',0,2,'2017-07-26 08:38:41.616000',1);
INSERT INTO portunes_identifier VALUES(2936,'Tanımsız kart','11184842',0,2,'2017-07-26 08:38:41.770000',1);
INSERT INTO portunes_identifier VALUES(2937,'Tanımsız kart','5592356',0,2,'2017-07-26 08:38:42.154000',1);
INSERT INTO portunes_identifier VALUES(2938,'Tanımsız kart','5612714',0,2,'2017-07-26 08:38:42.385000',1);
INSERT INTO portunes_identifier VALUES(2939,'Tanımsız kart','12244821',0,2,'2017-07-26 08:38:42.462000',1);
INSERT INTO portunes_identifier VALUES(2940,'Tanımsız kart','5996382',0,2,'2017-07-26 08:38:42.692000',1);
INSERT INTO portunes_identifier VALUES(2941,'Tanımsız kart','15380165',0,2,'2017-07-26 08:38:44.778000',1);
INSERT INTO portunes_identifier VALUES(2942,'Tanımsız kart','11174018',0,2,'2017-07-26 08:38:46.837000',1);
INSERT INTO portunes_identifier VALUES(2943,'Tanımsız kart','2685610',0,2,'2017-07-26 08:38:49.278000',1);
INSERT INTO portunes_identifier VALUES(2944,'Tanımsız kart','10810708',0,2,'2017-07-26 08:38:52.401000',1);
INSERT INTO portunes_identifier VALUES(2945,'Tanımsız kart','11447250',0,2,'2017-07-26 08:38:53.392000',1);
INSERT INTO portunes_identifier VALUES(2946,'Tanımsız kart','5199174',0,2,'2017-07-26 08:38:53.545000',1);
INSERT INTO portunes_identifier VALUES(2947,'Tanımsız kart','10442054',0,2,'2017-07-26 08:38:53.622000',1);
INSERT INTO portunes_identifier VALUES(2948,'Tanımsız kart','9459133',0,2,'2017-07-26 08:38:53.928000',1);
INSERT INTO portunes_identifier VALUES(2949,'Tanımsız kart','8369121',0,2,'2017-07-26 08:38:58.417000',1);
INSERT INTO portunes_identifier VALUES(2950,'Tanımsız kart','5223393',0,2,'2017-07-26 08:38:58.493000',1);
INSERT INTO portunes_identifier VALUES(2951,'Tanımsız kart','2009836',0,2,'2017-07-26 08:38:59.559000',1);
INSERT INTO portunes_identifier VALUES(2952,'Tanımsız kart','9355010',0,2,'2017-07-26 08:39:05.266000',1);
INSERT INTO portunes_identifier VALUES(2953,'Tanımsız kart','9766229',0,2,'2017-07-26 08:39:05.725000',1);
INSERT INTO portunes_identifier VALUES(2954,'Tanımsız kart','11302392',0,2,'2017-07-26 08:39:06.259000',1);
INSERT INTO portunes_identifier VALUES(2955,'Tanımsız kart','14669226',0,2,'2017-07-26 08:39:17.591000',1);
INSERT INTO portunes_identifier VALUES(2956,'Tanımsız kart','8869310',0,2,'2017-07-26 08:39:19.657000',1);
INSERT INTO portunes_identifier VALUES(2957,'Tanımsız kart','11512480',0,2,'2017-07-26 08:39:23.546000',1);
INSERT INTO portunes_identifier VALUES(2958,'Tanımsız kart','5591701',0,2,'2017-07-26 08:39:25.150000',1);
INSERT INTO portunes_identifier VALUES(2959,'Tanımsız kart','10999183',0,2,'2017-07-26 08:39:26.448000',1);
INSERT INTO portunes_identifier VALUES(2960,'Tanımsız kart','11182921',0,2,'2017-07-26 08:39:28.508000',1);
INSERT INTO portunes_identifier VALUES(2961,'Tanımsız kart','11184969',0,2,'2017-07-26 08:39:30.263000',1);
INSERT INTO portunes_identifier VALUES(2962,'Tanımsız kart','6290863',0,2,'2017-07-26 08:39:30.921000',1);
INSERT INTO portunes_identifier VALUES(2963,'Tanımsız kart','6256574',0,2,'2017-07-26 08:39:31.074000',1);
INSERT INTO portunes_identifier VALUES(2964,'Tanımsız kart','8684113',0,2,'2017-07-26 08:39:31.152000',1);
INSERT INTO portunes_identifier VALUES(2965,'Tanımsız kart','2771088',0,2,'2017-07-26 08:39:31.229000',1);
INSERT INTO portunes_identifier VALUES(2966,'Tanımsız kart','12214198',0,2,'2017-07-26 08:39:31.306000',1);
INSERT INTO portunes_identifier VALUES(2967,'Tanımsız kart','11159712',0,2,'2017-07-26 08:39:31.384000',1);
INSERT INTO portunes_identifier VALUES(2968,'Tanımsız kart','4891301',0,2,'2017-07-26 08:39:31.461000',1);
INSERT INTO portunes_identifier VALUES(2969,'Tanımsız kart','2232900',0,2,'2017-07-26 08:39:31.538000',1);
INSERT INTO portunes_identifier VALUES(2970,'Tanımsız kart','7165951',0,2,'2017-07-26 08:39:31.615000',1);
INSERT INTO portunes_identifier VALUES(2971,'Tanımsız kart','10782857',0,2,'2017-07-26 08:39:31.692000',1);
INSERT INTO portunes_identifier VALUES(2972,'Tanımsız kart','9587285',0,2,'2017-07-26 08:39:31.923000',1);
INSERT INTO portunes_identifier VALUES(2973,'Tanımsız kart','14116325',0,2,'2017-07-26 08:39:32',1);
INSERT INTO portunes_identifier VALUES(2974,'Tanımsız kart','10769577',0,2,'2017-07-26 08:39:32.077000',1);
INSERT INTO portunes_identifier VALUES(2975,'Tanımsız kart','11151653',0,2,'2017-07-26 08:39:32.154000',1);
INSERT INTO portunes_identifier VALUES(2976,'Tanımsız kart','264232',0,2,'2017-07-26 08:39:32.231000',1);
INSERT INTO portunes_identifier VALUES(2977,'Tanımsız kart','4756050',0,2,'2017-07-26 08:39:32.537000',1);
INSERT INTO portunes_identifier VALUES(2978,'Tanımsız kart','14120375',0,2,'2017-07-26 08:39:32.614000',1);
INSERT INTO portunes_identifier VALUES(2979,'Tanımsız kart','15657845',0,2,'2017-07-26 08:39:32.691000',1);
INSERT INTO portunes_identifier VALUES(2980,'Tanımsız kart','16104927',0,2,'2017-07-26 08:39:32.768000',1);
INSERT INTO portunes_identifier VALUES(2981,'Tanımsız kart','8126463',0,2,'2017-07-26 08:39:32.845000',1);
INSERT INTO portunes_identifier VALUES(2982,'Tanımsız kart','16636857',0,2,'2017-07-26 08:39:32.922000',1);
INSERT INTO portunes_identifier VALUES(2983,'Tanımsız kart','5394728',0,2,'2017-07-26 08:39:33.076000',1);
INSERT INTO portunes_identifier VALUES(2984,'Tanımsız kart','4756041',0,2,'2017-07-26 08:39:33.384000',1);
INSERT INTO portunes_identifier VALUES(2985,'Tanımsız kart','4493908',0,2,'2017-07-26 08:39:33.461000',1);
INSERT INTO portunes_identifier VALUES(2986,'Tanımsız kart','5392676',0,2,'2017-07-26 08:39:33.615000',1);
INSERT INTO portunes_identifier VALUES(2987,'Tanımsız kart','2696356',0,2,'2017-07-26 08:39:33.692000',1);
INSERT INTO portunes_identifier VALUES(2988,'Tanımsız kart','5392681',0,2,'2017-07-26 08:39:33.769000',1);
INSERT INTO portunes_identifier VALUES(2989,'Tanımsız kart','4794697',0,2,'2017-07-26 08:39:33.923000',1);
INSERT INTO portunes_identifier VALUES(2990,'Tanımsız kart','4793513',0,2,'2017-07-26 08:39:34',1);
INSERT INTO portunes_identifier VALUES(2991,'Tanımsız kart','4794661',0,2,'2017-07-26 08:39:34.230000',1);
INSERT INTO portunes_identifier VALUES(2992,'Tanımsız kart','16777214',0,2,'2017-07-26 08:39:34.308000',1);
INSERT INTO portunes_identifier VALUES(2993,'Tanımsız kart','16613341',0,2,'2017-07-26 08:39:34.385000',1);
INSERT INTO portunes_identifier VALUES(2994,'Tanımsız kart','9585810',0,2,'2017-07-26 08:39:34.768000',1);
INSERT INTO portunes_identifier VALUES(2995,'Tanımsız kart','7339765',0,2,'2017-07-26 08:39:34.845000',1);
INSERT INTO portunes_identifier VALUES(2996,'Tanımsız kart','11911163',0,2,'2017-07-26 08:39:34.922000',1);
INSERT INTO portunes_identifier VALUES(2997,'Tanımsız kart','332352',0,2,'2017-07-26 08:39:34.999000',1);
INSERT INTO portunes_identifier VALUES(2998,'Tanımsız kart','8725797',0,2,'2017-07-26 08:39:35.076000',1);
INSERT INTO portunes_identifier VALUES(2999,'Tanımsız kart','9082021',0,2,'2017-07-26 08:39:35.307000',1);
INSERT INTO portunes_identifier VALUES(3000,'Tanımsız kart','10781257',0,2,'2017-07-26 08:39:35.384000',1);
INSERT INTO portunes_identifier VALUES(3001,'Tanımsız kart','16702830',0,2,'2017-07-26 08:39:35.460000',1);
INSERT INTO portunes_identifier VALUES(3002,'Tanımsız kart','12315389',0,2,'2017-07-26 08:39:35.537000',1);
INSERT INTO portunes_identifier VALUES(3003,'Tanımsız kart','9589256',0,2,'2017-07-26 08:39:35.614000',1);
INSERT INTO portunes_identifier VALUES(3004,'Tanımsız kart','9589418',0,2,'2017-07-26 08:39:35.692000',1);
INSERT INTO portunes_identifier VALUES(3005,'Tanımsız kart','2396740',0,2,'2017-07-26 08:39:35.769000',1);
INSERT INTO portunes_identifier VALUES(3006,'Tanımsız kart','5392722',0,2,'2017-07-26 08:39:35.846000',1);
INSERT INTO portunes_identifier VALUES(3007,'Tanımsız kart','4494404',0,2,'2017-07-26 08:39:35.923000',1);
INSERT INTO portunes_identifier VALUES(3008,'Tanımsız kart','4801682',0,2,'2017-07-26 08:39:36',1);
INSERT INTO portunes_identifier VALUES(3009,'Tanımsız kart','9737508',0,2,'2017-07-26 08:39:36.077000',1);
INSERT INTO portunes_identifier VALUES(3010,'Tanımsız kart','8356',0,2,'2017-07-26 08:39:36.153000',1);
INSERT INTO portunes_identifier VALUES(3011,'Tanımsız kart','4212744',0,2,'2017-07-26 08:39:36.383000',1);
INSERT INTO portunes_identifier VALUES(3012,'Tanımsız kart','4858916',0,2,'2017-07-26 08:39:36.461000',1);
INSERT INTO portunes_identifier VALUES(3013,'Tanımsız kart','4236322',0,2,'2017-07-26 08:39:36.537000',1);
INSERT INTO portunes_identifier VALUES(3014,'Tanımsız kart','4792917',0,2,'2017-07-26 08:39:36.614000',1);
INSERT INTO portunes_identifier VALUES(3015,'Tanımsız kart','2695714',0,2,'2017-07-26 08:39:36.692000',1);
INSERT INTO portunes_identifier VALUES(3016,'Tanımsız kart','11176521',0,2,'2017-07-26 08:39:36.769000',1);
INSERT INTO portunes_identifier VALUES(3017,'Tanımsız kart','15728638',0,2,'2017-07-26 08:39:36.846000',1);
INSERT INTO portunes_identifier VALUES(3018,'Tanımsız kart','5543242',0,2,'2017-07-26 08:39:37',1);
INSERT INTO portunes_identifier VALUES(3019,'Tanımsız kart','5312785',0,2,'2017-07-26 08:39:37.077000',1);
INSERT INTO portunes_identifier VALUES(3020,'Tanımsız kart','151874',0,2,'2017-07-26 08:39:37.154000',1);
INSERT INTO portunes_identifier VALUES(3021,'Tanımsız kart','4788777',0,2,'2017-07-26 08:39:37.308000',1);
INSERT INTO portunes_identifier VALUES(3022,'Tanımsız kart','12541942',0,2,'2017-07-26 08:39:37.385000',1);
INSERT INTO portunes_identifier VALUES(3023,'Tanımsız kart','1213604',0,2,'2017-07-26 08:39:37.462000',1);
INSERT INTO portunes_identifier VALUES(3024,'Tanımsız kart','9610505',0,2,'2017-07-26 08:39:37.540000',1);
INSERT INTO portunes_identifier VALUES(3025,'Evrim Çolak Geçici','1922812',1,2,'2017-07-26 08:41:34.236000',0);
INSERT INTO portunes_identifier VALUES(3026,'Hatice Yıldız Geçici','2140515',1,2,'2017-07-26 08:43:40.013000',0);
INSERT INTO portunes_identifier VALUES(3027,'Erhan Polat Geçici','2141486',1,2,'2017-07-26 08:49:07.339000',0);
INSERT INTO portunes_identifier VALUES(3028,'Tanımsız kart','8719017',0,2,'2017-07-26 09:18:06.012000',1);
INSERT INTO portunes_identifier VALUES(3029,'Tanımsız kart','1221930',0,2,'2017-07-26 09:18:06.621000',1);
INSERT INTO portunes_identifier VALUES(3030,'Tanımsız kart','9737362',0,2,'2017-07-26 09:18:07.230000',1);
INSERT INTO portunes_identifier VALUES(3031,'Tanımsız kart','4890965',0,2,'2017-07-26 09:18:09.669000',1);
INSERT INTO portunes_identifier VALUES(3032,'Tanımsız kart','12451546',0,2,'2017-07-26 10:33:36.882000',1);
INSERT INTO portunes_identifier VALUES(3033,'Tanımsız kart','7317621',0,2,'2017-07-26 12:15:04.045000',1);
INSERT INTO portunes_identifier VALUES(3034,'Tanımsız kart','16117723',0,2,'2017-07-27 13:19:12.165000',1);
INSERT INTO portunes_identifier VALUES(3035,'Tanımsız kart','8378206',0,2,'2017-07-27 13:19:12.242000',1);
INSERT INTO portunes_identifier VALUES(3036,'Tanımsız kart','4871506',0,2,'2017-07-27 13:19:12.318000',1);
INSERT INTO portunes_identifier VALUES(3037,'Tanımsız kart','11400520',0,2,'2017-07-27 13:19:12.624000',1);
INSERT INTO portunes_identifier VALUES(3038,'Tanımsız kart','15554358',0,2,'2017-07-27 13:19:13.080000',1);
INSERT INTO portunes_identifier VALUES(3039,'Tanımsız kart','16168277',0,2,'2017-07-27 13:19:13.157000',1);
INSERT INTO portunes_identifier VALUES(3040,'Tanımsız kart','13970098',0,2,'2017-07-27 13:19:13.234000',1);
INSERT INTO portunes_identifier VALUES(3041,'Tanımsız kart','11184762',0,2,'2017-07-27 13:19:13.311000',1);
INSERT INTO portunes_identifier VALUES(3042,'Tanımsız kart','5597870',0,2,'2017-07-27 13:19:13.388000',1);
INSERT INTO portunes_identifier VALUES(3043,'Tanımsız kart','9827674',0,2,'2017-07-27 13:19:13.464000',1);
INSERT INTO portunes_identifier VALUES(3044,'Tanımsız kart','5985754',0,2,'2017-07-27 13:19:13.541000',1);
INSERT INTO portunes_identifier VALUES(3045,'Tanımsız kart','7002797',0,2,'2017-07-27 13:19:13.617000',1);
INSERT INTO portunes_identifier VALUES(3046,'Tanımsız kart','11315349',0,2,'2017-07-27 13:19:13.694000',1);
INSERT INTO portunes_identifier VALUES(3047,'Tanımsız kart','11251574',0,2,'2017-07-27 13:19:13.771000',1);
INSERT INTO portunes_identifier VALUES(3048,'Tanımsız kart','8948293',0,2,'2017-07-27 13:19:13.925000',1);
INSERT INTO portunes_identifier VALUES(3049,'Tanımsız kart','16149333',0,2,'2017-07-27 13:19:14.002000',1);
INSERT INTO portunes_identifier VALUES(3050,'Tanımsız kart','11180293',0,2,'2017-07-27 13:19:15.064000',1);
INSERT INTO portunes_identifier VALUES(3051,'Tanımsız kart','16080893',0,2,'2017-07-27 13:19:15.368000',1);
INSERT INTO portunes_identifier VALUES(3052,'Tanımsız kart','16645622',0,2,'2017-07-27 13:19:15.445000',1);
INSERT INTO portunes_identifier VALUES(3053,'Tanımsız kart','16170842',0,2,'2017-07-27 13:19:15.522000',1);
INSERT INTO portunes_identifier VALUES(3054,'Tanımsız kart','11184425',0,2,'2017-07-27 13:19:15.598000',1);
INSERT INTO portunes_identifier VALUES(3055,'Tanımsız kart','12516795',0,2,'2017-07-27 13:19:15.676000',1);
INSERT INTO portunes_identifier VALUES(3056,'Tanımsız kart','15686589',0,2,'2017-07-27 13:19:15.752000',1);
INSERT INTO portunes_identifier VALUES(3057,'Tanımsız kart','9852249',0,2,'2017-07-27 13:19:16.056000',1);
INSERT INTO portunes_identifier VALUES(3058,'Tanımsız kart','13981076',0,2,'2017-07-27 13:19:16.536000',1);
INSERT INTO portunes_identifier VALUES(3059,'Tanımsız kart','15553963',0,2,'2017-07-27 13:19:16.613000',1);
INSERT INTO portunes_identifier VALUES(3060,'Tanımsız kart','2796269',0,2,'2017-07-27 13:19:16.918000',1);
INSERT INTO portunes_identifier VALUES(3061,'Tanımsız kart','1397906',0,2,'2017-07-27 13:19:19.209000',1);
INSERT INTO portunes_identifier VALUES(3062,'Tanımsız kart','11906474',0,2,'2017-07-27 13:19:19.437000',1);
INSERT INTO portunes_identifier VALUES(3063,'Tanımsız kart','5412180',0,2,'2017-07-27 13:19:19.514000',1);
INSERT INTO portunes_identifier VALUES(3064,'Tanımsız kart','5944681',0,2,'2017-07-27 13:19:19.591000',1);
INSERT INTO portunes_identifier VALUES(3065,'Tanımsız kart','11184816',0,2,'2017-07-27 13:19:19.668000',1);
INSERT INTO portunes_identifier VALUES(3066,'Tanımsız kart','13986218',0,2,'2017-07-27 13:19:19.745000',1);
INSERT INTO portunes_identifier VALUES(3067,'Tanımsız kart','5614245',0,2,'2017-07-27 13:19:19.821000',1);
INSERT INTO portunes_identifier VALUES(3068,'Tanımsız kart','11097417',0,2,'2017-07-27 13:19:19.898000',1);
INSERT INTO portunes_identifier VALUES(3069,'Tanımsız kart','5434045',0,2,'2017-07-27 13:19:22.281000',1);
INSERT INTO portunes_identifier VALUES(3070,'Tanımsız kart','11162954',0,2,'2017-07-27 13:19:28.377000',1);
INSERT INTO portunes_identifier VALUES(3071,'Tanımsız kart','2172196',0,2,'2017-07-27 13:19:28.607000',1);
INSERT INTO portunes_identifier VALUES(3072,'Tanımsız kart','10823973',0,2,'2017-07-27 13:19:28.685000',1);
INSERT INTO portunes_identifier VALUES(3073,'Tanımsız kart','9521445',0,2,'2017-07-27 13:19:28.761000',1);
INSERT INTO portunes_identifier VALUES(3074,'Tanımsız kart','9062677',0,2,'2017-07-27 13:19:28.838000',1);
INSERT INTO portunes_identifier VALUES(3075,'Tanımsız kart','9579154',0,2,'2017-07-27 13:19:28.916000',1);
INSERT INTO portunes_identifier VALUES(3076,'Tanımsız kart','3847250',0,2,'2017-07-27 13:19:30.591000',1);
INSERT INTO portunes_identifier VALUES(3077,'Tanımsız kart','11885270',0,2,'2017-07-27 13:19:31.922000',1);
INSERT INTO portunes_identifier VALUES(3078,'Tanımsız kart','5597908',0,2,'2017-07-27 13:19:32',1);
INSERT INTO portunes_identifier VALUES(3079,'Tanımsız kart','11185498',0,2,'2017-07-27 13:19:32.158000',1);
INSERT INTO portunes_identifier VALUES(3080,'Tanımsız kart','6682236',0,2,'2017-07-27 13:19:39.829000',1);
INSERT INTO portunes_identifier VALUES(3081,'Tanımsız kart','6800063',0,2,'2017-07-27 13:19:39.906000',1);
INSERT INTO portunes_identifier VALUES(3082,'Tanımsız kart','2773586',0,2,'2017-07-27 13:19:46.856000',1);
INSERT INTO portunes_identifier VALUES(3083,'Tanımsız kart','16166783',0,2,'2017-07-27 13:19:48.428000',1);
INSERT INTO portunes_identifier VALUES(3084,'Tanımsız kart','16101310',0,2,'2017-07-27 13:19:48.581000',1);
INSERT INTO portunes_identifier VALUES(3085,'Tanımsız kart','4887104',0,2,'2017-07-27 13:19:48.658000',1);
INSERT INTO portunes_identifier VALUES(3086,'Tanımsız kart','8384505',0,2,'2017-07-27 13:19:48.735000',1);
INSERT INTO portunes_identifier VALUES(3087,'Tanımsız kart','4460546',0,2,'2017-07-27 13:19:48.812000',1);
INSERT INTO portunes_identifier VALUES(3088,'Tanımsız kart','4784677',0,2,'2017-07-27 13:19:48.966000',1);
INSERT INTO portunes_identifier VALUES(3089,'Tanımsız kart','16930',0,2,'2017-07-27 13:19:49.119000',1);
INSERT INTO portunes_identifier VALUES(3090,'Tanımsız kart','9775753',0,2,'2017-07-27 13:19:49.196000',1);
INSERT INTO portunes_identifier VALUES(3091,'Tanımsız kart','4616',0,2,'2017-07-27 13:19:49.273000',1);
INSERT INTO portunes_identifier VALUES(3092,'Tanımsız kart','9045317',0,2,'2017-07-27 13:19:49.350000',1);
INSERT INTO portunes_identifier VALUES(3093,'Tanımsız kart','1314896',0,2,'2017-07-27 13:19:49.426000',1);
INSERT INTO portunes_identifier VALUES(3094,'Tanımsız kart','8538402',0,2,'2017-07-27 13:19:49.504000',1);
INSERT INTO portunes_identifier VALUES(3095,'Tanımsız kart','4213258',0,2,'2017-07-27 13:19:49.580000',1);
INSERT INTO portunes_identifier VALUES(3096,'Tanımsız kart','7601653',0,2,'2017-07-27 13:19:49.733000',1);
INSERT INTO portunes_identifier VALUES(3097,'Tanımsız kart','3279573',0,2,'2017-07-28 08:32:13.901000',1);
INSERT INTO portunes_identifier VALUES(3098,'Tanımsız kart','11668181',0,2,'2017-07-28 08:32:13.978000',1);
INSERT INTO portunes_identifier VALUES(3099,'Tanımsız kart','16252118',0,2,'2017-07-28 08:32:14.278000',1);
INSERT INTO portunes_identifier VALUES(3100,'Tanımsız kart','11926397',0,2,'2017-07-28 08:32:14.355000',1);
INSERT INTO portunes_identifier VALUES(3101,'Tanımsız kart','11184829',0,2,'2017-07-28 08:32:14.737000',1);
INSERT INTO portunes_identifier VALUES(3102,'Tanımsız kart','11344883',0,2,'2017-07-28 08:32:14.813000',1);
INSERT INTO portunes_identifier VALUES(3103,'Tanımsız kart','13285717',0,2,'2017-07-28 08:32:14.890000',1);
INSERT INTO portunes_identifier VALUES(3104,'Tanımsız kart','2971005',0,2,'2017-07-28 08:32:14.967000',1);
INSERT INTO portunes_identifier VALUES(3105,'Tanımsız kart','8912210',0,2,'2017-07-28 08:32:15.349000',1);
INSERT INTO portunes_identifier VALUES(3106,'Tanımsız kart','608810',0,2,'2017-07-28 08:32:35.793000',1);
INSERT INTO portunes_identifier VALUES(3107,'Tanımsız kart','4460609',0,2,'2017-07-28 08:32:35.945000',1);
INSERT INTO portunes_identifier VALUES(3108,'Tanımsız kart','5579925',0,2,'2017-07-28 08:32:36.023000',1);
INSERT INTO portunes_identifier VALUES(3109,'Tanımsız kart','14374783',0,2,'2017-07-28 08:32:36.100000',1);
INSERT INTO portunes_identifier VALUES(3110,'Tanımsız kart','5636087',0,2,'2017-07-28 08:32:36.177000',1);
INSERT INTO portunes_identifier VALUES(3111,'Tanımsız kart','11178666',0,2,'2017-07-28 08:32:36.330000',1);
INSERT INTO portunes_identifier VALUES(3112,'Tanımsız kart','1188932',0,2,'2017-07-28 08:32:36.408000',1);
INSERT INTO portunes_identifier VALUES(3113,'Tanımsız kart','9741461',0,2,'2017-07-28 08:32:36.485000',1);
INSERT INTO portunes_identifier VALUES(3114,'Tanımsız kart','4789577',0,2,'2017-07-28 08:32:36.561000',1);
INSERT INTO portunes_identifier VALUES(3115,'Tanımsız kart','4964215',0,2,'2017-07-28 08:32:36.638000',1);
INSERT INTO portunes_identifier VALUES(3116,'Tanımsız kart','11080340',0,2,'2017-07-28 08:32:36.793000',1);
INSERT INTO portunes_identifier VALUES(3117,'Tanımsız kart','2435072',0,2,'2017-07-28 08:32:36.869000',1);
INSERT INTO portunes_identifier VALUES(3118,'Tanımsız kart','15719351',0,2,'2017-07-28 08:32:36.946000',1);
INSERT INTO portunes_identifier VALUES(3119,'Tanımsız kart','4793412',0,2,'2017-07-28 08:32:37.023000',1);
INSERT INTO portunes_identifier VALUES(3120,'Tanımsız kart','10766994',0,2,'2017-07-28 08:32:37.177000',1);
INSERT INTO portunes_identifier VALUES(3121,'Tanımsız kart','9455908',0,2,'2017-07-28 08:32:37.253000',1);
INSERT INTO portunes_identifier VALUES(3122,'Tanımsız kart','4860233',0,2,'2017-07-28 08:32:37.330000',1);
INSERT INTO portunes_identifier VALUES(3123,'Tanımsız kart','9718058',0,2,'2017-07-28 08:32:37.484000',1);
INSERT INTO portunes_identifier VALUES(3124,'Tanımsız kart','2378001',0,2,'2017-07-28 08:32:37.561000',1);
INSERT INTO portunes_identifier VALUES(3125,'Tanımsız kart','5589322',0,2,'2017-07-28 08:32:37.637000',1);
INSERT INTO portunes_identifier VALUES(3126,'Tanımsız kart','2394410',0,2,'2017-07-28 08:32:37.791000',1);
INSERT INTO portunes_identifier VALUES(3127,'Tanımsız kart','10832458',0,2,'2017-07-28 08:32:37.867000',1);
INSERT INTO portunes_identifier VALUES(3128,'Tanımsız kart','9081426',0,2,'2017-07-28 08:32:38.021000',1);
INSERT INTO portunes_identifier VALUES(3129,'Tanımsız kart','2236996',0,2,'2017-07-28 08:32:38.097000',1);
INSERT INTO portunes_identifier VALUES(3130,'Tanımsız kart','2705700',0,2,'2017-07-28 08:32:38.174000',1);
INSERT INTO portunes_identifier VALUES(3131,'Tanımsız kart','11159844',0,2,'2017-07-28 08:32:38.250000',1);
INSERT INTO portunes_identifier VALUES(3132,'Tanımsız kart','11195732',0,2,'2017-07-28 15:37:17.261000',1);
INSERT INTO portunes_identifier VALUES(3133,'Tanımsız kart','4543817',0,2,'2017-07-28 15:37:17.413000',1);
INSERT INTO portunes_identifier VALUES(3134,'Tanımsız kart','2237472',0,2,'2017-07-28 15:37:17.489000',1);
INSERT INTO portunes_identifier VALUES(3135,'Tanımsız kart','10752069',0,2,'2017-07-28 15:37:17.566000',1);
INSERT INTO portunes_identifier VALUES(3136,'Tanımsız kart','271360',0,2,'2017-07-28 15:37:17.719000',1);
INSERT INTO portunes_identifier VALUES(3137,'Tanımsız kart','34948',0,2,'2017-07-28 15:37:17.796000',1);
INSERT INTO portunes_identifier VALUES(3138,'Tanımsız kart','2312',0,2,'2017-07-28 15:37:17.950000',1);
INSERT INTO portunes_identifier VALUES(3139,'Tanımsız kart','1082432',0,2,'2017-07-28 15:37:18.103000',1);
INSERT INTO portunes_identifier VALUES(3140,'Tanımsız kart','36882',0,2,'2017-07-28 15:37:18.257000',1);
INSERT INTO portunes_identifier VALUES(3141,'Tanımsız kart','16552',0,2,'2017-07-28 15:37:18.334000',1);
INSERT INTO portunes_identifier VALUES(3142,'Tanımsız kart','4458752',0,2,'2017-07-28 15:37:18.564000',1);
INSERT INTO portunes_identifier VALUES(3143,'Tanımsız kart','4202624',0,2,'2017-07-28 15:37:18.641000',1);
INSERT INTO portunes_identifier VALUES(3144,'Tanımsız kart','10545847',0,2,'2017-07-28 15:37:29.197000',1);
INSERT INTO portunes_identifier VALUES(3145,'Tanımsız kart','12047807',0,2,'2017-07-28 15:37:29.933000',1);
INSERT INTO portunes_identifier VALUES(3146,'Tanımsız kart','1965374',0,2,'2017-07-28 15:37:30.009000',1);
INSERT INTO portunes_identifier VALUES(3147,'Tanımsız kart','9720533',0,2,'2017-07-29 06:38:09.008000',1);
INSERT INTO portunes_identifier VALUES(3148,'Tanımsız kart','5548885',0,2,'2017-07-29 06:38:09.394000',1);
INSERT INTO portunes_identifier VALUES(3149,'Tanımsız kart','12234069',0,2,'2017-07-29 06:38:09.471000',1);
INSERT INTO portunes_identifier VALUES(3150,'Tanımsız kart','5417638',0,2,'2017-07-29 06:38:09.549000',1);
INSERT INTO portunes_identifier VALUES(3151,'Tanımsız kart','5589294',0,2,'2017-07-29 06:38:09.626000',1);
INSERT INTO portunes_identifier VALUES(3152,'Tanımsız kart','11356842',0,2,'2017-07-29 06:38:09.703000',1);
INSERT INTO portunes_identifier VALUES(3153,'Tanımsız kart','15553865',0,2,'2017-07-29 06:38:09.780000',1);
INSERT INTO portunes_identifier VALUES(3154,'Tanımsız kart','6993237',0,2,'2017-07-29 06:38:09.933000',1);
INSERT INTO portunes_identifier VALUES(3155,'Tanımsız kart','10840757',0,2,'2017-07-29 06:38:10.318000',1);
INSERT INTO portunes_identifier VALUES(3156,'Tanımsız kart','5592397',0,2,'2017-07-29 06:38:10.396000',1);
INSERT INTO portunes_identifier VALUES(3157,'Tanımsız kart','8999509',0,2,'2017-07-29 06:38:10.548000',1);
INSERT INTO portunes_identifier VALUES(3158,'Tanımsız kart','10528034',0,2,'2017-07-29 06:38:10.625000',1);
INSERT INTO portunes_identifier VALUES(3159,'Tanımsız kart','1222613',0,2,'2017-07-29 06:38:10.954000',1);
INSERT INTO portunes_identifier VALUES(3160,'Tanımsız kart','12021502',0,2,'2017-07-29 06:39:05.203000',1);
INSERT INTO portunes_identifier VALUES(3161,'Tanımsız kart','3923453',0,2,'2017-07-29 06:39:05.281000',1);
INSERT INTO portunes_identifier VALUES(3162,'Tanımsız kart','12418040',0,2,'2017-07-29 06:39:05.358000',1);
INSERT INTO portunes_identifier VALUES(3163,'Tanımsız kart','14012247',0,2,'2017-07-29 06:39:05.434000',1);
INSERT INTO portunes_identifier VALUES(3164,'Tanımsız kart','16740339',0,2,'2017-07-29 06:39:05.511000',1);
INSERT INTO portunes_identifier VALUES(3165,'Tanımsız kart','16734186',0,2,'2017-07-29 06:39:05.589000',1);
INSERT INTO portunes_identifier VALUES(3166,'Tanımsız kart','1198225',0,2,'2017-07-29 06:39:05.665000',1);
INSERT INTO portunes_identifier VALUES(3167,'Tanımsız kart','4887114',0,2,'2017-07-29 06:39:05.742000',1);
INSERT INTO portunes_identifier VALUES(3168,'Tanımsız kart','32841',0,2,'2017-07-29 06:39:05.896000',1);
INSERT INTO portunes_identifier VALUES(3169,'Tanımsız kart','6159359',0,2,'2017-07-29 08:30:52.104000',1);
INSERT INTO portunes_identifier VALUES(3170,'Tanımsız kart','14330730',0,2,'2017-07-29 08:30:52.194000',1);
INSERT INTO portunes_identifier VALUES(3171,'Tanımsız kart','14636353',0,2,'2017-07-29 12:52:08.228000',1);
INSERT INTO portunes_identifier VALUES(3172,'Tanımsız kart','5354922',0,2,'2017-07-29 15:59:24.149000',1);
INSERT INTO portunes_identifier VALUES(3173,'Tanımsız kart','1198408',0,2,'2017-07-29 15:59:24.314000',1);
INSERT INTO portunes_identifier VALUES(3174,'Tanımsız kart','9437770',0,2,'2017-07-29 15:59:26.268000',1);
INSERT INTO portunes_identifier VALUES(3175,'Tanımsız kart','4896087',0,2,'2017-07-29 19:14:39.042000',1);
INSERT INTO portunes_identifier VALUES(3176,'Tanımsız kart','2599587',0,2,'2017-07-29 19:14:41.083000',1);
INSERT INTO portunes_identifier VALUES(3177,'Tanımsız kart','11399159',0,2,'2017-07-29 19:14:41.681000',1);
INSERT INTO portunes_identifier VALUES(3178,'Tanımsız kart','16209835',0,2,'2017-07-29 19:14:41.760000',1);
INSERT INTO portunes_identifier VALUES(3179,'Tanımsız kart','14068373',0,2,'2017-07-29 22:29:38.947000',1);
INSERT INTO portunes_identifier VALUES(3180,'Tanımsız kart','11079753',0,2,'2017-07-29 22:29:39.103000',1);
INSERT INTO portunes_identifier VALUES(3181,'Tanımsız kart','11893367',0,2,'2017-07-30 01:41:11.614000',1);
INSERT INTO portunes_identifier VALUES(3182,'Tanımsız kart','11179173',0,2,'2017-07-30 04:56:23.182000',1);
INSERT INTO portunes_identifier VALUES(3183,'Tanımsız kart','11851178',0,2,'2017-07-30 04:56:23.261000',1);
INSERT INTO portunes_identifier VALUES(3184,'Tanımsız kart','9078921',0,2,'2017-07-30 08:11:22.021000',1);
INSERT INTO portunes_identifier VALUES(3185,'Tanımsız kart','11892053',0,2,'2017-07-30 08:11:22.124000',1);
INSERT INTO portunes_identifier VALUES(3186,'Tanımsız kart','4493896',0,2,'2017-07-30 08:11:22.849000',1);
INSERT INTO portunes_identifier VALUES(3187,'Tanımsız kart','9169851',0,2,'2017-07-30 08:11:22.926000',1);
INSERT INTO portunes_identifier VALUES(3188,'Tanımsız kart','11178645',0,2,'2017-07-30 08:11:23.161000',1);
INSERT INTO portunes_identifier VALUES(3189,'Tanımsız kart','11173205',0,2,'2017-07-30 11:22:15.260000',1);
INSERT INTO portunes_identifier VALUES(3190,'Tanımsız kart','1343620',0,2,'2017-07-30 11:22:16.252000',1);
INSERT INTO portunes_identifier VALUES(3191,'Tanımsız kart','10398847',0,2,'2017-07-30 14:37:35.829000',1);
INSERT INTO portunes_identifier VALUES(3192,'Tanımsız kart','16428027',0,2,'2017-07-30 14:37:36.661000',1);
INSERT INTO portunes_identifier VALUES(3193,'Tanımsız kart','666185',0,2,'2017-07-30 14:37:36.738000',1);
INSERT INTO portunes_identifier VALUES(3194,'Tanımsız kart','1119496',0,2,'2017-07-31 06:52:55.529000',1);
INSERT INTO portunes_identifier VALUES(3195,'Tanımsız kart','9693864',0,2,'2017-07-31 06:52:57.020000',1);
INSERT INTO portunes_identifier VALUES(3196,'Tanımsız kart','6118461',0,2,'2017-07-31 06:53:02.101000',1);
INSERT INTO portunes_identifier VALUES(3197,'Tanımsız kart','12564338',0,2,'2017-07-31 06:53:02.258000',1);
INSERT INTO portunes_identifier VALUES(3198,'Tanımsız kart','16467199',0,2,'2017-07-31 06:53:02.336000',1);
INSERT INTO portunes_identifier VALUES(3199,'Tanımsız kart','4793362',0,2,'2017-07-31 06:53:02.413000',1);
INSERT INTO portunes_identifier VALUES(3200,'Tanımsız kart','10783402',0,2,'2017-07-31 06:53:02.491000',1);
INSERT INTO portunes_identifier VALUES(3201,'Tanımsız kart','11181783',0,2,'2017-07-31 06:53:02.570000',1);
INSERT INTO portunes_identifier VALUES(3202,'Tanımsız kart','7296294',0,2,'2017-07-31 10:07:48.426000',1);
INSERT INTO portunes_identifier VALUES(3203,'Tanımsız kart','8052223',0,2,'2017-07-31 10:07:53.873000',1);
INSERT INTO portunes_identifier VALUES(3204,'Tanımsız kart','3890614',0,2,'2017-07-31 10:07:53.952000',1);
INSERT INTO portunes_identifier VALUES(3205,'Tanımsız kart','12562427',0,2,'2017-07-31 10:07:54.029000',1);
INSERT INTO portunes_identifier VALUES(3206,'Tanımsız kart','15715903',0,2,'2017-07-31 13:19:55.010000',1);
INSERT INTO portunes_identifier VALUES(3207,'Tanımsız kart','5693418',0,2,'2017-07-31 13:19:55.480000',1);
INSERT INTO portunes_identifier VALUES(3208,'Tanımsız kart','5592394',0,2,'2017-07-31 13:19:55.662000',1);
INSERT INTO portunes_identifier VALUES(3209,'Tanımsız kart','14243428',0,2,'2017-07-31 13:19:55.740000',1);
INSERT INTO portunes_identifier VALUES(3210,'Tanımsız kart','5729577',0,2,'2017-07-31 13:19:55.817000',1);
INSERT INTO portunes_identifier VALUES(3211,'Tanımsız kart','5395786',0,2,'2017-07-31 13:19:55.923000',1);
INSERT INTO portunes_identifier VALUES(3212,'Tanımsız kart','10441890',0,2,'2017-07-31 13:19:56.003000',1);
INSERT INTO portunes_identifier VALUES(3213,'Tanımsız kart','2479482',0,2,'2017-07-31 13:19:56.551000',1);
INSERT INTO portunes_identifier VALUES(3214,'Tanımsız kart','9747119',0,2,'2017-07-31 13:19:56.629000',1);
INSERT INTO portunes_identifier VALUES(3215,'Tanımsız kart','7691926',0,2,'2017-07-31 13:19:57.019000',1);
INSERT INTO portunes_identifier VALUES(3216,'Tanımsız kart','9512226',0,2,'2017-07-31 13:19:59.141000',1);
INSERT INTO portunes_identifier VALUES(3217,'Tanımsız kart','2434121',0,2,'2017-07-31 13:19:59.220000',1);
INSERT INTO portunes_identifier VALUES(3218,'Tanımsız kart','11889325',0,2,'2017-07-31 16:35:26.407000',1);
INSERT INTO portunes_identifier VALUES(3219,'Tanımsız kart','14281415',0,2,'2017-07-31 16:35:34.125000',1);
INSERT INTO portunes_identifier VALUES(3220,'Tanımsız kart','5499591',0,2,'2017-07-31 16:35:34.202000',1);
INSERT INTO portunes_identifier VALUES(3221,'Tanımsız kart','4739665',0,2,'2017-07-31 16:35:34.643000',1);
INSERT INTO portunes_identifier VALUES(3222,'Tanımsız kart','5393044',0,2,'2017-07-31 16:35:34.721000',1);
INSERT INTO portunes_identifier VALUES(3223,'Tanımsız kart','15693695',0,2,'2017-07-31 16:35:34.799000',1);
INSERT INTO portunes_identifier VALUES(3224,'Tanımsız kart','11006582',0,2,'2017-07-31 16:35:34.876000',1);
INSERT INTO portunes_identifier VALUES(3225,'Tanımsız kart','1328261',0,2,'2017-07-31 16:35:34.954000',1);
INSERT INTO portunes_identifier VALUES(3226,'Tanımsız kart','5942613',0,2,'2017-07-31 19:50:58.577000',1);
INSERT INTO portunes_identifier VALUES(3227,'Tanımsız kart','5384740',0,2,'2017-07-31 19:51:01.573000',1);
INSERT INTO portunes_identifier VALUES(3228,'Tanımsız kart','6242299',0,2,'2017-07-31 19:51:01.651000',1);
INSERT INTO portunes_identifier VALUES(3229,'Tanımsız kart','11160137',0,2,'2017-07-31 19:51:01.809000',1);
INSERT INTO portunes_identifier VALUES(3230,'Tanımsız kart','8685860',0,2,'2017-07-31 19:51:01.965000',1);
INSERT INTO portunes_identifier VALUES(3231,'Tanımsız kart','5543049',0,2,'2017-07-31 19:51:02.043000',1);
INSERT INTO portunes_identifier VALUES(3232,'Suat Özkorucuklu','2141515',0,1,'2017-08-04 05:38:57.056000',0);
INSERT INTO portunes_identifier VALUES(3233,'Tanımsız kart','16776182',0,2,'2017-08-04 09:14:53.618000',1);
INSERT INTO portunes_identifier VALUES(3234,'Tanımsız kart','11496362',0,2,'2017-08-04 09:14:53.846000',1);
INSERT INTO portunes_identifier VALUES(3235,'Tanımsız kart','3699351',0,2,'2017-08-04 09:14:55.521000',1);
INSERT INTO portunes_identifier VALUES(3236,'Tanımsız kart','10895706',0,2,'2017-08-04 09:14:57.423000',1);
INSERT INTO portunes_identifier VALUES(3237,'Tanımsız kart','11082799',0,2,'2017-08-04 09:15:00.698000',1);
INSERT INTO portunes_identifier VALUES(3238,'Tanımsız kart','16225868',0,2,'2017-08-04 09:15:00.852000',1);
INSERT INTO portunes_identifier VALUES(3239,'Tanımsız kart','16446646',0,2,'2017-08-04 09:15:05.872000',1);
INSERT INTO portunes_identifier VALUES(3240,'Tanımsız kart','15587310',0,2,'2017-08-04 09:15:05.949000',1);
INSERT INTO portunes_identifier VALUES(3241,'Tanımsız kart','8256447',0,2,'2017-08-04 09:15:06.025000',1);
INSERT INTO portunes_identifier VALUES(3242,'Tanımsız kart','15105983',0,2,'2017-08-04 09:15:06.103000',1);
INSERT INTO portunes_identifier VALUES(3243,'Tanımsız kart','14112750',0,2,'2017-08-04 09:15:08.328000',1);
INSERT INTO portunes_identifier VALUES(3244,'Tanımsız kart','16471379',0,2,'2017-08-04 09:15:08.708000',1);
INSERT INTO portunes_identifier VALUES(3245,'Tanımsız kart','14079317',0,2,'2017-08-04 09:15:09.319000',1);
INSERT INTO portunes_identifier VALUES(3246,'Tanımsız kart','14071477',0,2,'2017-08-04 09:15:09.471000',1);
INSERT INTO portunes_identifier VALUES(3247,'Tanımsız kart','9803082',0,2,'2017-08-04 09:15:09.548000',1);
INSERT INTO portunes_identifier VALUES(3248,'Tanımsız kart','10748416',0,2,'2017-08-04 09:15:09.855000',1);
INSERT INTO portunes_identifier VALUES(3249,'Tanımsız kart','6640298',0,2,'2017-08-04 09:15:09.931000',1);
INSERT INTO portunes_identifier VALUES(3250,'Tanımsız kart','11883882',0,2,'2017-08-04 09:15:10.008000',1);
INSERT INTO portunes_identifier VALUES(3251,'Tanımsız kart','5592283',0,2,'2017-08-04 09:15:10.162000',1);
INSERT INTO portunes_identifier VALUES(3252,'Tanımsız kart','11197098',0,2,'2017-08-04 09:15:10.239000',1);
INSERT INTO portunes_identifier VALUES(3253,'Tanımsız kart','15379029',0,2,'2017-08-04 09:15:10.315000',1);
INSERT INTO portunes_identifier VALUES(3254,'Tanımsız kart','9704789',0,2,'2017-08-04 09:15:15.548000',1);
INSERT INTO portunes_identifier VALUES(3255,'Tanımsız kart','12298955',0,2,'2017-08-04 09:15:17.074000',1);
INSERT INTO portunes_identifier VALUES(3256,'Tanımsız kart','4434635',0,2,'2017-08-04 09:15:17.150000',1);
INSERT INTO portunes_identifier VALUES(3257,'Tanımsız kart','7820695',0,2,'2017-08-04 09:15:17.379000',1);
INSERT INTO portunes_identifier VALUES(3258,'Tanımsız kart','1529239',0,2,'2017-08-04 09:15:17.456000',1);
INSERT INTO portunes_identifier VALUES(3259,'Tanımsız kart','9819589',0,2,'2017-08-04 09:15:19.662000',1);
INSERT INTO portunes_identifier VALUES(3260,'Tanımsız kart','9570999',0,2,'2017-08-04 09:15:21.336000',1);
INSERT INTO portunes_identifier VALUES(3261,'Tanımsız kart','12233962',0,2,'2017-08-04 09:15:21.794000',1);
INSERT INTO portunes_identifier VALUES(3262,'Tanımsız kart','11162965',0,2,'2017-08-04 09:15:22.786000',1);
INSERT INTO portunes_identifier VALUES(3263,'Tanımsız kart','567978',0,2,'2017-08-04 09:15:22.863000',1);
INSERT INTO portunes_identifier VALUES(3264,'Tanımsız kart','11162901',0,2,'2017-08-04 09:15:22.939000',1);
INSERT INTO portunes_identifier VALUES(3265,'Tanımsız kart','13219562',0,2,'2017-08-04 09:15:23.244000',1);
INSERT INTO portunes_identifier VALUES(3266,'Tanımsız kart','8561674',0,2,'2017-08-04 09:15:23.472000',1);
INSERT INTO portunes_identifier VALUES(3267,'Tanımsız kart','4739397',0,2,'2017-08-04 09:15:27.518000',1);
INSERT INTO portunes_identifier VALUES(3268,'Tanımsız kart','5261828',0,2,'2017-08-04 09:15:27.595000',1);
INSERT INTO portunes_identifier VALUES(3269,'Tanımsız kart','528962',0,2,'2017-08-04 09:15:27.672000',1);
INSERT INTO portunes_identifier VALUES(3270,'Tanımsız kart','528420',0,2,'2017-08-04 09:15:27.748000',1);
INSERT INTO portunes_identifier VALUES(3271,'Tanımsız kart','1397417',0,2,'2017-08-04 09:15:27.826000',1);
INSERT INTO portunes_identifier VALUES(3272,'Tanımsız kart','2790565',0,2,'2017-08-04 09:15:28.891000',1);
INSERT INTO portunes_identifier VALUES(3273,'Tanımsız kart','5575848',0,2,'2017-08-04 09:15:29.424000',1);
INSERT INTO portunes_identifier VALUES(3274,'Tanımsız kart','1529245',0,2,'2017-08-04 09:15:30.643000',1);
INSERT INTO portunes_identifier VALUES(3275,'Tanımsız kart','8737365',0,2,'2017-08-04 09:15:31.023000',1);
INSERT INTO portunes_identifier VALUES(3276,'Tanımsız kart','619865',0,2,'2017-08-04 09:15:31.633000',1);
INSERT INTO portunes_identifier VALUES(3277,'Tanımsız kart','8779080',0,2,'2017-08-04 09:15:32.167000',1);
INSERT INTO portunes_identifier VALUES(3278,'Tanımsız kart','4846920',0,2,'2017-08-04 09:15:32.243000',1);
INSERT INTO portunes_identifier VALUES(3279,'Tanımsız kart','8946722',0,2,'2017-08-04 09:15:32.473000',1);
INSERT INTO portunes_identifier VALUES(3280,'Tanımsız kart','962093',0,2,'2017-08-04 09:15:33.550000',1);
INSERT INTO portunes_identifier VALUES(3281,'Tanımsız kart','8561994',0,2,'2017-08-04 09:15:33.931000',1);
INSERT INTO portunes_identifier VALUES(3282,'Tanımsız kart','9733285',0,2,'2017-08-04 09:15:34.008000',1);
INSERT INTO portunes_identifier VALUES(3283,'Tanımsız kart','9781889',0,2,'2017-08-04 09:15:34.085000',1);
INSERT INTO portunes_identifier VALUES(3284,'Tanımsız kart','7006946',0,2,'2017-08-04 09:15:34.543000',1);
INSERT INTO portunes_identifier VALUES(3285,'Tanımsız kart','5221024',0,2,'2017-08-04 09:15:35.153000',1);
INSERT INTO portunes_identifier VALUES(3286,'Tanımsız kart','11594518',0,2,'2017-08-04 09:15:37.055000',1);
INSERT INTO portunes_identifier VALUES(3287,'Tanımsız kart','5303062',0,2,'2017-08-04 09:15:37.132000',1);
INSERT INTO portunes_identifier VALUES(3288,'Tanımsız kart','8738133',0,2,'2017-08-04 09:15:37.818000',1);
INSERT INTO portunes_identifier VALUES(3289,'Tanımsız kart','699050',0,2,'2017-08-04 09:15:37.895000',1);
INSERT INTO portunes_identifier VALUES(3290,'Tanımsız kart','12082513',0,2,'2017-08-04 09:15:38.581000',1);
INSERT INTO portunes_identifier VALUES(3291,'Tanımsız kart','11028613',0,2,'2017-08-04 09:15:41.627000',1);
INSERT INTO portunes_identifier VALUES(3292,'Tanımsız kart','4740426',0,2,'2017-08-04 09:15:41.704000',1);
INSERT INTO portunes_identifier VALUES(3293,'Tanımsız kart','5572095',0,2,'2017-08-04 09:15:41.933000',1);
INSERT INTO portunes_identifier VALUES(3294,'Tanımsız kart','11112534',0,2,'2017-08-04 09:15:42.239000',1);
INSERT INTO portunes_identifier VALUES(3295,'Tanımsız kart','13118174',0,2,'2017-08-04 09:15:42.620000',1);
INSERT INTO portunes_identifier VALUES(3296,'Tanımsız kart','11162952',0,2,'2017-08-04 09:15:43.153000',1);
INSERT INTO portunes_identifier VALUES(3297,'Tanımsız kart','5655925',0,2,'2017-08-04 09:15:49.661000',1);
INSERT INTO portunes_identifier VALUES(3298,'Tanımsız kart','5655991',0,2,'2017-08-04 09:15:49.740000',1);
INSERT INTO portunes_identifier VALUES(3299,'Tanımsız kart','1469498',0,2,'2017-08-04 09:15:53.273000',1);
INSERT INTO portunes_identifier VALUES(3300,'Tanımsız kart','5936757',0,2,'2017-08-04 09:15:54.204000',1);
INSERT INTO portunes_identifier VALUES(3301,'Tanımsız kart','13980149',0,2,'2017-08-04 09:15:55.652000',1);
INSERT INTO portunes_identifier VALUES(3302,'Tanımsız kart','16060075',0,2,'2017-08-04 09:15:57.480000',1);
INSERT INTO portunes_identifier VALUES(3303,'Tanımsız kart','11198288',0,2,'2017-08-04 09:15:58.244000',1);
INSERT INTO portunes_identifier VALUES(3304,'Tanımsız kart','2087402',0,2,'2017-08-04 09:16:07.068000',1);
INSERT INTO portunes_identifier VALUES(3305,'Tanımsız kart','16243423',0,2,'2017-08-04 09:16:07.726000',1);
INSERT INTO portunes_identifier VALUES(3306,'Tanımsız kart','6142959',0,2,'2017-08-04 09:16:07.879000',1);
INSERT INTO portunes_identifier VALUES(3307,'Tanımsız kart','15393749',0,2,'2017-08-04 09:16:08.260000',1);
INSERT INTO portunes_identifier VALUES(3308,'Tanımsız kart','4793685',0,2,'2017-08-04 09:16:08.719000',1);
INSERT INTO portunes_identifier VALUES(3309,'Tanımsız kart','10029192',0,2,'2017-08-04 09:16:08.795000',1);
INSERT INTO portunes_identifier VALUES(3310,'Tanımsız kart','14639101',0,2,'2017-08-04 09:16:08.948000',1);
INSERT INTO portunes_identifier VALUES(3311,'Tanımsız kart','7913389',0,2,'2017-08-04 09:16:09.025000',1);
INSERT INTO portunes_identifier VALUES(3312,'Tanımsız kart','16767981',0,2,'2017-08-04 09:16:09.102000',1);
INSERT INTO portunes_identifier VALUES(3313,'Tanımsız kart','8216510',0,2,'2017-08-04 09:16:09.179000',1);
INSERT INTO portunes_identifier VALUES(3314,'Tanımsız kart','9386941',0,2,'2017-08-04 09:16:09.255000',1);
INSERT INTO portunes_identifier VALUES(3315,'Tanımsız kart','5225983',0,2,'2017-08-04 09:16:09.332000',1);
INSERT INTO portunes_identifier VALUES(3316,'Tanımsız kart','16248798',0,2,'2017-08-04 09:16:09.562000',1);
INSERT INTO portunes_identifier VALUES(3317,'Tanımsız kart','7188403',0,2,'2017-08-04 09:16:09.715000',1);
INSERT INTO portunes_identifier VALUES(3318,'Tanımsız kart','4231297',0,2,'2017-08-04 09:16:09.944000',1);
INSERT INTO portunes_identifier VALUES(3319,'Tanımsız kart','5335004',0,2,'2017-08-04 09:16:10.097000',1);
INSERT INTO portunes_identifier VALUES(3320,'Tanımsız kart','1311890',0,2,'2017-08-04 09:16:10.174000',1);
INSERT INTO portunes_identifier VALUES(3321,'Tanımsız kart','9587282',0,2,'2017-08-04 09:16:10.479000',1);
INSERT INTO portunes_identifier VALUES(3322,'Tanımsız kart','5580069',0,2,'2017-08-04 09:16:10.556000',1);
INSERT INTO portunes_identifier VALUES(3323,'Tanımsız kart','15331262',0,2,'2017-08-04 09:16:10.862000',1);
INSERT INTO portunes_identifier VALUES(3324,'Tanımsız kart','16742813',0,2,'2017-08-04 09:16:11.167000',1);
INSERT INTO portunes_identifier VALUES(3325,'Tanımsız kart','11512754',0,2,'2017-08-04 09:16:11.244000',1);
INSERT INTO portunes_identifier VALUES(3326,'Tanımsız kart','13360107',0,2,'2017-08-04 09:16:11.321000',1);
INSERT INTO portunes_identifier VALUES(3327,'Tanımsız kart','16444381',0,2,'2017-08-04 09:16:11.399000',1);
INSERT INTO portunes_identifier VALUES(3328,'Tanımsız kart','13334015',0,2,'2017-08-04 09:16:11.475000',1);
INSERT INTO portunes_identifier VALUES(3329,'Tanımsız kart','2760421',0,2,'2017-08-04 09:16:11.552000',1);
INSERT INTO portunes_identifier VALUES(3330,'Tanımsız kart','16515067',0,2,'2017-08-04 09:16:11.629000',1);
INSERT INTO portunes_identifier VALUES(3331,'Tanımsız kart','14614495',0,2,'2017-08-04 09:16:11.706000',1);
INSERT INTO portunes_identifier VALUES(3332,'Tanımsız kart','2706090',0,2,'2017-08-04 09:16:11.783000',1);
INSERT INTO portunes_identifier VALUES(3333,'Tanımsız kart','8688277',0,2,'2017-08-04 09:16:11.860000',1);
INSERT INTO portunes_identifier VALUES(3334,'Tanımsız kart','4474005',0,2,'2017-08-04 09:16:11.936000',1);
INSERT INTO portunes_identifier VALUES(3335,'Tanımsız kart','14095223',0,2,'2017-08-04 09:16:12.167000',1);
INSERT INTO portunes_identifier VALUES(3336,'Tanımsız kart','16252215',0,2,'2017-08-04 09:16:12.243000',1);
INSERT INTO portunes_identifier VALUES(3337,'Tanımsız kart','15715755',0,2,'2017-08-04 09:16:12.320000',1);
INSERT INTO portunes_identifier VALUES(3338,'Tanımsız kart','2916087',0,2,'2017-08-04 09:16:12.396000',1);
INSERT INTO portunes_identifier VALUES(3339,'Tanımsız kart','1818539',0,2,'2017-08-04 09:16:12.474000',1);
INSERT INTO portunes_identifier VALUES(3340,'Tanımsız kart','16559610',0,2,'2017-08-04 09:16:12.551000',1);
INSERT INTO portunes_identifier VALUES(3341,'Tanımsız kart','16774575',0,2,'2017-08-04 09:16:12.627000',1);
INSERT INTO portunes_identifier VALUES(3342,'Tanımsız kart','12181247',0,2,'2017-08-04 09:16:12.704000',1);
INSERT INTO portunes_identifier VALUES(3343,'Tanımsız kart','14146815',0,2,'2017-08-04 09:16:12.781000',1);
INSERT INTO portunes_identifier VALUES(3344,'Tanımsız kart','4970661',0,2,'2017-08-04 09:16:12.935000',1);
INSERT INTO portunes_identifier VALUES(3345,'Tanımsız kart','12053358',0,2,'2017-08-04 09:16:13.087000',1);
INSERT INTO portunes_identifier VALUES(3346,'Tanımsız kart','2367530',0,2,'2017-08-04 09:16:13.242000',1);
INSERT INTO portunes_identifier VALUES(3347,'Tanımsız kart','2695332',0,2,'2017-08-04 09:16:13.319000',1);
INSERT INTO portunes_identifier VALUES(3348,'Tanımsız kart','6285245',0,2,'2017-08-04 09:16:13.395000',1);
INSERT INTO portunes_identifier VALUES(3349,'Tanımsız kart','1134865',0,2,'2017-08-04 09:16:13.548000',1);
INSERT INTO portunes_identifier VALUES(3350,'Tanımsız kart','9521322',0,2,'2017-08-04 09:16:13.626000',1);
INSERT INTO portunes_identifier VALUES(3351,'Tanımsız kart','12041695',0,2,'2017-08-04 09:16:13.703000',1);
INSERT INTO portunes_identifier VALUES(3352,'Tanımsız kart','3930099',0,2,'2017-08-04 09:16:13.780000',1);
INSERT INTO portunes_identifier VALUES(3353,'Tanımsız kart','12580858',0,2,'2017-08-04 09:16:13.856000',1);
INSERT INTO portunes_identifier VALUES(3354,'Tanımsız kart','6150141',0,2,'2017-08-04 09:16:13.933000',1);
INSERT INTO portunes_identifier VALUES(3355,'Tanımsız kart','16433015',0,2,'2017-08-04 09:16:14.011000',1);
INSERT INTO portunes_identifier VALUES(3356,'Tanımsız kart','12418039',0,2,'2017-08-04 09:16:14.088000',1);
INSERT INTO portunes_identifier VALUES(3357,'Tanımsız kart','559241',0,2,'2017-08-04 09:16:14.165000',1);
INSERT INTO portunes_identifier VALUES(3358,'Tanımsız kart','2394793',0,2,'2017-08-04 09:16:14.318000',1);
INSERT INTO portunes_identifier VALUES(3359,'Tanımsız kart','9603413',0,2,'2017-08-04 09:16:14.395000',1);
INSERT INTO portunes_identifier VALUES(3360,'Tanımsız kart','8669321',0,2,'2017-08-04 09:16:14.472000',1);
INSERT INTO portunes_identifier VALUES(3361,'Tanımsız kart','9146914',0,2,'2017-08-04 09:16:14.930000',1);
INSERT INTO portunes_identifier VALUES(3362,'Tanımsız kart','8537156',0,2,'2017-08-04 09:16:15.007000',1);
INSERT INTO portunes_identifier VALUES(3363,'Tanımsız kart','12320425',0,2,'2017-08-04 09:16:15.161000',1);
INSERT INTO portunes_identifier VALUES(3364,'Tanımsız kart','10495141',0,2,'2017-08-04 09:16:15.315000',1);
INSERT INTO portunes_identifier VALUES(3365,'Tanımsız kart','11992251',0,2,'2017-08-04 09:16:15.392000',1);
INSERT INTO portunes_identifier VALUES(3366,'Tanımsız kart','16771757',0,2,'2017-08-04 15:34:32.546000',1);
INSERT INTO portunes_identifier VALUES(3367,'Tanımsız kart','7330675',0,2,'2017-08-04 15:34:33.156000',1);
INSERT INTO portunes_identifier VALUES(3368,'Tanımsız kart','4106882',0,2,'2017-08-04 15:34:34.326000',1);
INSERT INTO portunes_identifier VALUES(3369,'Tanımsız kart','5256468',0,2,'2017-08-04 15:34:35.013000',1);
INSERT INTO portunes_identifier VALUES(3370,'Tanımsız kart','5581481',0,2,'2017-08-04 15:34:36.688000',1);
INSERT INTO portunes_identifier VALUES(3371,'Tanımsız kart','2396500',0,2,'2017-08-04 15:34:36.764000',1);
INSERT INTO portunes_identifier VALUES(3372,'Tanımsız kart','16120623',0,2,'2017-08-04 15:34:39.603000',1);
INSERT INTO portunes_identifier VALUES(3373,'Tanımsız kart','12500983',0,2,'2017-08-04 15:34:39.832000',1);
INSERT INTO portunes_identifier VALUES(3374,'Tanımsız kart','6115837',0,2,'2017-08-04 15:34:39.985000',1);
INSERT INTO portunes_identifier VALUES(3375,'Tanımsız kart','9681592',0,2,'2017-08-05 09:44:28.706000',1);
INSERT INTO portunes_identifier VALUES(3376,'Tanımsız kart','10786084',0,2,'2017-08-05 09:44:31.396000',1);
INSERT INTO portunes_identifier VALUES(3377,'Tanımsız kart','4760212',0,2,'2017-08-05 09:44:32.943000',1);
INSERT INTO portunes_identifier VALUES(3378,'Tanımsız kart','14609845',0,2,'2017-08-05 09:44:33.021000',1);
INSERT INTO portunes_identifier VALUES(3379,'Tanımsız kart','6257560',0,2,'2017-08-05 09:44:33.099000',1);
INSERT INTO portunes_identifier VALUES(3380,'Tanımsız kart','11178642',0,2,'2017-08-05 09:44:33.726000',1);
INSERT INTO portunes_identifier VALUES(3381,'Tanımsız kart','4792866',0,2,'2017-08-05 09:44:33.804000',1);
INSERT INTO portunes_identifier VALUES(3382,'Tanımsız kart','9699337',0,2,'2017-08-05 09:44:34.196000',1);
INSERT INTO portunes_identifier VALUES(3383,'Tanımsız kart','11530174',0,2,'2017-08-05 09:44:34.275000',1);
INSERT INTO portunes_identifier VALUES(3384,'Tanımsız kart','14633850',0,2,'2017-08-05 09:44:34.430000',1);
INSERT INTO portunes_identifier VALUES(3385,'Tanımsız kart','1188936',0,2,'2017-08-05 09:44:34.584000',1);
INSERT INTO portunes_identifier VALUES(3386,'Tanımsız kart','2236689',0,2,'2017-08-05 09:44:34.836000',1);
INSERT INTO portunes_identifier VALUES(3387,'Tanımsız kart','16078747',0,2,'2017-08-05 11:29:13.933000',1);
INSERT INTO portunes_identifier VALUES(3388,'Tanımsız kart','5523748',0,2,'2017-08-05 12:21:50.944000',1);
INSERT INTO portunes_identifier VALUES(3389,'Tanımsız kart','4498596',0,2,'2017-08-05 12:21:51.022000',1);
INSERT INTO portunes_identifier VALUES(3390,'Tanımsız kart','8997029',0,2,'2017-08-05 12:21:51.100000',1);
INSERT INTO portunes_identifier VALUES(3391,'Tanımsız kart','16732859',0,2,'2017-08-05 12:21:51.178000',1);
INSERT INTO portunes_identifier VALUES(3392,'Tanımsız kart','9507089',0,2,'2017-08-05 15:11:33.512000',1);
INSERT INTO portunes_identifier VALUES(3393,'Tanımsız kart','9587026',0,2,'2017-08-05 15:11:33.590000',1);
INSERT INTO portunes_identifier VALUES(3394,'Tanımsız kart','4883524',0,2,'2017-08-05 15:11:33.668000',1);
INSERT INTO portunes_identifier VALUES(3395,'Tanımsız kart','2236964',0,2,'2017-08-05 19:51:30.144000',1);
INSERT INTO portunes_identifier VALUES(3396,'Tanımsız kart','5383236',0,2,'2017-08-05 19:51:30.688000',1);
INSERT INTO portunes_identifier VALUES(3397,'Tanımsız kart','15495891',0,2,'2017-08-06 01:18:08.266000',1);
INSERT INTO portunes_identifier VALUES(3398,'Tanımsız kart','8671241',0,2,'2017-08-06 02:51:26.455000',1);
INSERT INTO portunes_identifier VALUES(3399,'Tanımsız kart','1198373',0,2,'2017-08-06 07:44:06.826000',1);
INSERT INTO portunes_identifier VALUES(3400,'Tanımsız kart','557344',0,2,'2017-08-06 07:44:06.904000',1);
INSERT INTO portunes_identifier VALUES(3401,'Tanımsız kart','9507492',0,2,'2017-08-06 07:44:06.983000',1);
INSERT INTO portunes_identifier VALUES(3402,'Tanımsız kart','11162185',0,2,'2017-08-06 07:44:07.062000',1);
INSERT INTO portunes_identifier VALUES(3403,'Tanımsız kart','73036',0,2,'2017-08-06 07:44:07.244000',1);
INSERT INTO portunes_identifier VALUES(3404,'Tanımsız kart','14330541',0,2,'2017-08-06 07:44:07.793000',1);
INSERT INTO portunes_identifier VALUES(3405,'Tanımsız kart','2697545',0,2,'2017-08-06 07:44:07.951000',1);
INSERT INTO portunes_identifier VALUES(3406,'Tanımsız kart','9786537',0,2,'2017-08-06 07:44:08.029000',1);
INSERT INTO portunes_identifier VALUES(3407,'Tanımsız kart','5411413',0,2,'2017-08-06 07:44:08.107000',1);
INSERT INTO portunes_identifier VALUES(3408,'Tanımsız kart','11084330',0,2,'2017-08-06 07:44:08.184000',1);
INSERT INTO portunes_identifier VALUES(3409,'Tanımsız kart','2376868',0,2,'2017-08-06 07:44:08.263000',1);
INSERT INTO portunes_identifier VALUES(3410,'Tanımsız kart','278536',0,2,'2017-08-06 07:44:09.046000',1);
INSERT INTO portunes_identifier VALUES(3411,'Tanımsız kart','13984942',0,2,'2017-08-06 07:44:09.203000',1);
INSERT INTO portunes_identifier VALUES(3412,'Tanımsız kart','15377627',0,2,'2017-08-06 07:44:09.281000',1);
INSERT INTO portunes_identifier VALUES(3413,'Tanımsız kart','8652928',0,2,'2017-08-06 07:44:14.855000',1);
INSERT INTO portunes_identifier VALUES(3414,'Tanımsız kart','294946',0,2,'2017-08-06 07:44:14.934000',1);
INSERT INTO portunes_identifier VALUES(3415,'Tanımsız kart','1343624',0,2,'2017-08-06 07:44:15.560000',1);
INSERT INTO portunes_identifier VALUES(3416,'Tanımsız kart','11447087',0,2,'2017-08-06 07:44:16.426000',1);
INSERT INTO portunes_identifier VALUES(3417,'Tanımsız kart','5583370',0,2,'2017-08-06 07:44:19.091000',1);
INSERT INTO portunes_identifier VALUES(3418,'Tanımsız kart','4729685',0,2,'2017-08-06 07:44:19.168000',1);
INSERT INTO portunes_identifier VALUES(3419,'Tanımsız kart','4958926',0,2,'2017-08-06 07:44:19.560000',1);
INSERT INTO portunes_identifier VALUES(3420,'Tanımsız kart','11028817',0,2,'2017-08-06 07:44:19.796000',1);
INSERT INTO portunes_identifier VALUES(3421,'Tanımsız kart','10786132',0,2,'2017-08-06 07:44:20.187000',1);
INSERT INTO portunes_identifier VALUES(3422,'Tanımsız kart','2393252',0,2,'2017-08-06 07:44:22.068000',1);
INSERT INTO portunes_identifier VALUES(3423,'Tanımsız kart','34832',0,2,'2017-08-06 07:44:22.380000',1);
INSERT INTO portunes_identifier VALUES(3424,'Tanımsız kart','4868394',0,2,'2017-08-06 07:44:22.588000',1);
INSERT INTO portunes_identifier VALUES(3425,'Tanımsız kart','11179348',0,2,'2017-08-06 07:44:22.668000',1);
INSERT INTO portunes_identifier VALUES(3426,'Tanımsız kart','4870826',0,2,'2017-08-06 07:44:22.902000',1);
INSERT INTO portunes_identifier VALUES(3427,'Tanımsız kart','1397056',0,2,'2017-08-06 07:44:23.030000',1);
INSERT INTO portunes_identifier VALUES(3428,'Tanımsız kart','13068156',0,2,'2017-08-06 07:44:23.265000',1);
INSERT INTO portunes_identifier VALUES(3429,'Tanımsız kart','10410828',0,2,'2017-08-06 09:54:40.103000',1);
INSERT INTO portunes_identifier VALUES(3430,'Tanımsız kart','11728037',0,2,'2017-08-06 09:54:40.181000',1);
INSERT INTO portunes_identifier VALUES(3431,'Tanımsız kart','13970069',0,2,'2017-08-06 12:04:39.043000',1);
INSERT INTO portunes_identifier VALUES(3432,'Tanımsız kart','16426081',0,2,'2017-08-06 12:04:39.792000',1);
INSERT INTO portunes_identifier VALUES(3433,'Tanımsız kart','14669679',0,2,'2017-08-06 12:04:40.155000',1);
INSERT INTO portunes_identifier VALUES(3434,'Tanımsız kart','15559611',0,2,'2017-08-06 16:25:16.678000',1);
INSERT INTO portunes_identifier VALUES(3435,'Tanımsız kart','5417621',0,2,'2017-08-06 16:25:16.757000',1);
INSERT INTO portunes_identifier VALUES(3436,'Tanımsız kart','7777715',0,2,'2017-08-06 16:25:17.088000',1);
INSERT INTO portunes_identifier VALUES(3437,'Tanımsız kart','12016371',0,2,'2017-08-06 16:25:17.244000',1);
INSERT INTO portunes_identifier VALUES(3438,'Tanımsız kart','16709502',0,2,'2017-08-06 18:35:34.088000',1);
INSERT INTO portunes_identifier VALUES(3439,'Tanımsız kart','1198226',0,2,'2017-08-06 18:35:34.480000',1);
INSERT INTO portunes_identifier VALUES(3440,'Tanımsız kart','8669329',0,2,'2017-08-06 18:35:34.558000',1);
INSERT INTO portunes_identifier VALUES(3441,'Tanımsız kart','5411986',0,2,'2017-08-06 18:35:34.636000',1);
INSERT INTO portunes_identifier VALUES(3442,'Tanımsız kart','5579946',0,2,'2017-08-06 18:35:34.948000',1);
INSERT INTO portunes_identifier VALUES(3443,'Tanımsız kart','16252605',0,2,'2017-08-06 18:35:35.104000',1);
INSERT INTO portunes_identifier VALUES(3444,'Tanımsız kart','5941842',0,2,'2017-08-06 20:45:34.191000',1);
INSERT INTO portunes_identifier VALUES(3445,'Tanımsız kart','13412022',0,2,'2017-08-06 22:54:10.882000',1);
INSERT INTO portunes_identifier VALUES(3446,'Tanımsız kart','8400039',0,2,'2017-08-06 22:54:11.038000',1);
INSERT INTO portunes_identifier VALUES(3447,'Tanımsız kart','12037503',0,2,'2017-08-06 22:54:11.370000',1);
INSERT INTO portunes_identifier VALUES(3448,'Tanımsız kart','11400663',0,2,'2017-08-06 22:54:11.448000',1);
INSERT INTO portunes_identifier VALUES(3449,'Tanımsız kart','11097506',0,2,'2017-08-07 01:01:51.212000',1);
INSERT INTO portunes_identifier VALUES(3450,'Tanımsız kart','11359562',0,2,'2017-08-07 01:01:51.370000',1);
INSERT INTO portunes_identifier VALUES(3451,'Tanımsız kart','4893330',0,2,'2017-08-07 01:01:51.448000',1);
INSERT INTO portunes_identifier VALUES(3452,'Tanımsız kart','2997229',0,2,'2017-08-07 01:01:52.094000',1);
INSERT INTO portunes_identifier VALUES(3453,'Tanımsız kart','12232010',0,2,'2017-08-07 03:10:11.846000',1);
INSERT INTO portunes_identifier VALUES(3454,'Tanımsız kart','15395498',0,2,'2017-08-07 03:10:11.924000',1);
INSERT INTO portunes_identifier VALUES(3455,'Tanımsız kart','10037615',0,2,'2017-08-07 03:10:12.003000',1);
INSERT INTO portunes_identifier VALUES(3456,'Tanımsız kart','15289045',0,2,'2017-08-07 03:10:12.081000',1);
INSERT INTO portunes_identifier VALUES(3457,'Tanımsız kart','11195730',0,2,'2017-08-07 03:10:12.238000',1);
INSERT INTO portunes_identifier VALUES(3458,'Tanımsız kart','13986389',0,2,'2017-08-07 03:10:12.316000',1);
INSERT INTO portunes_identifier VALUES(3459,'Tanımsız kart','11184492',0,2,'2017-08-07 03:10:12.393000',1);
INSERT INTO portunes_identifier VALUES(3460,'Tanımsız kart','16082153',0,2,'2017-08-07 03:10:12.471000',1);
INSERT INTO portunes_identifier VALUES(3461,'Tanımsız kart','11177996',0,2,'2017-08-07 03:10:12.548000',1);
INSERT INTO portunes_identifier VALUES(3462,'Tanımsız kart','10133505',0,2,'2017-08-07 03:10:12.627000',1);
INSERT INTO portunes_identifier VALUES(3463,'Tanımsız kart','11162794',0,2,'2017-08-07 05:20:14.803000',1);
INSERT INTO portunes_identifier VALUES(3464,'Tanımsız kart','5682859',0,2,'2017-08-07 05:20:14.881000',1);
INSERT INTO portunes_identifier VALUES(3465,'Tanımsız kart','2401426',0,2,'2017-08-07 05:20:15.291000',1);
INSERT INTO portunes_identifier VALUES(3466,'Tanımsız kart','2429605',0,2,'2017-08-07 05:20:15.369000',1);
INSERT INTO portunes_identifier VALUES(3467,'Tanımsız kart','10768970',0,2,'2017-08-07 05:20:15.447000',1);
INSERT INTO portunes_identifier VALUES(3468,'Tanımsız kart','346773',0,2,'2017-08-07 07:30:32.491000',1);
INSERT INTO portunes_identifier VALUES(3469,'Tanımsız kart','16481519',0,2,'2017-08-07 07:30:33.034000',1);
INSERT INTO portunes_identifier VALUES(3470,'Tanımsız kart','12507863',0,2,'2017-08-07 07:30:33.112000',1);
INSERT INTO portunes_identifier VALUES(3471,'Tanımsız kart','9786698',0,2,'2017-08-07 09:40:46.747000',1);
INSERT INTO portunes_identifier VALUES(3472,'Tanımsız kart','11227474',0,2,'2017-08-07 09:40:46.825000',1);
INSERT INTO portunes_identifier VALUES(3473,'Tanımsız kart','4106934',0,2,'2017-08-07 09:40:47.717000',1);
INSERT INTO portunes_identifier VALUES(3474,'Tanımsız kart','16214701',0,2,'2017-08-07 11:50:45.390000',1);
INSERT INTO portunes_identifier VALUES(3475,'Tanımsız kart','5286548',0,2,'2017-08-07 11:50:45.727000',1);
INSERT INTO portunes_identifier VALUES(3476,'Tanımsız kart','10627621',0,2,'2017-08-07 11:50:46.039000',1);
INSERT INTO portunes_identifier VALUES(3477,'Tanımsız kart','13245794',0,2,'2017-08-07 11:50:46.352000',1);
INSERT INTO portunes_identifier VALUES(3478,'Tanımsız kart','10782552',0,2,'2017-08-07 11:50:46.430000',1);
INSERT INTO portunes_identifier VALUES(3479,'Tanımsız kart','16759767',0,2,'2017-08-07 11:50:47.128000',1);
INSERT INTO portunes_identifier VALUES(3480,'Tanımsız kart','5614462',0,2,'2017-08-07 11:50:47.285000',1);
INSERT INTO portunes_identifier VALUES(3481,'Tanımsız kart','5378706',0,2,'2017-08-07 14:00:44.958000',1);
INSERT INTO portunes_identifier VALUES(3482,'Tanımsız kart','14249301',0,2,'2017-08-07 14:00:45.035000',1);
INSERT INTO portunes_identifier VALUES(3483,'Tanımsız kart','5548626',0,2,'2017-08-07 14:00:45.191000',1);
INSERT INTO portunes_identifier VALUES(3484,'Tanımsız kart','4571050',0,2,'2017-08-07 14:00:46.350000',1);
INSERT INTO portunes_identifier VALUES(3485,'Tanımsız kart','11164896',0,2,'2017-08-07 16:11:05.061000',1);
INSERT INTO portunes_identifier VALUES(3486,'Tanımsız kart','11180713',0,2,'2017-08-07 16:11:05.139000',1);
INSERT INTO portunes_identifier VALUES(3487,'Tanımsız kart','11163978',0,2,'2017-08-07 16:11:05.217000',1);
INSERT INTO portunes_identifier VALUES(3488,'Tanımsız kart','5581482',0,2,'2017-08-07 16:11:05.374000',1);
INSERT INTO portunes_identifier VALUES(3489,'Tanımsız kart','12495999',0,2,'2017-08-07 16:11:06.215000',1);
INSERT INTO portunes_identifier VALUES(3490,'Tanımsız kart','11183268',0,2,'2017-08-07 17:13:11.810000',1);
INSERT INTO portunes_identifier VALUES(3491,'Tanımsız kart','1118473',0,2,'2017-08-07 17:13:12.132000',1);
INSERT INTO portunes_identifier VALUES(3492,'Tanımsız kart','8950357',0,2,'2017-08-07 17:13:12.209000',1);
INSERT INTO portunes_identifier VALUES(3493,'Tanımsız kart','12539367',0,2,'2017-08-07 17:13:12.286000',1);
INSERT INTO portunes_identifier VALUES(3494,'Tanımsız kart','9775434',0,2,'2017-08-07 18:21:22.733000',1);
INSERT INTO portunes_identifier VALUES(3495,'Tanımsız kart','11883733',0,2,'2017-08-07 18:21:22.811000',1);
INSERT INTO portunes_identifier VALUES(3496,'Tanımsız kart','9786533',0,2,'2017-08-07 18:21:22.968000',1);
INSERT INTO portunes_identifier VALUES(3497,'Tanımsız kart','11179442',0,2,'2017-08-07 18:21:23.046000',1);
INSERT INTO portunes_identifier VALUES(3498,'Tanımsız kart','13915477',0,2,'2017-08-07 18:21:23.203000',1);
INSERT INTO portunes_identifier VALUES(3499,'Tanımsız kart','2656392',0,2,'2017-08-07 18:21:23.848000',1);
INSERT INTO portunes_identifier VALUES(3500,'Tanımsız kart','5594074',0,2,'2017-08-07 20:31:32.264000',1);
INSERT INTO portunes_identifier VALUES(3501,'Tanımsız kart','11359530',0,2,'2017-08-07 20:31:32.342000',1);
INSERT INTO portunes_identifier VALUES(3502,'Tanımsız kart','5941589',0,2,'2017-08-07 20:31:32.420000',1);
INSERT INTO portunes_identifier VALUES(3503,'Tanımsız kart','12244394',0,2,'2017-08-07 20:31:32.576000',1);
INSERT INTO portunes_identifier VALUES(3504,'Tanımsız kart','14069098',0,2,'2017-08-07 20:31:32.733000',1);
INSERT INTO portunes_identifier VALUES(3505,'Tanımsız kart','10752585',0,2,'2017-08-07 20:31:33.299000',1);
INSERT INTO portunes_identifier VALUES(3506,'Tanımsız kart','11358548',0,2,'2017-08-07 22:41:30.235000',1);
INSERT INTO portunes_identifier VALUES(3507,'Tanımsız kart','11105727',0,2,'2017-08-07 22:41:30.471000',1);
INSERT INTO portunes_identifier VALUES(3508,'Tanımsız kart','10834602',0,2,'2017-08-07 22:41:30.628000',1);
INSERT INTO portunes_identifier VALUES(3509,'Tanımsız kart','8256249',0,2,'2017-08-07 22:41:31.351000',1);
INSERT INTO portunes_identifier VALUES(3510,'Tanımsız kart','11171233',0,2,'2017-08-08 00:49:12.014000',1);
INSERT INTO portunes_identifier VALUES(3511,'Tanımsız kart','1403716',0,2,'2017-08-08 00:49:12.171000',1);
INSERT INTO portunes_identifier VALUES(3512,'Tanımsız kart','5958229',0,2,'2017-08-08 00:49:12.249000',1);
INSERT INTO portunes_identifier VALUES(3513,'Tanımsız kart','14326509',0,2,'2017-08-08 00:49:12.328000',1);
INSERT INTO portunes_identifier VALUES(3514,'Tanımsız kart','5547351',0,2,'2017-08-08 00:49:12.405000',1);
INSERT INTO portunes_identifier VALUES(3515,'Tanımsız kart','12361730',0,2,'2017-08-08 00:49:12.484000',1);
INSERT INTO portunes_identifier VALUES(3516,'Tanımsız kart','11161744',0,2,'2017-08-08 00:49:12.562000',1);
INSERT INTO portunes_identifier VALUES(3517,'Tanımsız kart','5592427',0,2,'2017-08-08 00:49:12.719000',1);
INSERT INTO portunes_identifier VALUES(3518,'Tanımsız kart','11229525',0,2,'2017-08-08 00:49:12.797000',1);
INSERT INTO portunes_identifier VALUES(3519,'Tanımsız kart','16225335',0,2,'2017-08-08 00:49:13.285000',1);
INSERT INTO portunes_identifier VALUES(3520,'Tanımsız kart','11203401',0,2,'2017-08-08 02:59:25.499000',1);
INSERT INTO portunes_identifier VALUES(3521,'Tanımsız kart','11085098',0,2,'2017-08-08 02:59:25.578000',1);
INSERT INTO portunes_identifier VALUES(3522,'Tanımsız kart','11348329',0,2,'2017-08-08 02:59:25.656000',1);
INSERT INTO portunes_identifier VALUES(3523,'Tanımsız kart','10835306',0,2,'2017-08-08 05:09:27.266000',1);
INSERT INTO portunes_identifier VALUES(3524,'Tanımsız kart','14068393',0,2,'2017-08-08 05:09:27.344000',1);
INSERT INTO portunes_identifier VALUES(3525,'Tanımsız kart','11196762',0,2,'2017-08-08 05:09:27.422000',1);
INSERT INTO portunes_identifier VALUES(3526,'Tanımsız kart','11179336',0,2,'2017-08-08 05:09:27.499000',1);
INSERT INTO portunes_identifier VALUES(3527,'Tanımsız kart','6258367',0,2,'2017-08-08 05:09:28.147000',1);
INSERT INTO portunes_identifier VALUES(3528,'Tanımsız kart','1082516',0,2,'2017-08-08 05:09:28.225000',1);
INSERT INTO portunes_identifier VALUES(3529,'Tanımsız kart','5581514',0,2,'2017-08-08 07:18:44.877000',1);
INSERT INTO portunes_identifier VALUES(3530,'Tanımsız kart','10923348',0,2,'2017-08-08 07:18:44.956000',1);
INSERT INTO portunes_identifier VALUES(3531,'Tanımsız kart','5614164',0,2,'2017-08-08 07:18:45.033000',1);
INSERT INTO portunes_identifier VALUES(3532,'Tanımsız kart','12033278',0,2,'2017-08-08 07:18:46.944000',1);
INSERT INTO portunes_identifier VALUES(3533,'Tanımsız kart','16207806',0,2,'2017-08-08 07:18:47.022000',1);
INSERT INTO portunes_identifier VALUES(3534,'Tanımsız kart','6968649',0,2,'2017-08-08 09:27:33.867000',1);
INSERT INTO portunes_identifier VALUES(3535,'Tanımsız kart','9590101',0,2,'2017-08-08 09:27:33.944000',1);
INSERT INTO portunes_identifier VALUES(3536,'Tanımsız kart','13618621',0,2,'2017-08-08 09:27:34.101000',1);
INSERT INTO portunes_identifier VALUES(3537,'Tanımsız kart','11227733',0,2,'2017-08-08 09:27:34.258000',1);
INSERT INTO portunes_identifier VALUES(3538,'Tanımsız kart','11187541',0,2,'2017-08-08 09:27:34.336000',1);
INSERT INTO portunes_identifier VALUES(3539,'Tanımsız kart','9454685',0,2,'2017-08-08 09:27:34.414000',1);
INSERT INTO portunes_identifier VALUES(3540,'Tanımsız kart','1247434',0,2,'2017-08-08 09:27:34.492000',1);
INSERT INTO portunes_identifier VALUES(3541,'Tanımsız kart','6283131',0,2,'2017-08-08 09:27:35.922000',1);
INSERT INTO portunes_identifier VALUES(3542,'Tanımsız kart','15395835',0,2,'2017-08-08 09:27:36',1);
INSERT INTO portunes_identifier VALUES(3543,'Tanımsız kart','16774831',0,2,'2017-08-08 09:27:36.078000',1);
INSERT INTO portunes_identifier VALUES(3544,'Tanımsız kart','11885226',0,2,'2017-08-08 11:37:27.581000',1);
INSERT INTO portunes_identifier VALUES(3545,'Tanımsız kart','11097682',0,2,'2017-08-08 11:37:27.739000',1);
INSERT INTO portunes_identifier VALUES(3546,'Tanımsız kart','6629716',0,2,'2017-08-08 11:37:27.895000',1);
INSERT INTO portunes_identifier VALUES(3547,'Tanımsız kart','5597860',0,2,'2017-08-08 11:37:27.973000',1);
INSERT INTO portunes_identifier VALUES(3548,'Tanımsız kart','11971243',0,2,'2017-08-08 11:37:28.051000',1);
INSERT INTO portunes_identifier VALUES(3549,'Tanımsız kart','11163434',0,2,'2017-08-08 11:37:28.130000',1);
INSERT INTO portunes_identifier VALUES(3550,'Tanımsız kart','559177',0,2,'2017-08-08 13:47:46.492000',1);
INSERT INTO portunes_identifier VALUES(3551,'Tanımsız kart','5589653',0,2,'2017-08-08 13:47:46.674000',1);
INSERT INTO portunes_identifier VALUES(3552,'Tanımsız kart','11102797',0,2,'2017-08-08 13:47:46.752000',1);
INSERT INTO portunes_identifier VALUES(3553,'Tanımsız kart','4802901',0,2,'2017-08-08 13:47:47.867000',1);
INSERT INTO portunes_identifier VALUES(3554,'Tanımsız kart','676388',0,2,'2017-08-08 13:47:48.023000',1);
INSERT INTO portunes_identifier VALUES(3555,'Tanımsız kart','1386641',0,2,'2017-08-14 06:47:46.215000',1);
INSERT INTO portunes_identifier VALUES(3556,'Tanımsız kart','11179710',0,2,'2017-08-14 06:47:46.292000',1);
INSERT INTO portunes_identifier VALUES(3557,'Tanımsız kart','11382488',0,2,'2017-08-14 06:47:46.745000',1);
INSERT INTO portunes_identifier VALUES(3558,'Tanımsız kart','9783890',0,2,'2017-08-14 06:47:46.938000',1);
INSERT INTO portunes_identifier VALUES(3559,'Tanımsız kart','12582911',0,2,'2017-08-14 06:47:47.639000',1);
INSERT INTO portunes_identifier VALUES(3560,'Tanımsız kart','10781000',0,2,'2017-08-14 06:47:48.249000',1);
INSERT INTO portunes_identifier VALUES(3561,'Tanımsız kart','7056267',0,2,'2017-08-14 06:47:48.982000',1);
INSERT INTO portunes_identifier VALUES(3562,'Tanımsız kart','8089597',0,2,'2017-08-14 06:47:49.149000',1);
INSERT INTO portunes_identifier VALUES(3563,'Tanımsız kart','14595798',0,2,'2017-08-14 06:47:50.073000',1);
INSERT INTO portunes_identifier VALUES(3564,'Tanımsız kart','16736246',0,2,'2017-08-14 06:47:50.149000',1);
INSERT INTO portunes_identifier VALUES(3565,'Tanımsız kart','8068085',0,2,'2017-08-14 06:47:52.581000',1);
INSERT INTO portunes_identifier VALUES(3566,'Tanımsız kart','9140916',0,2,'2017-08-14 06:47:53.192000',1);
INSERT INTO portunes_identifier VALUES(3567,'Tanımsız kart','6084602',0,2,'2017-08-14 06:47:53.269000',1);
INSERT INTO portunes_identifier VALUES(3568,'Tanımsız kart','9615666',0,2,'2017-08-14 06:47:53.346000',1);
INSERT INTO portunes_identifier VALUES(3569,'Tanımsız kart','6282243',0,2,'2017-08-14 06:47:53.423000',1);
INSERT INTO portunes_identifier VALUES(3570,'Tanımsız kart','11820842',0,2,'2017-08-14 06:47:53.500000',1);
INSERT INTO portunes_identifier VALUES(3571,'Tanımsız kart','11358869',0,2,'2017-08-14 06:47:53.805000',1);
INSERT INTO portunes_identifier VALUES(3572,'Tanımsız kart','10135354',0,2,'2017-08-14 06:47:55.173000',1);
INSERT INTO portunes_identifier VALUES(3573,'Tanımsız kart','16655919',0,2,'2017-08-14 06:47:55.250000',1);
INSERT INTO portunes_identifier VALUES(3574,'Tanımsız kart','12478140',0,2,'2017-08-14 06:47:56.773000',1);
INSERT INTO portunes_identifier VALUES(3575,'Tanımsız kart','2435403',0,2,'2017-08-14 06:47:58.948000',1);
INSERT INTO portunes_identifier VALUES(3576,'Tanımsız kart','43626',0,2,'2017-08-14 06:47:59.505000',1);
INSERT INTO portunes_identifier VALUES(3577,'Tanımsız kart','11358890',0,2,'2017-08-14 06:47:59.734000',1);
INSERT INTO portunes_identifier VALUES(3578,'Tanımsız kart','11358677',0,2,'2017-08-14 06:47:59.811000',1);
INSERT INTO portunes_identifier VALUES(3579,'Tanımsız kart','11381674',0,2,'2017-08-14 06:47:59.888000',1);
INSERT INTO portunes_identifier VALUES(3580,'Tanımsız kart','13959489',0,2,'2017-08-14 06:48:01.660000',1);
INSERT INTO portunes_identifier VALUES(3581,'Tanımsız kart','13765333',0,2,'2017-08-14 06:48:02.731000',1);
INSERT INTO portunes_identifier VALUES(3582,'Tanımsız kart','4748683',0,2,'2017-08-14 06:48:07.021000',1);
INSERT INTO portunes_identifier VALUES(3583,'Tanımsız kart','565265',0,2,'2017-08-14 06:48:10.599000',1);
INSERT INTO portunes_identifier VALUES(3584,'Tanımsız kart','9786026',0,2,'2017-08-14 06:48:11.816000',1);
INSERT INTO portunes_identifier VALUES(3585,'Tanımsız kart','5556266',0,2,'2017-08-14 06:48:14.177000',1);
INSERT INTO portunes_identifier VALUES(3586,'Tanımsız kart','1446912',0,2,'2017-08-14 06:48:15.317000',1);
INSERT INTO portunes_identifier VALUES(3587,'Tanımsız kart','1183817',0,2,'2017-08-14 06:48:15.394000',1);
INSERT INTO portunes_identifier VALUES(3588,'Tanımsız kart','11348309',0,2,'2017-08-14 06:48:30.235000',1);
INSERT INTO portunes_identifier VALUES(3589,'Tanımsız kart','10242',0,2,'2017-08-14 06:48:30.311000',1);
INSERT INTO portunes_identifier VALUES(3590,'Tanımsız kart','5415594',0,2,'2017-08-14 06:48:30.771000',1);
INSERT INTO portunes_identifier VALUES(3591,'Tanımsız kart','14380925',0,2,'2017-08-14 06:48:32.416000',1);
INSERT INTO portunes_identifier VALUES(3592,'Tanımsız kart','12278527',0,2,'2017-08-14 06:48:32.493000',1);
INSERT INTO portunes_identifier VALUES(3593,'Tanımsız kart','14653407',0,2,'2017-08-14 06:48:32.570000',1);
INSERT INTO portunes_identifier VALUES(3594,'Tanımsız kart','12228023',0,2,'2017-08-14 06:48:32.647000',1);
INSERT INTO portunes_identifier VALUES(3595,'Tanımsız kart','9893871',0,2,'2017-08-14 06:48:32.724000',1);
INSERT INTO portunes_identifier VALUES(3596,'Tanımsız kart','1067685',0,2,'2017-08-14 06:48:32.801000',1);
INSERT INTO portunes_identifier VALUES(3597,'Tanımsız kart','345160',0,2,'2017-08-14 06:48:32.877000',1);
INSERT INTO portunes_identifier VALUES(3598,'Tanımsız kart','2379938',0,2,'2017-08-14 06:48:32.955000',1);
INSERT INTO portunes_identifier VALUES(3599,'Tanımsız kart','12054375',0,2,'2017-08-14 06:48:33.032000',1);
INSERT INTO portunes_identifier VALUES(3600,'Tanımsız kart','16776637',0,2,'2017-08-14 06:48:33.108000',1);
INSERT INTO portunes_identifier VALUES(3601,'Tanımsız kart','16758519',0,2,'2017-08-14 06:48:33.261000',1);
INSERT INTO portunes_identifier VALUES(3602,'Tanımsız kart','8387310',0,2,'2017-08-14 06:48:33.339000',1);
INSERT INTO portunes_identifier VALUES(3603,'Tanımsız kart','6264826',0,2,'2017-08-14 06:48:33.416000',1);
INSERT INTO portunes_identifier VALUES(3604,'Tanımsız kart','2179364',0,2,'2017-08-14 06:48:33.493000',1);
INSERT INTO portunes_identifier VALUES(3605,'Tanımsız kart','12441019',0,2,'2017-08-14 06:48:33.569000',1);
INSERT INTO portunes_identifier VALUES(3606,'Tanımsız kart','526354',0,2,'2017-08-14 06:48:33.647000',1);
INSERT INTO portunes_identifier VALUES(3607,'Tanımsız kart','5996535',0,2,'2017-08-14 06:48:33.724000',1);
INSERT INTO portunes_identifier VALUES(3608,'Tanımsız kart','14146542',0,2,'2017-08-14 06:48:33.801000',1);
INSERT INTO portunes_identifier VALUES(3609,'Tanımsız kart','15564666',0,2,'2017-08-14 06:48:33.877000',1);
INSERT INTO portunes_identifier VALUES(3610,'Tanımsız kart','9942519',0,2,'2017-08-14 06:48:33.954000',1);
INSERT INTO portunes_identifier VALUES(3611,'Tanımsız kart','14640119',0,2,'2017-08-14 06:48:34.031000',1);
INSERT INTO portunes_identifier VALUES(3612,'Tanımsız kart','14548702',0,2,'2017-08-14 06:48:34.108000',1);
INSERT INTO portunes_identifier VALUES(3613,'Tanımsız kart','4805193',0,2,'2017-08-14 06:48:34.184000',1);
INSERT INTO portunes_identifier VALUES(3614,'Tanımsız kart','11501278',0,2,'2017-08-14 06:48:34.261000',1);
INSERT INTO portunes_identifier VALUES(3615,'Tanımsız kart','8079351',0,2,'2017-08-14 06:48:34.338000',1);
INSERT INTO portunes_identifier VALUES(3616,'Tanımsız kart','16744415',0,2,'2017-08-14 06:48:34.415000',1);
INSERT INTO portunes_identifier VALUES(3617,'Tanımsız kart','14531567',0,2,'2017-08-14 06:48:34.492000',1);
INSERT INTO portunes_identifier VALUES(3618,'Tanımsız kart','14671867',0,2,'2017-08-14 06:48:34.569000',1);
INSERT INTO portunes_identifier VALUES(3619,'Tanımsız kart','594560',0,2,'2017-08-14 06:48:34.645000',1);
INSERT INTO portunes_identifier VALUES(3620,'Tanımsız kart','16760219',0,2,'2017-08-14 06:48:34.722000',1);
INSERT INTO portunes_identifier VALUES(3621,'Tanımsız kart','15707823',0,2,'2017-08-14 06:48:34.799000',1);
INSERT INTO portunes_identifier VALUES(3622,'Tanımsız kart','16422846',0,2,'2017-08-14 06:48:34.876000',1);
INSERT INTO portunes_identifier VALUES(3623,'Tanımsız kart','16119535',0,2,'2017-08-14 06:48:34.953000',1);
INSERT INTO portunes_identifier VALUES(3624,'Tanımsız kart','14072429',0,2,'2017-08-14 06:48:35.029000',1);
INSERT INTO portunes_identifier VALUES(3625,'Tanımsız kart','8164702',0,2,'2017-08-14 06:48:35.106000',1);
INSERT INTO portunes_identifier VALUES(3626,'Tanımsız kart','2841343',0,2,'2017-08-14 06:48:35.183000',1);
INSERT INTO portunes_identifier VALUES(3627,'Tanımsız kart','2184464',0,2,'2017-08-14 06:48:35.412000',1);
INSERT INTO portunes_identifier VALUES(3628,'Tanımsız kart','9572866',0,2,'2017-08-14 06:48:35.489000',1);
INSERT INTO portunes_identifier VALUES(3629,'Tanımsız kart','16438963',0,2,'2017-08-14 06:48:35.565000',1);
INSERT INTO portunes_identifier VALUES(3630,'Tanımsız kart','14393343',0,2,'2017-08-14 06:48:35.643000',1);
INSERT INTO portunes_identifier VALUES(3631,'Tanımsız kart','10823826',0,2,'2017-08-14 06:48:36.253000',1);
INSERT INTO portunes_identifier VALUES(3632,'Tanımsız kart','12058493',0,2,'2017-08-14 06:48:36.406000',1);
INSERT INTO portunes_identifier VALUES(3633,'Tanımsız kart','2452670',0,2,'2017-08-14 06:48:36.482000',1);
INSERT INTO portunes_identifier VALUES(3634,'Tanımsız kart','11403230',0,2,'2017-08-14 06:48:36.559000',1);
INSERT INTO portunes_identifier VALUES(3635,'Tanımsız kart','5538900',0,2,'2017-08-14 06:48:36.636000',1);
INSERT INTO portunes_identifier VALUES(3636,'Tanımsız kart','5578788',0,2,'2017-08-14 06:48:36.713000',1);
INSERT INTO portunes_identifier VALUES(3637,'Tanımsız kart','5374546',0,2,'2017-08-14 06:48:36.789000',1);
INSERT INTO portunes_identifier VALUES(3638,'Tanımsız kart','12233711',0,2,'2017-08-14 06:48:36.867000',1);
INSERT INTO portunes_identifier VALUES(3639,'Tanımsız kart','8429732',0,2,'2017-08-14 06:48:36.944000',1);
INSERT INTO portunes_identifier VALUES(3640,'Tanımsız kart','4649385',0,2,'2017-08-14 06:48:37.021000',1);
INSERT INTO portunes_identifier VALUES(3641,'Tanımsız kart','12189151',0,2,'2017-08-14 06:48:37.097000',1);
INSERT INTO portunes_identifier VALUES(3642,'Tanımsız kart','8668228',0,2,'2017-08-14 06:48:37.174000',1);
INSERT INTO portunes_identifier VALUES(3643,'Tanımsız kart','9736777',0,2,'2017-08-14 06:48:37.251000',1);
INSERT INTO portunes_identifier VALUES(3644,'Tanımsız kart','2377876',0,2,'2017-08-14 06:48:37.328000',1);
INSERT INTO portunes_identifier VALUES(3645,'Tanımsız kart','9512082',0,2,'2017-08-14 06:48:37.404000',1);
INSERT INTO portunes_identifier VALUES(3646,'Tanımsız kart','2630181',0,2,'2017-08-14 06:48:37.481000',1);
INSERT INTO portunes_identifier VALUES(3647,'Tanımsız kart','4794709',0,2,'2017-08-14 06:48:37.711000',1);
INSERT INTO portunes_identifier VALUES(3648,'Tanımsız kart','5649919',0,2,'2017-08-14 06:48:37.864000',1);
INSERT INTO portunes_identifier VALUES(3649,'Tanımsız kart','65864',0,2,'2017-08-14 06:48:37.940000',1);
INSERT INTO portunes_identifier VALUES(3650,'Tanımsız kart','16211423',0,2,'2017-08-14 06:48:38.018000',1);
INSERT INTO portunes_identifier VALUES(3651,'Tanımsız kart','11955165',0,2,'2017-08-14 06:48:38.096000',1);
INSERT INTO portunes_identifier VALUES(3652,'Tanımsız kart','12410110',0,2,'2017-08-14 06:48:38.173000',1);
INSERT INTO portunes_identifier VALUES(3653,'Tanımsız kart','16665583',0,2,'2017-08-14 06:48:38.250000',1);
INSERT INTO portunes_identifier VALUES(3654,'Tanımsız kart','14606077',0,2,'2017-08-14 06:48:38.327000',1);
INSERT INTO portunes_identifier VALUES(3655,'Tanımsız kart','16740094',0,2,'2017-08-14 06:48:38.404000',1);
INSERT INTO portunes_identifier VALUES(3656,'Tanımsız kart','14605821',0,2,'2017-08-14 06:48:38.481000',1);
INSERT INTO portunes_identifier VALUES(3657,'Tanımsız kart','8089462',0,2,'2017-08-14 06:48:38.557000',1);
INSERT INTO portunes_identifier VALUES(3658,'Tanımsız kart','12507006',0,2,'2017-08-14 06:48:39.093000',1);
INSERT INTO portunes_identifier VALUES(3659,'Tanımsız kart','16250751',0,2,'2017-08-14 06:48:39.628000',1);
INSERT INTO portunes_identifier VALUES(3660,'Tanımsız kart','4362757',0,2,'2017-08-14 06:48:40.161000',1);
INSERT INTO portunes_identifier VALUES(3661,'Tanımsız kart','15653823',0,2,'2017-08-14 06:48:40.237000',1);
INSERT INTO portunes_identifier VALUES(3662,'Tanımsız kart','13974517',0,2,'2017-08-14 06:48:40.314000',1);
INSERT INTO portunes_identifier VALUES(3663,'Tanımsız kart','12419034',0,2,'2017-08-14 06:48:40.391000',1);
INSERT INTO portunes_identifier VALUES(3664,'Tanımsız kart','9589320',0,2,'2017-08-14 06:48:40.545000',1);
INSERT INTO portunes_identifier VALUES(3665,'Tanımsız kart','10635538',0,2,'2017-08-14 06:48:40.623000',1);
INSERT INTO portunes_identifier VALUES(3666,'Tanımsız kart','15392463',0,2,'2017-08-14 06:48:40.852000',1);
INSERT INTO portunes_identifier VALUES(3667,'Tanımsız kart','2714277',0,2,'2017-08-14 08:27:20.893000',1);
INSERT INTO portunes_identifier VALUES(3668,'Tanımsız kart','2378002',0,2,'2017-08-14 08:27:41.214000',1);
INSERT INTO portunes_identifier VALUES(3669,'Tanımsız kart','9587017',0,2,'2017-08-14 08:27:41.291000',1);
INSERT INTO portunes_identifier VALUES(3670,'Tanımsız kart','9589284',0,2,'2017-08-14 08:27:41.368000',1);
INSERT INTO portunes_identifier VALUES(3671,'Tanımsız kart','8987945',0,2,'2017-08-14 08:27:41.445000',1);
INSERT INTO portunes_identifier VALUES(3672,'Tanımsız kart','14112534',0,2,'2017-08-14 10:33:17.397000',1);
INSERT INTO portunes_identifier VALUES(3673,'Tanımsız kart','8398866',0,2,'2017-08-14 10:33:17.702000',1);
INSERT INTO portunes_identifier VALUES(3674,'Tanımsız kart','16689477',0,2,'2017-08-14 10:33:18.214000',1);
INSERT INTO portunes_identifier VALUES(3675,'Tanımsız kart','12495173',0,2,'2017-08-14 10:33:18.292000',1);
INSERT INTO portunes_identifier VALUES(3676,'Tanımsız kart','2658372',0,2,'2017-08-14 10:33:51.830000',1);
INSERT INTO portunes_identifier VALUES(3677,'Tanımsız kart','5542546',0,2,'2017-08-14 10:33:51.908000',1);
INSERT INTO portunes_identifier VALUES(3678,'Tanımsız kart','6559019',0,2,'2017-08-14 12:06:00.559000',1);
INSERT INTO portunes_identifier VALUES(3679,'Tanımsız kart','11093317',0,2,'2017-08-14 12:06:02.703000',1);
INSERT INTO portunes_identifier VALUES(3680,'Tanımsız kart','5014197',0,2,'2017-08-14 12:06:03.328000',1);
INSERT INTO portunes_identifier VALUES(3681,'Tanımsız kart','11969384',0,2,'2017-08-14 14:38:34.225000',1);
INSERT INTO portunes_identifier VALUES(3682,'Tanımsız kart','16112047',0,2,'2017-08-14 14:38:34.303000',1);
INSERT INTO portunes_identifier VALUES(3683,'Tanımsız kart','15399929',0,2,'2017-08-14 14:38:34.381000',1);
INSERT INTO portunes_identifier VALUES(3684,'Tanımsız kart','12236050',0,2,'2017-08-14 14:38:34.460000',1);
INSERT INTO portunes_identifier VALUES(3685,'Tanımsız kart','12582253',0,2,'2017-08-14 14:38:34.538000',1);
INSERT INTO portunes_identifier VALUES(3686,'Tanımsız kart','16498636',0,2,'2017-08-14 14:38:34.616000',1);
INSERT INTO portunes_identifier VALUES(3687,'Tanımsız kart','8126431',0,2,'2017-08-14 14:38:34.694000',1);
INSERT INTO portunes_identifier VALUES(3688,'Tanımsız kart','16070027',0,2,'2017-08-14 14:38:34.772000',1);
INSERT INTO portunes_identifier VALUES(3689,'Tanımsız kart','9785941',0,2,'2017-08-14 21:25:38.963000',1);
INSERT INTO portunes_identifier VALUES(3690,'Tanımsız kart','9742464',0,2,'2017-08-14 21:25:39.041000',1);
INSERT INTO portunes_identifier VALUES(3691,'Tanımsız kart','4215889',0,2,'2017-08-14 21:25:39.119000',1);
INSERT INTO portunes_identifier VALUES(3692,'Tanımsız kart','9511458',0,2,'2017-08-14 21:25:40.868000',1);
INSERT INTO portunes_identifier VALUES(3693,'Tanımsız kart','5548379',0,2,'2017-08-14 21:41:24.101000',1);
INSERT INTO portunes_identifier VALUES(3694,'Tanımsız kart','9775786',0,2,'2017-08-14 21:41:24.180000',1);
INSERT INTO portunes_identifier VALUES(3695,'Tanımsız kart','6639173',0,2,'2017-08-15 09:41:51.189000',1);
INSERT INTO portunes_identifier VALUES(3696,'Tanımsız kart','4729566',0,2,'2017-08-15 09:41:51.930000',1);
INSERT INTO portunes_identifier VALUES(3697,'Tanımsız kart','6116981',0,2,'2017-08-15 09:41:52.367000',1);
INSERT INTO portunes_identifier VALUES(3698,'Tanımsız kart','4890453',0,2,'2017-08-15 09:41:53.612000',1);
INSERT INTO portunes_identifier VALUES(3699,'Tanımsız kart','4802852',0,2,'2017-08-15 09:41:58.785000',1);
INSERT INTO portunes_identifier VALUES(3700,'Tanımsız kart','4868388',0,2,'2017-08-15 09:41:58.865000',1);
INSERT INTO portunes_identifier VALUES(3701,'Tanımsız kart','4793641',0,2,'2017-08-15 09:41:59.046000',1);
INSERT INTO portunes_identifier VALUES(3702,'Tanımsız kart','2396818',0,2,'2017-08-15 09:41:59.283000',1);
INSERT INTO portunes_identifier VALUES(3703,'Tanımsız kart','2397330',0,2,'2017-08-15 09:41:59.362000',1);
INSERT INTO portunes_identifier VALUES(3704,'Tanımsız kart','2773652',0,2,'2017-08-15 09:41:59.544000',1);
INSERT INTO portunes_identifier VALUES(3705,'Tanımsız kart','2696338',0,2,'2017-08-15 09:41:59.780000',1);
INSERT INTO portunes_identifier VALUES(3706,'Tanımsız kart','4793492',0,2,'2017-08-15 09:42:00.017000',1);
INSERT INTO portunes_identifier VALUES(3707,'Tanımsız kart','10824020',0,2,'2017-08-15 09:42:00.199000',1);
INSERT INTO portunes_identifier VALUES(3708,'Tanımsız kart','4793636',0,2,'2017-08-15 09:42:00.356000',1);
INSERT INTO portunes_identifier VALUES(3709,'Tanımsız kart','9741652',0,2,'2017-08-15 09:42:01.247000',1);
INSERT INTO portunes_identifier VALUES(3710,'Tanımsız kart','10824010',0,2,'2017-08-15 09:42:01.823000',1);
INSERT INTO portunes_identifier VALUES(3711,'Tanımsız kart','5412178',0,2,'2017-08-15 09:42:02.557000',1);
INSERT INTO portunes_identifier VALUES(3712,'Tanımsız kart','5547305',0,2,'2017-08-15 09:42:03.132000',1);
INSERT INTO portunes_identifier VALUES(3713,'Tanımsız kart','9741610',0,2,'2017-08-15 09:42:04.259000',1);
INSERT INTO portunes_identifier VALUES(3714,'Tanımsız kart','2773674',0,2,'2017-08-15 09:42:05.492000',1);
INSERT INTO portunes_identifier VALUES(3715,'Tanımsız kart','5417637',0,2,'2017-08-15 09:42:05.993000',1);
INSERT INTO portunes_identifier VALUES(3716,'Tanımsız kart','11183401',0,2,'2017-08-15 09:42:06.727000',1);
INSERT INTO portunes_identifier VALUES(3717,'Tanımsız kart','5412010',0,2,'2017-08-15 09:42:08.693000',1);
INSERT INTO portunes_identifier VALUES(3718,'Tanımsız kart','5417290',0,2,'2017-08-15 09:42:09.193000',1);
INSERT INTO portunes_identifier VALUES(3719,'Tanımsız kart','9605705',0,2,'2017-08-15 09:42:09.430000',1);
INSERT INTO portunes_identifier VALUES(3720,'Tanımsız kart','10785353',0,2,'2017-08-15 09:42:09.509000',1);
INSERT INTO portunes_identifier VALUES(3721,'Tanımsız kart','2396745',0,2,'2017-08-15 09:42:09.772000',1);
INSERT INTO portunes_identifier VALUES(3722,'Tanımsız kart','11094610',0,2,'2017-08-15 09:42:10.347000',1);
INSERT INTO portunes_identifier VALUES(3723,'Tanımsız kart','5547306',0,2,'2017-08-15 09:42:11.001000',1);
INSERT INTO portunes_identifier VALUES(3724,'Tanımsız kart','11094698',0,2,'2017-08-15 09:42:11.656000',1);
INSERT INTO portunes_identifier VALUES(3725,'Tanımsız kart','5592361',0,2,'2017-08-15 09:42:12.393000',1);
INSERT INTO portunes_identifier VALUES(3726,'Tanımsız kart','9741653',0,2,'2017-08-15 09:42:13.362000',1);
INSERT INTO portunes_identifier VALUES(3727,'Tanımsız kart','4858152',0,2,'2017-08-15 19:19:44.128000',1);
INSERT INTO portunes_identifier VALUES(3728,'Tanımsız kart','14075946',0,2,'2017-08-16 09:44:26.028000',1);
INSERT INTO portunes_identifier VALUES(3729,'Tanımsız kart','5593781',0,2,'2017-08-16 09:44:26.757000',1);
INSERT INTO portunes_identifier VALUES(3730,'Tanımsız kart','14079325',0,2,'2017-08-16 09:44:26.835000',1);
INSERT INTO portunes_identifier VALUES(3731,'Tanımsız kart','14007626',0,2,'2017-08-16 09:44:26.913000',1);
INSERT INTO portunes_identifier VALUES(3732,'Tanımsız kart','13970250',0,2,'2017-08-16 09:44:26.992000',1);
INSERT INTO portunes_identifier VALUES(3733,'Tanımsız kart','6122485',0,2,'2017-08-16 09:44:27.150000',1);
INSERT INTO portunes_identifier VALUES(3734,'Tanımsız kart','11162282',0,2,'2017-08-16 09:44:27.228000',1);
INSERT INTO portunes_identifier VALUES(3735,'Tanımsız kart','5592282',0,2,'2017-08-16 09:44:29.976000',1);
INSERT INTO portunes_identifier VALUES(3736,'Tanımsız kart','2396708',0,2,'2017-08-16 09:44:30.340000',1);
INSERT INTO portunes_identifier VALUES(3737,'Tanımsız kart','15989759',0,2,'2017-08-16 17:15:41.449000',1);
INSERT INTO portunes_identifier VALUES(3738,'Tanımsız kart','15448058',0,2,'2017-08-16 17:15:41.527000',1);
INSERT INTO portunes_identifier VALUES(3739,'Tanımsız kart','14678967',0,2,'2017-08-16 17:15:41.604000',1);
INSERT INTO portunes_identifier VALUES(3740,'Tanımsız kart','15564795',0,2,'2017-08-16 17:15:42.151000',1);
INSERT INTO portunes_identifier VALUES(3741,'Tanımsız kart','7523497',0,2,'2017-08-16 17:15:42.464000',1);
INSERT INTO portunes_identifier VALUES(3742,'Tanımsız kart','6422356',0,2,'2017-08-16 17:15:42.699000',1);
INSERT INTO portunes_identifier VALUES(3743,'Tanımsız kart','10201998',0,2,'2017-08-16 17:15:43.351000',1);
INSERT INTO portunes_identifier VALUES(3744,'Tanımsız kart','4887701',0,2,'2017-08-17 00:46:41.928000',1);
INSERT INTO portunes_identifier VALUES(3745,'Tanımsız kart','14139391',0,2,'2017-08-17 08:17:38.100000',1);
INSERT INTO portunes_identifier VALUES(3746,'Tanımsız kart','7864063',0,2,'2017-08-17 08:17:38.179000',1);
INSERT INTO portunes_identifier VALUES(3747,'Tanımsız kart','15400372',0,2,'2017-08-17 08:17:38.257000',1);
INSERT INTO portunes_identifier VALUES(3748,'Tanımsız kart','16066906',0,2,'2017-08-17 08:17:38.334000',1);
INSERT INTO portunes_identifier VALUES(3749,'Tanımsız kart','5572094',0,2,'2017-08-17 08:17:39.139000',1);
INSERT INTO portunes_identifier VALUES(3750,'Tanımsız kart','11187053',0,2,'2017-08-17 09:53:21.416000',1);
INSERT INTO portunes_identifier VALUES(3751,'Tanımsız kart','11185979',0,2,'2017-08-17 09:53:21.496000',1);
INSERT INTO portunes_identifier VALUES(3752,'Tanımsız kart','7693653',0,2,'2017-08-17 09:53:21.573000',1);
INSERT INTO portunes_identifier VALUES(3753,'Tanımsız kart','9783844',0,2,'2017-08-17 09:53:21.650000',1);
INSERT INTO portunes_identifier VALUES(3754,'Tanımsız kart','13793962',0,2,'2017-08-17 09:53:22.869000',1);
INSERT INTO portunes_identifier VALUES(3755,'Tanımsız kart','4893258',0,2,'2017-08-22 09:17:19.629000',1);
INSERT INTO portunes_identifier VALUES(3756,'Tanımsız kart','15379245',0,2,'2017-08-22 09:17:20.305000',1);
INSERT INTO portunes_identifier VALUES(3757,'Tanımsız kart','12217725',0,2,'2017-08-22 09:17:20.381000',1);
INSERT INTO portunes_identifier VALUES(3758,'Tanımsız kart','10150491',0,2,'2017-08-22 09:17:20.458000',1);
INSERT INTO portunes_identifier VALUES(3759,'Tanımsız kart','15354538',0,2,'2017-08-22 09:17:20.535000',1);
INSERT INTO portunes_identifier VALUES(3760,'Tanımsız kart','16776189',0,2,'2017-08-22 09:17:20.618000',1);
INSERT INTO portunes_identifier VALUES(3761,'Tanımsız kart','11272175',0,2,'2017-08-22 09:17:20.696000',1);
INSERT INTO portunes_identifier VALUES(3762,'Tanımsız kart','16776955',0,2,'2017-08-22 09:17:20.773000',1);
INSERT INTO portunes_identifier VALUES(3763,'Tanımsız kart','13981242',0,2,'2017-08-22 09:17:20.849000',1);
INSERT INTO portunes_identifier VALUES(3764,'Tanımsız kart','11097518',0,2,'2017-08-22 09:17:20.926000',1);
INSERT INTO portunes_identifier VALUES(3765,'Tanımsız kart','14330534',0,2,'2017-08-22 09:17:21.003000',1);
INSERT INTO portunes_identifier VALUES(3766,'Tanımsız kart','1400651',0,2,'2017-08-22 09:17:21.080000',1);
INSERT INTO portunes_identifier VALUES(3767,'Tanımsız kart','16737771',0,2,'2017-08-22 09:17:21.233000',1);
INSERT INTO portunes_identifier VALUES(3768,'Tanımsız kart','9783893',0,2,'2017-08-22 09:17:21.918000',1);
INSERT INTO portunes_identifier VALUES(3769,'Tanımsız kart','5420370',0,2,'2017-08-22 09:17:22.148000',1);
INSERT INTO portunes_identifier VALUES(3770,'Tanımsız kart','16077929',0,2,'2017-08-22 09:17:22.605000',1);
INSERT INTO portunes_identifier VALUES(3771,'Tanımsız kart','8692309',0,2,'2017-08-22 09:17:23.063000',1);
INSERT INTO portunes_identifier VALUES(3772,'Tanımsız kart','5722047',0,2,'2017-08-22 09:17:23.140000',1);
INSERT INTO portunes_identifier VALUES(3773,'Tanımsız kart','12408090',0,2,'2017-08-22 09:17:25.415000',1);
INSERT INTO portunes_identifier VALUES(3774,'Tanımsız kart','2971030',0,2,'2017-08-22 09:17:25.715000',1);
INSERT INTO portunes_identifier VALUES(3775,'Tanımsız kart','11482410',0,2,'2017-08-22 09:17:25.792000',1);
INSERT INTO portunes_identifier VALUES(3776,'Tanımsız kart','13981045',0,2,'2017-08-22 09:17:25.869000',1);
INSERT INTO portunes_identifier VALUES(3777,'Tanımsız kart','15596287',0,2,'2017-08-22 09:17:26.705000',1);
INSERT INTO portunes_identifier VALUES(3778,'Tanımsız kart','14068954',0,2,'2017-08-22 09:17:26.782000',1);
INSERT INTO portunes_identifier VALUES(3779,'Tanımsız kart','13118293',0,2,'2017-08-22 09:17:27.087000',1);
INSERT INTO portunes_identifier VALUES(3780,'Tanımsız kart','5392970',0,2,'2017-08-22 09:17:27.926000',1);
INSERT INTO portunes_identifier VALUES(3781,'Tanımsız kart','2246801',0,2,'2017-08-22 09:17:28.003000',1);
INSERT INTO portunes_identifier VALUES(3782,'Tanımsız kart','11532278',0,2,'2017-08-22 09:17:28.080000',1);
INSERT INTO portunes_identifier VALUES(3783,'Tanımsız kart','2238784',0,2,'2017-08-22 09:17:28.157000',1);
INSERT INTO portunes_identifier VALUES(3784,'Tanımsız kart','6559146',0,2,'2017-08-22 09:17:28.462000',1);
INSERT INTO portunes_identifier VALUES(3785,'Tanımsız kart','2169100',0,2,'2017-08-22 09:17:28.539000',1);
INSERT INTO portunes_identifier VALUES(3786,'Tanımsız kart','11386855',0,2,'2017-08-22 09:17:29.063000',1);
INSERT INTO portunes_identifier VALUES(3787,'Tanımsız kart','14141151',0,2,'2017-08-22 09:17:29.369000',1);
INSERT INTO portunes_identifier VALUES(3788,'Tanımsız kart','12237663',0,2,'2017-08-22 09:17:29.445000',1);
INSERT INTO portunes_identifier VALUES(3789,'Tanımsız kart','16756653',0,2,'2017-08-22 09:17:29.522000',1);
INSERT INTO portunes_identifier VALUES(3790,'Tanımsız kart','13603371',0,2,'2017-08-22 09:17:29.599000',1);
INSERT INTO portunes_identifier VALUES(3791,'Tanımsız kart','15576799',0,2,'2017-08-22 09:17:29.676000',1);
INSERT INTO portunes_identifier VALUES(3792,'Tanımsız kart','12582399',0,2,'2017-08-22 09:17:29.753000',1);
INSERT INTO portunes_identifier VALUES(3793,'Tanımsız kart','16017143',0,2,'2017-08-22 09:17:29.829000',1);
INSERT INTO portunes_identifier VALUES(3794,'Tanımsız kart','15957839',0,2,'2017-08-22 09:17:29.905000',1);
INSERT INTO portunes_identifier VALUES(3795,'Tanımsız kart','16727019',0,2,'2017-08-22 09:17:29.982000',1);
INSERT INTO portunes_identifier VALUES(3796,'Tanımsız kart','7370',0,2,'2017-08-22 09:17:30.060000',1);
INSERT INTO portunes_identifier VALUES(3797,'Tanımsız kart','16764923',0,2,'2017-08-22 09:17:30.137000',1);
INSERT INTO portunes_identifier VALUES(3798,'Tanımsız kart','16734207',0,2,'2017-08-22 09:17:30.213000',1);
INSERT INTO portunes_identifier VALUES(3799,'Tanımsız kart','16498683',0,2,'2017-08-22 09:17:30.366000',1);
INSERT INTO portunes_identifier VALUES(3800,'Tanımsız kart','7331839',0,2,'2017-08-22 09:17:30.443000',1);
INSERT INTO portunes_identifier VALUES(3801,'Tanımsız kart','16772575',0,2,'2017-08-22 09:17:30.519000',1);
INSERT INTO portunes_identifier VALUES(3802,'Tanımsız kart','15974399',0,2,'2017-08-22 09:17:30.596000',1);
INSERT INTO portunes_identifier VALUES(3803,'Tanımsız kart','32767',0,2,'2017-08-22 09:17:30.673000',1);
INSERT INTO portunes_identifier VALUES(3804,'Tanımsız kart','14678011',0,2,'2017-08-22 09:17:30.749000',1);
INSERT INTO portunes_identifier VALUES(3805,'Tanımsız kart','16776890',0,2,'2017-08-22 09:17:30.826000',1);
INSERT INTO portunes_identifier VALUES(3806,'Tanımsız kart','16251727',0,2,'2017-08-22 09:17:30.903000',1);
INSERT INTO portunes_identifier VALUES(3807,'Tanımsız kart','10411245',0,2,'2017-08-22 09:17:30.980000',1);
INSERT INTO portunes_identifier VALUES(3808,'Tanımsız kart','16460212',0,2,'2017-08-22 09:17:31.057000',1);
INSERT INTO portunes_identifier VALUES(3809,'Tanımsız kart','12412279',0,2,'2017-08-22 09:17:31.133000',1);
INSERT INTO portunes_identifier VALUES(3810,'Tanımsız kart','4175448',0,2,'2017-08-22 09:17:31.210000',1);
INSERT INTO portunes_identifier VALUES(3811,'Tanımsız kart','16776834',0,2,'2017-08-22 09:17:31.286000',1);
INSERT INTO portunes_identifier VALUES(3812,'Tanımsız kart','15644831',0,2,'2017-08-22 09:17:31.362000',1);
INSERT INTO portunes_identifier VALUES(3813,'Tanımsız kart','16764593',0,2,'2017-08-22 09:17:31.440000',1);
INSERT INTO portunes_identifier VALUES(3814,'Tanımsız kart','9786708',0,2,'2017-08-22 09:17:31.921000',1);
INSERT INTO portunes_identifier VALUES(3815,'Tanımsız kart','11162922',0,2,'2017-08-22 09:17:31.998000',1);
INSERT INTO portunes_identifier VALUES(3816,'Tanımsız kart','11168917',0,2,'2017-08-22 09:17:32.074000',1);
INSERT INTO portunes_identifier VALUES(3817,'Tanımsız kart','10843465',0,2,'2017-08-22 09:17:32.152000',1);
INSERT INTO portunes_identifier VALUES(3818,'Tanımsız kart','11384170',0,2,'2017-08-22 09:17:32.305000',1);
INSERT INTO portunes_identifier VALUES(3819,'Tanımsız kart','3495589',0,2,'2017-08-22 09:17:32.382000',1);
INSERT INTO portunes_identifier VALUES(3820,'Tanımsız kart','11367805',0,2,'2017-08-22 09:17:32.460000',1);
INSERT INTO portunes_identifier VALUES(3821,'Tanımsız kart','11245226',0,2,'2017-08-22 09:17:33.299000',1);
INSERT INTO portunes_identifier VALUES(3822,'Tanımsız kart','179757',0,2,'2017-08-22 09:17:33.376000',1);
INSERT INTO portunes_identifier VALUES(3823,'Tanımsız kart','5625504',0,2,'2017-08-22 09:17:33.453000',1);
INSERT INTO portunes_identifier VALUES(3824,'Tanımsız kart','13292692',0,2,'2017-08-22 09:17:33.530000',1);
INSERT INTO portunes_identifier VALUES(3825,'Tanımsız kart','14333269',0,2,'2017-08-22 09:17:33.607000',1);
INSERT INTO portunes_identifier VALUES(3826,'Tanımsız kart','14330514',0,2,'2017-08-22 09:17:33.839000',1);
INSERT INTO portunes_identifier VALUES(3827,'Tanımsız kart','2816874',0,2,'2017-08-22 09:17:33.916000',1);
INSERT INTO portunes_identifier VALUES(3828,'Tanımsız kart','5940906',0,2,'2017-08-22 09:17:33.993000',1);
INSERT INTO portunes_identifier VALUES(3829,'Tanımsız kart','11656028',0,2,'2017-08-22 09:17:34.070000',1);
INSERT INTO portunes_identifier VALUES(3830,'Tanımsız kart','11184815',0,2,'2017-08-22 09:17:34.301000',1);
INSERT INTO portunes_identifier VALUES(3831,'Tanımsız kart','13989717',0,2,'2017-08-22 09:17:34.455000',1);
INSERT INTO portunes_identifier VALUES(3832,'Tanımsız kart','9788245',0,2,'2017-08-22 09:17:34.609000',1);
INSERT INTO portunes_identifier VALUES(3833,'Tanımsız kart','12235976',0,2,'2017-08-22 09:17:34.686000',1);
INSERT INTO portunes_identifier VALUES(3834,'Tanımsız kart','11357525',0,2,'2017-08-22 09:17:34.763000',1);
INSERT INTO portunes_identifier VALUES(3835,'Tanımsız kart','11184800',0,2,'2017-08-22 09:17:34.841000',1);
INSERT INTO portunes_identifier VALUES(3836,'Tanımsız kart','10134100',0,2,'2017-08-22 09:17:34.917000',1);
INSERT INTO portunes_identifier VALUES(3837,'Tanımsız kart','11754203',0,2,'2017-08-22 09:17:35.071000',1);
INSERT INTO portunes_identifier VALUES(3838,'Tanımsız kart','11162925',0,2,'2017-08-22 09:17:35.148000',1);
INSERT INTO portunes_identifier VALUES(3839,'Tanımsız kart','5591380',0,2,'2017-08-22 09:17:35.301000',1);
INSERT INTO portunes_identifier VALUES(3840,'Tanımsız kart','5580965',0,2,'2017-08-22 09:17:35.378000',1);
INSERT INTO portunes_identifier VALUES(3841,'Tanımsız kart','11183429',0,2,'2017-08-22 09:17:35.455000',1);
INSERT INTO portunes_identifier VALUES(3842,'Tanımsız kart','11883941',0,2,'2017-08-22 09:17:35.533000',1);
INSERT INTO portunes_identifier VALUES(3843,'Tanımsız kart','14068394',0,2,'2017-08-22 09:17:35.687000',1);
INSERT INTO portunes_identifier VALUES(3844,'Tanımsız kart','2774226',0,2,'2017-08-22 09:17:35.764000',1);
INSERT INTO portunes_identifier VALUES(3845,'Tanımsız kart','10921300',0,2,'2017-08-22 09:17:35.918000',1);
INSERT INTO portunes_identifier VALUES(3846,'Tanımsız kart','2799022',0,2,'2017-08-22 09:17:36.148000',1);
INSERT INTO portunes_identifier VALUES(3847,'Tanımsız kart','5548882',0,2,'2017-08-22 09:17:36.225000',1);
INSERT INTO portunes_identifier VALUES(3848,'Tanımsız kart','11184978',0,2,'2017-08-22 09:17:36.301000',1);
INSERT INTO portunes_identifier VALUES(3849,'Tanımsız kart','16424818',0,2,'2017-08-22 09:17:36.378000',1);
INSERT INTO portunes_identifier VALUES(3850,'Tanımsız kart','2435402',0,2,'2017-08-22 09:17:39.081000',1);
INSERT INTO portunes_identifier VALUES(3851,'Tanımsız kart','4729162',0,2,'2017-08-22 09:17:39.158000',1);
INSERT INTO portunes_identifier VALUES(3852,'Tanımsız kart','4870816',0,2,'2017-08-22 09:17:39.235000',1);
INSERT INTO portunes_identifier VALUES(3853,'Tanımsız kart','14013893',0,2,'2017-08-22 09:17:41.829000',1);
INSERT INTO portunes_identifier VALUES(3854,'Tanımsız kart','12892856',0,2,'2017-08-22 09:17:41.906000',1);
INSERT INTO portunes_identifier VALUES(3855,'Tanımsız kart','2708777',0,2,'2017-08-22 09:17:45.540000',1);
INSERT INTO portunes_identifier VALUES(3856,'Tanımsız kart','16689446',0,2,'2017-08-22 09:17:47.470000',1);
INSERT INTO portunes_identifier VALUES(3857,'Tanımsız kart','12495142',0,2,'2017-08-22 09:17:47.546000',1);
INSERT INTO portunes_identifier VALUES(3858,'Tanımsız kart','12525566',0,2,'2017-08-22 09:17:47.748000',1);
INSERT INTO portunes_identifier VALUES(3859,'Tanımsız kart','3337070',0,2,'2017-08-22 09:17:48.053000',1);
INSERT INTO portunes_identifier VALUES(3860,'Tanımsız kart','11178564',0,2,'2017-08-22 09:17:48.130000',1);
INSERT INTO portunes_identifier VALUES(3861,'Tanımsız kart','4530858',0,2,'2017-08-22 09:17:48.207000',1);
INSERT INTO portunes_identifier VALUES(3862,'Tanımsız kart','4792905',0,2,'2017-08-22 09:17:48.284000',1);
INSERT INTO portunes_identifier VALUES(3863,'Tanımsız kart','6141807',0,2,'2017-08-22 09:17:48.438000',1);
INSERT INTO portunes_identifier VALUES(3864,'Tanımsız kart','11362299',0,2,'2017-08-22 09:17:48.514000',1);
INSERT INTO portunes_identifier VALUES(3865,'Tanımsız kart','8236542',0,2,'2017-08-22 09:17:48.591000',1);
INSERT INTO portunes_identifier VALUES(3866,'Tanımsız kart','16739319',0,2,'2017-08-22 09:17:48.668000',1);
INSERT INTO portunes_identifier VALUES(3867,'Tanımsız kart','14643062',0,2,'2017-08-22 09:17:48.745000',1);
INSERT INTO portunes_identifier VALUES(3868,'Tanımsız kart','11184161',0,2,'2017-08-22 09:17:48.821000',1);
INSERT INTO portunes_identifier VALUES(3869,'Tanımsız kart','5515604',0,2,'2017-08-22 09:17:48.898000',1);
INSERT INTO portunes_identifier VALUES(3870,'Tanımsız kart','2380881',0,2,'2017-08-22 09:17:48.975000',1);
INSERT INTO portunes_identifier VALUES(3871,'Tanımsız kart','8538693',0,2,'2017-08-22 09:17:49.053000',1);
INSERT INTO portunes_identifier VALUES(3872,'Tanımsız kart','15691519',0,2,'2017-08-22 09:17:49.129000',1);
INSERT INTO portunes_identifier VALUES(3873,'Tanımsız kart','8651013',0,2,'2017-08-22 09:17:49.206000',1);
INSERT INTO portunes_identifier VALUES(3874,'Tanımsız kart','16708059',0,2,'2017-08-22 09:17:49.283000',1);
INSERT INTO portunes_identifier VALUES(3875,'Tanımsız kart','4030463',0,2,'2017-08-22 09:17:49.361000',1);
INSERT INTO portunes_identifier VALUES(3876,'Tanımsız kart','5376660',0,2,'2017-08-22 09:17:49.438000',1);
INSERT INTO portunes_identifier VALUES(3877,'Tanımsız kart','15726230',0,2,'2017-08-22 09:17:49.515000',1);
INSERT INTO portunes_identifier VALUES(3878,'Tanımsız kart','5325380',0,2,'2017-08-22 09:17:49.592000',1);
INSERT INTO portunes_identifier VALUES(3879,'Tanımsız kart','12315515',0,2,'2017-08-22 09:17:49.669000',1);
INSERT INTO portunes_identifier VALUES(3880,'Tanımsız kart','7337931',0,2,'2017-08-22 09:17:49.745000',1);
INSERT INTO portunes_identifier VALUES(3881,'Tanımsız kart','14413239',0,2,'2017-08-22 09:17:49.822000',1);
INSERT INTO portunes_identifier VALUES(3882,'Tanımsız kart','4531282',0,2,'2017-08-22 09:17:49.899000',1);
INSERT INTO portunes_identifier VALUES(3883,'Tanımsız kart','16725823',0,2,'2017-08-22 09:17:49.976000',1);
INSERT INTO portunes_identifier VALUES(3884,'Tanımsız kart','9585802',0,2,'2017-08-22 09:17:50.053000',1);
INSERT INTO portunes_identifier VALUES(3885,'Tanımsız kart','4784722',0,2,'2017-08-22 09:17:50.282000',1);
INSERT INTO portunes_identifier VALUES(3886,'Tanımsız kart','16219510',0,2,'2017-08-22 09:17:50.359000',1);
INSERT INTO portunes_identifier VALUES(3887,'Tanımsız kart','3922619',0,2,'2017-08-22 09:17:50.437000',1);
INSERT INTO portunes_identifier VALUES(3888,'Tanımsız kart','16670591',0,2,'2017-08-22 09:17:50.513000',1);
INSERT INTO portunes_identifier VALUES(3889,'Tanımsız kart','14596095',0,2,'2017-08-22 09:17:50.590000',1);
INSERT INTO portunes_identifier VALUES(3890,'Tanımsız kart','346258',0,2,'2017-08-22 09:17:50.667000',1);
INSERT INTO portunes_identifier VALUES(3891,'Tanımsız kart','11151657',0,2,'2017-08-22 09:17:50.744000',1);
INSERT INTO portunes_identifier VALUES(3892,'Tanımsız kart','14100445',0,2,'2017-08-22 09:17:50.821000',1);
INSERT INTO portunes_identifier VALUES(3893,'Tanımsız kart','14642682',0,2,'2017-08-22 09:17:50.900000',1);
INSERT INTO portunes_identifier VALUES(3894,'Tanımsız kart','11236797',0,2,'2017-08-22 09:17:50.977000',1);
INSERT INTO portunes_identifier VALUES(3895,'Tanımsız kart','16608255',0,2,'2017-08-22 09:17:51.054000',1);
INSERT INTO portunes_identifier VALUES(3896,'Tanımsız kart','16433014',0,2,'2017-08-22 09:17:51.130000',1);
INSERT INTO portunes_identifier VALUES(3897,'Tanımsız kart','16709375',0,2,'2017-08-22 09:17:51.208000',1);
INSERT INTO portunes_identifier VALUES(3898,'Tanımsız kart','14929252',0,2,'2017-08-22 09:17:51.284000',1);
INSERT INTO portunes_identifier VALUES(3899,'Tanımsız kart','15464191',0,2,'2017-08-22 09:17:51.362000',1);
INSERT INTO portunes_identifier VALUES(3900,'Tanımsız kart','4727445',0,2,'2017-08-22 09:17:51.438000',1);
INSERT INTO portunes_identifier VALUES(3901,'Tanımsız kart','12545015',0,2,'2017-08-22 09:17:51.516000',1);
INSERT INTO portunes_identifier VALUES(3902,'Tanımsız kart','3926971',0,2,'2017-08-22 09:17:51.592000',1);
INSERT INTO portunes_identifier VALUES(3903,'Tanımsız kart','12418550',0,2,'2017-08-22 09:17:51.669000',1);
INSERT INTO portunes_identifier VALUES(3904,'Tanımsız kart','7780923',0,2,'2017-08-22 09:17:51.746000',1);
INSERT INTO portunes_identifier VALUES(3905,'Tanımsız kart','5392969',0,2,'2017-08-22 09:17:51.823000',1);
INSERT INTO portunes_identifier VALUES(3906,'Tanımsız kart','2361608',0,2,'2017-08-22 09:17:51.901000',1);
INSERT INTO portunes_identifier VALUES(3907,'Tanımsız kart','2434212',0,2,'2017-08-22 09:17:51.977000',1);
INSERT INTO portunes_identifier VALUES(3908,'Tanımsız kart','14637237',0,2,'2017-08-22 09:17:52.054000',1);
INSERT INTO portunes_identifier VALUES(3909,'Tanımsız kart','14630847',0,2,'2017-08-22 09:17:52.132000',1);
INSERT INTO portunes_identifier VALUES(3910,'Tanımsız kart','7944119',0,2,'2017-08-22 09:17:52.209000',1);
INSERT INTO portunes_identifier VALUES(3911,'Tanımsız kart','4753476',0,2,'2017-08-22 09:17:52.286000',1);
INSERT INTO portunes_identifier VALUES(3912,'Tanımsız kart','14532535',0,2,'2017-08-22 09:17:52.362000',1);
INSERT INTO portunes_identifier VALUES(3913,'Tanımsız kart','558417',0,2,'2017-08-22 09:17:52.439000',1);
INSERT INTO portunes_identifier VALUES(3914,'Tanımsız kart','2443796',0,2,'2017-08-22 09:17:52.517000',1);
INSERT INTO portunes_identifier VALUES(3915,'Tanımsız kart','5540373',0,2,'2017-08-22 09:17:52.593000',1);
INSERT INTO portunes_identifier VALUES(3916,'Tanımsız kart','2230401',0,2,'2017-08-22 09:17:52.670000',1);
INSERT INTO portunes_identifier VALUES(3917,'Tanımsız kart','16164715',0,2,'2017-08-22 09:17:52.747000',1);
INSERT INTO portunes_identifier VALUES(3918,'Tanımsız kart','14503593',0,2,'2017-08-22 09:17:52.824000',1);
INSERT INTO portunes_identifier VALUES(3919,'Tanımsız kart','14153723',0,2,'2017-08-22 09:17:52.901000',1);
INSERT INTO portunes_identifier VALUES(3920,'Tanımsız kart','5691199',0,2,'2017-08-22 09:17:52.978000',1);
INSERT INTO portunes_identifier VALUES(3921,'Tanımsız kart','11097157',0,2,'2017-08-22 09:17:53.055000',1);
INSERT INTO portunes_identifier VALUES(3922,'Tanımsız kart','9586984',0,2,'2017-08-22 09:17:53.132000',1);
INSERT INTO portunes_identifier VALUES(3923,'Tanımsız kart','8988929',0,2,'2017-08-22 09:17:53.209000',1);
INSERT INTO portunes_identifier VALUES(3924,'Tanımsız kart','13500277',0,2,'2017-08-22 09:17:53.286000',1);
INSERT INTO portunes_identifier VALUES(3925,'Tanımsız kart','7284423',0,2,'2017-08-22 09:17:53.362000',1);
INSERT INTO portunes_identifier VALUES(3926,'Tanımsız kart','11386854',0,2,'2017-08-22 09:17:53.440000',1);
INSERT INTO portunes_identifier VALUES(3927,'Tanımsız kart','9474442',0,2,'2017-08-22 09:17:53.517000',1);
INSERT INTO portunes_identifier VALUES(3928,'Tanımsız kart','14071191',0,2,'2017-08-22 09:17:53.594000',1);
INSERT INTO portunes_identifier VALUES(3929,'Tanımsız kart','5407301',0,2,'2017-08-22 09:17:53.670000',1);
INSERT INTO portunes_identifier VALUES(3930,'Tanımsız kart','561809',0,2,'2017-08-22 09:17:53.747000',1);
INSERT INTO portunes_identifier VALUES(3931,'Tanımsız kart','9603146',0,2,'2017-08-22 09:17:53.824000',1);
INSERT INTO portunes_identifier VALUES(3932,'Tanımsız kart','15441527',0,2,'2017-08-22 09:17:53.901000',1);
INSERT INTO portunes_identifier VALUES(3933,'Tanımsız kart','12581880',0,2,'2017-08-22 09:17:53.977000',1);
INSERT INTO portunes_identifier VALUES(3934,'Tanımsız kart','5205679',0,2,'2017-08-22 09:17:54.054000',1);
INSERT INTO portunes_identifier VALUES(3935,'Tanımsız kart','8122350',0,2,'2017-08-22 09:17:54.130000',1);
INSERT INTO portunes_identifier VALUES(3936,'Tanımsız kart','8323035',0,2,'2017-08-22 09:17:54.207000',1);
INSERT INTO portunes_identifier VALUES(3937,'Tanımsız kart','4793610',0,2,'2017-08-22 09:17:54.284000',1);
INSERT INTO portunes_identifier VALUES(3938,'Tanımsız kart','12449631',0,2,'2017-08-22 09:17:54.361000',1);
INSERT INTO portunes_identifier VALUES(3939,'Tanımsız kart','15331311',0,2,'2017-08-22 09:17:54.438000',1);
INSERT INTO portunes_identifier VALUES(3940,'Tanımsız kart','9065770',0,2,'2017-08-22 09:17:54.514000',1);
INSERT INTO portunes_identifier VALUES(3941,'Tanımsız kart','16769007',0,2,'2017-08-22 09:17:54.592000',1);
INSERT INTO portunes_identifier VALUES(3942,'Tanımsız kart','14612445',0,2,'2017-08-22 09:17:54.669000',1);
INSERT INTO portunes_identifier VALUES(3943,'Tanımsız kart','16644975',0,2,'2017-08-22 09:17:54.746000',1);
INSERT INTO portunes_identifier VALUES(3944,'Tanımsız kart','11744414',0,2,'2017-08-22 09:17:54.822000',1);
INSERT INTO portunes_identifier VALUES(3945,'Tanımsız kart','14663546',0,2,'2017-08-22 09:17:54.899000',1);
INSERT INTO portunes_identifier VALUES(3946,'Tanımsız kart','10485435',0,2,'2017-08-22 09:17:54.976000',1);
INSERT INTO portunes_identifier VALUES(3947,'Tanımsız kart','15456236',0,2,'2017-08-22 09:17:55.053000',1);
INSERT INTO portunes_identifier VALUES(3948,'Tanımsız kart','8999506',0,2,'2017-08-22 09:17:55.130000',1);
INSERT INTO portunes_identifier VALUES(3949,'Tanımsız kart','8353530',0,2,'2017-08-22 09:17:55.206000',1);
INSERT INTO portunes_identifier VALUES(3950,'Tanımsız kart','9786532',0,2,'2017-08-22 09:17:55.283000',1);
INSERT INTO portunes_identifier VALUES(3951,'Tanımsız kart','4760136',0,2,'2017-08-22 09:17:55.361000',1);
INSERT INTO portunes_identifier VALUES(3952,'Tanımsız kart','11447295',0,2,'2017-08-22 09:17:55.438000',1);
INSERT INTO portunes_identifier VALUES(3953,'Tanımsız kart','8109803',0,2,'2017-08-22 09:17:55.515000',1);
INSERT INTO portunes_identifier VALUES(3954,'Tanımsız kart','14154643',0,2,'2017-08-22 09:17:55.592000',1);
INSERT INTO portunes_identifier VALUES(3955,'Tanımsız kart','5571877',0,2,'2017-08-22 09:17:55.669000',1);
INSERT INTO portunes_identifier VALUES(3956,'Tanımsız kart','4793417',0,2,'2017-08-22 09:17:55.897000',1);
INSERT INTO portunes_identifier VALUES(3957,'Tanımsız kart','10521226',0,2,'2017-08-22 09:17:56.203000',1);
INSERT INTO portunes_identifier VALUES(3958,'Tanımsız kart','16506621',0,2,'2017-08-22 09:17:56.281000',1);
INSERT INTO portunes_identifier VALUES(3959,'Tanımsız kart','591188',0,2,'2017-08-22 09:17:56.357000',1);
INSERT INTO portunes_identifier VALUES(3960,'Tanımsız kart','2705480',0,2,'2017-08-22 09:17:56.434000',1);
INSERT INTO portunes_identifier VALUES(3961,'Tanımsız kart','15425275',0,2,'2017-08-22 09:17:56.512000',1);
INSERT INTO portunes_identifier VALUES(3962,'Tanımsız kart','2708040',0,2,'2017-08-22 09:17:56.589000',1);
INSERT INTO portunes_identifier VALUES(3963,'Tanımsız kart','14596987',0,2,'2017-08-22 09:17:56.666000',1);
INSERT INTO portunes_identifier VALUES(3964,'Tanımsız kart','16768895',0,2,'2017-08-22 09:17:56.742000',1);
INSERT INTO portunes_identifier VALUES(3965,'Tanımsız kart','12300118',0,2,'2017-08-22 09:17:56.819000',1);
INSERT INTO portunes_identifier VALUES(3966,'Tanımsız kart','4867141',0,2,'2017-08-22 09:17:56.896000',1);
INSERT INTO portunes_identifier VALUES(3967,'Tanımsız kart','11534043',0,2,'2017-08-22 09:17:56.973000',1);
INSERT INTO portunes_identifier VALUES(3968,'Tanımsız kart','12582903',0,2,'2017-08-22 09:17:57.050000',1);
INSERT INTO portunes_identifier VALUES(3969,'Tanımsız kart','10411966',0,2,'2017-08-22 09:17:57.126000',1);
INSERT INTO portunes_identifier VALUES(3970,'Tanımsız kart','15400886',0,2,'2017-08-22 09:17:57.203000',1);
INSERT INTO portunes_identifier VALUES(3971,'Tanımsız kart','12565885',0,2,'2017-08-22 09:17:57.281000',1);
INSERT INTO portunes_identifier VALUES(3972,'Tanımsız kart','16214999',0,2,'2017-08-22 09:17:57.357000',1);
INSERT INTO portunes_identifier VALUES(3973,'Tanımsız kart','1198665',0,2,'2017-08-22 09:17:57.435000',1);
INSERT INTO portunes_identifier VALUES(3974,'Tanımsız kart','7863151',0,2,'2017-08-22 09:17:57.512000',1);
INSERT INTO portunes_identifier VALUES(3975,'Tanımsız kart','16082862',0,2,'2017-08-22 09:17:57.589000',1);
INSERT INTO portunes_identifier VALUES(3976,'Tanımsız kart','4713467',0,2,'2017-08-22 09:17:57.665000',1);
INSERT INTO portunes_identifier VALUES(3977,'Tanımsız kart','4858002',0,2,'2017-08-22 09:17:57.742000',1);
INSERT INTO portunes_identifier VALUES(3978,'Tanımsız kart','4802856',0,2,'2017-08-22 09:17:57.819000',1);
INSERT INTO portunes_identifier VALUES(3979,'Tanımsız kart','5926550',0,2,'2017-08-22 09:17:57.973000',1);
INSERT INTO portunes_identifier VALUES(3980,'Tanımsız kart','1378634',0,2,'2017-08-22 09:17:58.050000',1);
INSERT INTO portunes_identifier VALUES(3981,'Tanımsız kart','16701363',0,2,'2017-08-22 09:17:58.128000',1);
INSERT INTO portunes_identifier VALUES(3982,'Tanımsız kart','15317861',0,2,'2017-08-22 09:17:58.281000',1);
INSERT INTO portunes_identifier VALUES(3983,'Tanımsız kart','2396458',0,2,'2017-08-22 09:17:58.357000',1);
INSERT INTO portunes_identifier VALUES(3984,'Tanımsız kart','2337675',0,2,'2017-08-22 09:17:58.589000',1);
INSERT INTO portunes_identifier VALUES(3985,'Tanımsız kart','11094693',0,2,'2017-08-22 09:17:59.199000',1);
INSERT INTO portunes_identifier VALUES(3986,'Tanımsız kart','6989377',0,2,'2017-08-22 09:17:59.581000',1);
INSERT INTO portunes_identifier VALUES(3987,'Tanımsız kart','2377897',0,2,'2017-08-22 09:17:59.886000',1);
INSERT INTO portunes_identifier VALUES(3988,'Tanımsız kart','5522568',0,2,'2017-08-22 09:18:00.039000',1);
INSERT INTO portunes_identifier VALUES(3989,'Tanımsız kart','9586962',0,2,'2017-08-22 09:18:00.573000',1);
INSERT INTO portunes_identifier VALUES(3990,'Tanımsız kart','16710647',0,2,'2017-08-22 09:18:00.803000',1);
INSERT INTO portunes_identifier VALUES(3991,'Tanımsız kart','2705698',0,2,'2017-08-22 09:18:00.880000',1);
INSERT INTO portunes_identifier VALUES(3992,'Tanımsız kart','5542180',0,2,'2017-08-22 09:18:00.957000',1);
INSERT INTO portunes_identifier VALUES(3993,'Tanımsız kart','12508645',0,2,'2017-08-22 09:18:01.034000',1);
INSERT INTO portunes_identifier VALUES(3994,'Tanımsız kart','14089213',0,2,'2017-08-22 09:18:01.111000',1);
INSERT INTO portunes_identifier VALUES(3995,'Tanımsız kart','7992155',0,2,'2017-08-22 09:18:01.188000',1);
INSERT INTO portunes_identifier VALUES(3996,'Tanımsız kart','5313608',0,2,'2017-08-22 09:18:01.265000',1);
INSERT INTO portunes_identifier VALUES(3997,'Tanımsız kart','14512061',0,2,'2017-08-22 09:18:01.342000',1);
INSERT INTO portunes_identifier VALUES(3998,'Tanımsız kart','11197438',0,2,'2017-08-22 09:18:01.419000',1);
INSERT INTO portunes_identifier VALUES(3999,'Tanımsız kart','4868389',0,2,'2017-08-22 09:18:01.573000',1);
INSERT INTO portunes_identifier VALUES(4000,'Tanımsız kart','11076738',0,2,'2017-08-22 09:18:01.878000',1);
INSERT INTO portunes_identifier VALUES(4001,'Tanımsız kart','9719824',0,2,'2017-08-22 09:18:02.343000',1);
INSERT INTO portunes_identifier VALUES(4002,'Tanımsız kart','4892809',0,2,'2017-08-22 09:18:02.420000',1);
INSERT INTO portunes_identifier VALUES(4003,'Tanımsız kart','598354',0,2,'2017-08-22 09:18:02.498000',1);
INSERT INTO portunes_identifier VALUES(4004,'Tanımsız kart','2696337',0,2,'2017-08-22 10:17:34.894000',1);
INSERT INTO portunes_identifier VALUES(4005,'Tanımsız kart','9736869',0,2,'2017-08-22 10:17:34.973000',1);
INSERT INTO portunes_identifier VALUES(4006,'Tanımsız kart','5579914',0,2,'2017-08-22 10:17:35.130000',1);
INSERT INTO portunes_identifier VALUES(4007,'Tanımsız kart','15390715',0,2,'2017-08-22 11:13:14.363000',1);
INSERT INTO portunes_identifier VALUES(4008,'Tanımsız kart','5511146',0,2,'2017-08-22 11:41:01.745000',1);
INSERT INTO portunes_identifier VALUES(4009,'Tanımsız kart','5511165',0,2,'2017-08-22 11:41:01.822000',1);
INSERT INTO portunes_identifier VALUES(4010,'Tanımsız kart','15461355',0,2,'2017-08-22 12:09:32.681000',1);
INSERT INTO portunes_identifier VALUES(4011,'Tanımsız kart','16346871',0,2,'2017-08-22 12:09:32.770000',1);
INSERT INTO portunes_identifier VALUES(4012,'Tanımsız kart','16440024',0,2,'2017-08-22 13:48:17.431000',1);
INSERT INTO portunes_identifier VALUES(4013,'Tanımsız kart','16506878',0,2,'2017-08-22 15:28:44.232000',1);
INSERT INTO portunes_identifier VALUES(4014,'Tanımsız kart','16711166',0,2,'2017-08-22 15:28:44.309000',1);
INSERT INTO portunes_identifier VALUES(4015,'Tanımsız kart','14595415',0,2,'2017-08-22 15:28:45.094000',1);
INSERT INTO portunes_identifier VALUES(4016,'Tanımsız kart','15694719',0,2,'2017-08-22 15:28:45.172000',1);
INSERT INTO portunes_identifier VALUES(4017,'Tanımsız kart','16183231',0,2,'2017-08-22 15:28:45.250000',1);
INSERT INTO portunes_identifier VALUES(4018,'Tanımsız kart','14002858',0,2,'2017-08-22 17:08:43.306000',1);
INSERT INTO portunes_identifier VALUES(4019,'Tanımsız kart','7059453',0,2,'2017-08-22 17:08:43.433000',1);
INSERT INTO portunes_identifier VALUES(4020,'Tanımsız kart','10674133',0,2,'2017-08-22 19:29:40.393000',1);
INSERT INTO portunes_identifier VALUES(4021,'Tanımsız kart','9585706',0,2,'2017-08-22 19:29:40.785000',1);
INSERT INTO portunes_identifier VALUES(4022,'Tanımsız kart','2446628',0,2,'2017-08-22 19:29:41.254000',1);
INSERT INTO portunes_identifier VALUES(4023,'Tanımsız kart','11888053',0,2,'2017-08-22 19:29:41.332000',1);
INSERT INTO portunes_identifier VALUES(4024,'Tanımsız kart','5647223',0,2,'2017-08-22 19:29:43.209000',1);
INSERT INTO portunes_identifier VALUES(4025,'Tanımsız kart','11885225',0,2,'2017-08-23 12:16:35.327000',1);
INSERT INTO portunes_identifier VALUES(4026,'Tanımsız kart','5592210',0,2,'2017-08-23 12:16:35.404000',1);
INSERT INTO portunes_identifier VALUES(4027,'Tanımsız kart','14513514',0,2,'2017-08-23 12:16:35.481000',1);
INSERT INTO portunes_identifier VALUES(4028,'Tanımsız kart','10837421',0,2,'2017-08-23 12:16:35.558000',1);
INSERT INTO portunes_identifier VALUES(4029,'Tanımsız kart','8423722',0,2,'2017-08-23 12:16:43.111000',1);
INSERT INTO portunes_identifier VALUES(4030,'Tanımsız kart','16431103',0,2,'2017-08-23 12:16:43.340000',1);
INSERT INTO portunes_identifier VALUES(4031,'Tanımsız kart','4500034',0,2,'2017-08-23 12:16:43.493000',1);
INSERT INTO portunes_identifier VALUES(4032,'Tanımsız kart','16776886',0,2,'2017-08-23 12:16:43.569000',1);
INSERT INTO portunes_identifier VALUES(4033,'Tanımsız kart','5546058',0,2,'2017-08-23 12:16:43.646000',1);
INSERT INTO portunes_identifier VALUES(4034,'Tanımsız kart','16515070',0,2,'2017-08-23 12:16:43.723000',1);
INSERT INTO portunes_identifier VALUES(4035,'Tanımsız kart','16117749',0,2,'2017-08-23 12:16:44.029000',1);
INSERT INTO portunes_identifier VALUES(4036,'Tanımsız kart','16449407',0,2,'2017-08-23 12:16:44.183000',1);
INSERT INTO portunes_identifier VALUES(4037,'Tanımsız kart','16768702',0,2,'2017-08-23 12:16:44.260000',1);
INSERT INTO portunes_identifier VALUES(4038,'Tanımsız kart','15629687',0,2,'2017-08-23 12:16:44.337000',1);
INSERT INTO portunes_identifier VALUES(4039,'Tanımsız kart','4976246',0,2,'2017-08-23 12:16:44.414000',1);
INSERT INTO portunes_identifier VALUES(4040,'Tanımsız kart','6117085',0,2,'2017-08-23 12:16:44.490000',1);
INSERT INTO portunes_identifier VALUES(4041,'Tanımsız kart','7254014',0,2,'2017-08-23 12:16:44.568000',1);
INSERT INTO portunes_identifier VALUES(4042,'Tanımsız kart','16775037',0,2,'2017-08-23 12:16:44.645000',1);
INSERT INTO portunes_identifier VALUES(4043,'Tanımsız kart','14121916',0,2,'2017-08-23 12:16:44.722000',1);
INSERT INTO portunes_identifier VALUES(4044,'Tanımsız kart','16064366',0,2,'2017-08-23 12:16:44.798000',1);
INSERT INTO portunes_identifier VALUES(4045,'Tanımsız kart','4893009',0,2,'2017-08-23 12:16:44.875000',1);
INSERT INTO portunes_identifier VALUES(4046,'Tanımsız kart','12500447',0,2,'2017-08-23 12:16:44.952000',1);
INSERT INTO portunes_identifier VALUES(4047,'Tanımsız kart','14146549',0,2,'2017-08-23 12:16:45.029000',1);
INSERT INTO portunes_identifier VALUES(4048,'Tanımsız kart','6285179',0,2,'2017-08-23 12:16:45.106000',1);
INSERT INTO portunes_identifier VALUES(4049,'Tanımsız kart','15955839',0,2,'2017-08-23 12:16:45.183000',1);
INSERT INTO portunes_identifier VALUES(4050,'Tanımsız kart','4169214',0,2,'2017-08-23 12:16:45.261000',1);
INSERT INTO portunes_identifier VALUES(4051,'Tanımsız kart','16101295',0,2,'2017-08-23 12:16:45.338000',1);
INSERT INTO portunes_identifier VALUES(4052,'Tanımsız kart','11263959',0,2,'2017-08-23 12:16:45.414000',1);
INSERT INTO portunes_identifier VALUES(4053,'Tanımsız kart','16709548',0,2,'2017-08-23 13:16:44.037000',1);
INSERT INTO portunes_identifier VALUES(4054,'Tanımsız kart','14330613',0,2,'2017-08-23 13:16:44.296000',1);
INSERT INTO portunes_identifier VALUES(4055,'Tanımsız kart','14679037',0,2,'2017-08-23 15:38:02.097000',1);
INSERT INTO portunes_identifier VALUES(4056,'Tanımsız kart','15596955',0,2,'2017-08-23 16:05:51.314000',1);
INSERT INTO portunes_identifier VALUES(4057,'Tanımsız kart','16111358',0,2,'2017-08-23 16:05:51.392000',1);
INSERT INTO portunes_identifier VALUES(4058,'Tanımsız kart','15710143',0,2,'2017-08-23 16:34:23.859000',1);
INSERT INTO portunes_identifier VALUES(4059,'Tanımsız kart','16645821',0,2,'2017-08-23 17:02:12.776000',1);
INSERT INTO portunes_identifier VALUES(4060,'Tanımsız kart','5417618',0,2,'2017-08-23 18:54:14.038000',1);
INSERT INTO portunes_identifier VALUES(4061,'Tanımsız kart','1200674',0,2,'2017-08-23 19:22:44.436000',1);
INSERT INTO portunes_identifier VALUES(4062,'Tanımsız kart','1377450',0,2,'2017-08-23 20:47:00.149000',1);
INSERT INTO portunes_identifier VALUES(4063,'Tanımsız kart','1502071',0,2,'2017-08-23 23:07:27.412000',1);
INSERT INTO portunes_identifier VALUES(4064,'Tanımsız kart','11972095',0,2,'2017-08-24 01:27:16.913000',1);
INSERT INTO portunes_identifier VALUES(4065,'Tanımsız kart','6288221',0,2,'2017-08-24 02:42:25.957000',1);
INSERT INTO portunes_identifier VALUES(4066,'Tanımsız kart','2756930',0,2,'2017-08-24 03:31:17.025000',1);
INSERT INTO portunes_identifier VALUES(4067,'Tanımsız kart','16514653',0,2,'2017-08-24 04:21:03.450000',1);
INSERT INTO portunes_identifier VALUES(4068,'Tanımsız kart','7690709',0,2,'2017-08-24 06:51:13.308000',1);
INSERT INTO portunes_identifier VALUES(4069,'Tanımsız kart','12532572',0,2,'2017-08-24 06:51:13.824000',1);
INSERT INTO portunes_identifier VALUES(4070,'Tanımsız kart','12966911',0,2,'2017-08-24 08:31:17.395000',1);
INSERT INTO portunes_identifier VALUES(4071,'Tanımsız kart','764469',0,2,'2017-08-24 09:21:33.173000',1);
INSERT INTO portunes_identifier VALUES(4072,'Tanımsız kart','12407435',0,2,'2017-08-24 09:21:33.767000',1);
INSERT INTO portunes_identifier VALUES(4073,'Tanımsız kart','7040815',0,2,'2017-08-24 09:21:33.924000',1);
INSERT INTO portunes_identifier VALUES(4074,'Tanımsız kart','11171565',0,2,'2017-08-24 09:21:34.001000',1);
INSERT INTO portunes_identifier VALUES(4075,'Tanımsız kart','8181439',0,2,'2017-08-24 09:21:34.079000',1);
INSERT INTO portunes_identifier VALUES(4076,'Tanımsız kart','16498598',0,2,'2017-08-24 09:21:34.156000',1);
INSERT INTO portunes_identifier VALUES(4077,'Tanımsız kart','16733687',0,2,'2017-08-24 11:01:35.459000',1);
INSERT INTO portunes_identifier VALUES(4078,'Tanımsız kart','16178791',0,2,'2017-08-24 11:51:11.220000',1);
INSERT INTO portunes_identifier VALUES(4079,'Tanımsız kart','14637054',0,2,'2017-08-24 12:41:23.276000',1);
INSERT INTO portunes_identifier VALUES(4080,'Tanımsız kart','11185833',0,2,'2017-08-24 13:50:01.220000',1);
INSERT INTO portunes_identifier VALUES(4081,'Tanımsız kart','5592435',0,2,'2017-08-24 13:50:01.298000',1);
INSERT INTO portunes_identifier VALUES(4082,'Tanımsız kart','15596350',0,2,'2017-08-24 13:50:01.375000',1);
INSERT INTO portunes_identifier VALUES(4083,'Tanımsız kart','12844713',0,2,'2017-08-24 13:50:02.070000',1);
INSERT INTO portunes_identifier VALUES(4084,'Tanımsız kart','16743789',0,2,'2017-08-24 15:04:58.743000',1);
INSERT INTO portunes_identifier VALUES(4085,'Tanımsız kart','16438695',0,2,'2017-08-24 15:04:58.898000',1);
INSERT INTO portunes_identifier VALUES(4086,'Tanımsız kart','8253407',0,2,'2017-08-24 16:18:54.092000',1);
INSERT INTO portunes_identifier VALUES(4087,'Tanımsız kart','5594863',0,2,'2017-08-24 17:33:58.172000',1);
INSERT INTO portunes_identifier VALUES(4088,'Tanımsız kart','16641390',0,2,'2017-08-24 17:33:58.249000',1);
INSERT INTO portunes_identifier VALUES(4089,'Tanımsız kart','13991742',0,2,'2017-08-24 17:33:58.327000',1);
INSERT INTO portunes_identifier VALUES(4090,'Tanımsız kart','16706519',0,2,'2017-08-24 18:49:05.701000',1);
INSERT INTO portunes_identifier VALUES(4091,'Tanımsız kart','16645851',0,2,'2017-08-24 20:04:16.132000',1);
INSERT INTO portunes_identifier VALUES(4092,'Tanımsız kart','12251005',0,2,'2017-08-24 23:49:23.636000',1);
INSERT INTO portunes_identifier VALUES(4093,'Tanımsız kart','14137015',0,2,'2017-08-25 01:04:32.324000',1);
INSERT INTO portunes_identifier VALUES(4094,'Tanımsız kart','4185967',0,2,'2017-08-25 01:04:32.402000',1);
INSERT INTO portunes_identifier VALUES(4095,'Tanımsız kart','8125823',0,2,'2017-08-25 02:19:40.897000',1);
INSERT INTO portunes_identifier VALUES(4096,'Tanımsız kart','599122',0,2,'2017-08-25 02:19:40.975000',1);
INSERT INTO portunes_identifier VALUES(4097,'Tanımsız kart','16236535',0,2,'2017-08-25 03:34:50.600000',1);
INSERT INTO portunes_identifier VALUES(4098,'Tanımsız kart','4871304',0,2,'2017-08-25 06:04:46.566000',1);
INSERT INTO portunes_identifier VALUES(4099,'Tanımsız kart','279626',0,2,'2017-08-25 06:04:46.644000',1);
INSERT INTO portunes_identifier VALUES(4100,'Tanımsız kart','16103062',0,2,'2017-08-25 06:04:46.721000',1);
INSERT INTO portunes_identifier VALUES(4101,'Tanımsız kart','11187370',0,2,'2017-08-25 07:19:46.727000',1);
INSERT INTO portunes_identifier VALUES(4102,'Tanımsız kart','14939631',0,2,'2017-08-25 07:19:47.085000',1);
INSERT INTO portunes_identifier VALUES(4103,'Tanımsız kart','2359441',0,2,'2017-08-25 07:19:47.163000',1);
INSERT INTO portunes_identifier VALUES(4104,'Tanımsız kart','6701402',0,2,'2017-08-25 08:30:50.722000',1);
INSERT INTO portunes_identifier VALUES(4105,'Tanımsız kart','14116221',0,2,'2017-08-25 09:41:01.670000',1);
INSERT INTO portunes_identifier VALUES(4106,'Tanımsız kart','6291439',0,2,'2017-08-25 10:51:11.372000',1);
INSERT INTO portunes_identifier VALUES(4107,'Tanımsız kart','16689456',0,2,'2017-08-25 12:01:09.909000',1);
INSERT INTO portunes_identifier VALUES(4108,'Tanımsız kart','12495152',0,2,'2017-08-25 12:01:09.987000',1);
INSERT INTO portunes_identifier VALUES(4109,'Tanımsız kart','16625247',0,2,'2017-08-25 12:01:10.473000',1);
INSERT INTO portunes_identifier VALUES(4110,'Tanımsız kart','15951741',0,2,'2017-08-25 12:01:10.550000',1);
INSERT INTO portunes_identifier VALUES(4111,'Tanımsız kart','12318715',0,2,'2017-08-25 17:13:18.498000',1);
INSERT INTO portunes_identifier VALUES(4112,'Tanımsız kart','4616145',0,2,'2017-08-25 19:05:50.392000',1);
INSERT INTO portunes_identifier VALUES(4113,'Tanımsız kart','11094314',0,2,'2017-08-25 19:05:50.470000',1);
INSERT INTO portunes_identifier VALUES(4114,'Tanımsız kart','2394697',0,2,'2017-08-25 19:05:50.548000',1);
INSERT INTO portunes_identifier VALUES(4115,'Tanımsız kart','6221143',0,2,'2017-08-25 20:58:17.501000',1);
INSERT INTO portunes_identifier VALUES(4116,'Tanımsız kart','12244439',0,2,'2017-08-25 22:51:02.171000',1);
INSERT INTO portunes_identifier VALUES(4117,'Tanımsız kart','15447639',0,2,'2017-08-26 00:43:43.597000',1);
INSERT INTO portunes_identifier VALUES(4118,'Tanımsız kart','11009535',0,2,'2017-08-26 00:43:43.675000',1);
INSERT INTO portunes_identifier VALUES(4119,'Tanımsız kart','14548735',0,2,'2017-08-26 04:28:52.786000',1);
INSERT INTO portunes_identifier VALUES(4120,'Tanımsız kart','1049106',0,2,'2017-08-26 04:28:52.863000',1);
INSERT INTO portunes_identifier VALUES(4121,'Tanımsız kart','5264722',0,2,'2017-08-26 06:21:37.231000',1);
INSERT INTO portunes_identifier VALUES(4122,'Tanımsız kart','5243008',0,2,'2017-08-26 08:13:54.086000',1);
INSERT INTO portunes_identifier VALUES(4123,'Tanımsız kart','526368',0,2,'2017-08-26 08:13:54.862000',1);
INSERT INTO portunes_identifier VALUES(4124,'Tanımsız kart','5391636',0,2,'2017-08-26 10:06:40.841000',1);
INSERT INTO portunes_identifier VALUES(4125,'Tanımsız kart','8554665',0,2,'2017-08-26 11:59:23.952000',1);
INSERT INTO portunes_identifier VALUES(4126,'Tanımsız kart','6290423',0,2,'2017-08-26 11:59:24.029000',1);
INSERT INTO portunes_identifier VALUES(4127,'Tanımsız kart','16349070',0,2,'2017-08-26 13:52:04.146000',1);
INSERT INTO portunes_identifier VALUES(4128,'Tanımsız kart','11788982',0,2,'2017-08-26 13:52:04.223000',1);
INSERT INTO portunes_identifier VALUES(4129,'Tanımsız kart','9788074',0,2,'2017-08-26 15:51:15.981000',1);
INSERT INTO portunes_identifier VALUES(4130,'Tanımsız kart','1049098',0,2,'2017-08-26 15:51:16.108000',1);
INSERT INTO portunes_identifier VALUES(4131,'Tanımsız kart','11084881',0,2,'2017-08-26 15:51:16.264000',1);
INSERT INTO portunes_identifier VALUES(4132,'Tanımsız kart','13481903',0,2,'2017-08-26 15:51:16.342000',1);
INSERT INTO portunes_identifier VALUES(4133,'Tanımsız kart','4871426',0,2,'2017-08-26 19:36:41.734000',1);
INSERT INTO portunes_identifier VALUES(4134,'Tanımsız kart','14646238',0,2,'2017-08-26 19:36:41.811000',1);
INSERT INTO portunes_identifier VALUES(4135,'Tanımsız kart','12422059',0,2,'2017-08-26 19:36:41.889000',1);
INSERT INTO portunes_identifier VALUES(4136,'Tanımsız kart','4477513',0,2,'2017-08-26 19:36:41.966000',1);
INSERT INTO portunes_identifier VALUES(4137,'Tanımsız kart','16741423',0,2,'2017-08-26 23:21:42.846000',1);
INSERT INTO portunes_identifier VALUES(4138,'Tanımsız kart','279074',0,2,'2017-08-26 23:21:42.924000',1);
INSERT INTO portunes_identifier VALUES(4139,'Tanımsız kart','14598122',0,2,'2017-08-26 23:21:43.002000',1);
INSERT INTO portunes_identifier VALUES(4140,'Tanımsız kart','13499898',0,2,'2017-08-26 23:21:43.080000',1);
INSERT INTO portunes_identifier VALUES(4141,'Tanımsız kart','16613245',0,2,'2017-08-27 03:06:54.929000',1);
INSERT INTO portunes_identifier VALUES(4142,'Tanımsız kart','14659454',0,2,'2017-08-27 03:06:55.007000',1);
INSERT INTO portunes_identifier VALUES(4143,'Tanımsız kart','15349622',0,2,'2017-08-27 03:06:55.084000',1);
INSERT INTO portunes_identifier VALUES(4144,'Tanımsız kart','16514990',0,2,'2017-08-27 03:06:55.162000',1);
INSERT INTO portunes_identifier VALUES(4145,'Tanımsız kart','16514557',0,2,'2017-08-27 03:06:55.239000',1);
INSERT INTO portunes_identifier VALUES(4146,'Tanımsız kart','2115717',0,2,'2017-08-27 03:06:55.317000',1);
INSERT INTO portunes_identifier VALUES(4147,'Tanımsız kart','16612095',0,2,'2017-08-27 03:06:55.395000',1);
INSERT INTO portunes_identifier VALUES(4148,'Tanımsız kart','16539375',0,2,'2017-08-27 06:52:24.825000',1);
INSERT INTO portunes_identifier VALUES(4149,'Tanımsız kart','10790914',0,2,'2017-08-27 06:52:24.903000',1);
INSERT INTO portunes_identifier VALUES(4150,'Tanımsız kart','10834577',0,2,'2017-08-27 06:52:24.981000',1);
INSERT INTO portunes_identifier VALUES(4151,'Tanımsız kart','14122839',0,2,'2017-08-27 06:52:25.059000',1);
INSERT INTO portunes_identifier VALUES(4152,'Tanımsız kart','8912730',0,2,'2017-08-27 06:52:25.138000',1);
INSERT INTO portunes_identifier VALUES(4153,'Tanımsız kart','7142909',0,2,'2017-08-27 10:37:30.619000',1);
INSERT INTO portunes_identifier VALUES(4154,'Tanımsız kart','2051967',0,2,'2017-08-27 10:37:30.697000',1);
INSERT INTO portunes_identifier VALUES(4155,'Tanımsız kart','16199530',0,2,'2017-08-27 10:37:30.775000',1);
INSERT INTO portunes_identifier VALUES(4156,'Tanımsız kart','14679918',0,2,'2017-08-27 10:37:30.853000',1);
INSERT INTO portunes_identifier VALUES(4157,'Tanımsız kart','5695322',0,2,'2017-08-27 10:37:30.931000',1);
INSERT INTO portunes_identifier VALUES(4158,'Tanımsız kart','16575483',0,2,'2017-08-27 14:22:37.433000',1);
INSERT INTO portunes_identifier VALUES(4159,'Tanımsız kart','11460523',0,2,'2017-08-27 14:22:37.511000',1);
INSERT INTO portunes_identifier VALUES(4160,'Tanımsız kart','14675831',0,2,'2017-08-27 18:07:38.502000',1);
INSERT INTO portunes_identifier VALUES(4161,'Tanımsız kart','16686039',0,2,'2017-08-27 18:07:38.580000',1);
INSERT INTO portunes_identifier VALUES(4162,'Tanımsız kart','14529407',0,2,'2017-08-27 18:07:38.657000',1);
INSERT INTO portunes_identifier VALUES(4163,'Tanımsız kart','1132706',0,2,'2017-08-27 18:07:38.735000',1);
INSERT INTO portunes_identifier VALUES(4164,'Tanımsız kart','10768658',0,2,'2017-08-27 18:07:38.812000',1);
INSERT INTO portunes_identifier VALUES(4165,'Tanımsız kart','1188132',0,2,'2017-08-27 18:07:38.890000',1);
INSERT INTO portunes_identifier VALUES(4166,'Tanımsız kart','15589359',0,2,'2017-08-27 21:52:48.682000',1);
INSERT INTO portunes_identifier VALUES(4167,'Tanımsız kart','16706269',0,2,'2017-08-27 21:52:48.759000',1);
INSERT INTO portunes_identifier VALUES(4168,'Tanımsız kart','16719706',0,2,'2017-08-27 21:52:48.837000',1);
INSERT INTO portunes_identifier VALUES(4169,'Tanımsız kart','15125195',0,2,'2017-08-27 21:52:48.915000',1);
INSERT INTO portunes_identifier VALUES(4170,'Tanımsız kart','8101375',0,2,'2017-08-27 21:52:48.993000',1);
INSERT INTO portunes_identifier VALUES(4171,'Tanımsız kart','14147583',0,2,'2017-08-27 21:52:49.073000',1);
INSERT INTO portunes_identifier VALUES(4172,'Tanımsız kart','8186359',0,2,'2017-08-27 21:52:49.151000',1);
INSERT INTO portunes_identifier VALUES(4173,'Tanımsız kart','7779311',0,2,'2017-08-28 01:38:29.184000',1);
INSERT INTO portunes_identifier VALUES(4174,'Tanımsız kart','16438267',0,2,'2017-08-28 01:38:29.261000',1);
INSERT INTO portunes_identifier VALUES(4175,'Tanımsız kart','15555431',0,2,'2017-08-28 01:38:29.338000',1);
INSERT INTO portunes_identifier VALUES(4176,'Tanımsız kart','2638869',0,2,'2017-08-28 01:38:29.416000',1);
INSERT INTO portunes_identifier VALUES(4177,'Tanımsız kart','16699381',0,2,'2017-08-28 01:38:29.494000',1);
INSERT INTO portunes_identifier VALUES(4178,'Tanımsız kart','8464682',0,2,'2017-08-28 05:23:54.791000',1);
INSERT INTO portunes_identifier VALUES(4179,'Tanımsız kart','16506227',0,2,'2017-08-28 05:23:54.869000',1);
INSERT INTO portunes_identifier VALUES(4180,'Tanımsız kart','6204543',0,2,'2017-08-28 09:08:42.311000',1);
INSERT INTO portunes_identifier VALUES(4181,'Tanımsız kart','10627657',0,2,'2017-08-28 09:08:42.672000',1);
INSERT INTO portunes_identifier VALUES(4182,'Tanımsız kart','11150506',0,2,'2017-08-28 09:08:42.750000',1);
INSERT INTO portunes_identifier VALUES(4183,'Tanımsız kart','11075880',0,2,'2017-08-28 09:08:42.828000',1);
INSERT INTO portunes_identifier VALUES(4184,'Tanımsız kart','6258555',0,2,'2017-08-28 09:08:42.905000',1);
INSERT INTO portunes_identifier VALUES(4185,'Tanımsız kart','15564762',0,2,'2017-08-28 09:08:42.983000',1);
INSERT INTO portunes_identifier VALUES(4186,'Tanımsız kart','7239573',0,2,'2017-08-28 09:08:43.061000',1);
INSERT INTO portunes_identifier VALUES(4187,'Tanımsız kart','16703471',0,2,'2017-08-28 12:54:06.916000',1);
INSERT INTO portunes_identifier VALUES(4188,'Tanımsız kart','9479330',0,2,'2017-08-28 12:54:06.993000',1);
INSERT INTO portunes_identifier VALUES(4189,'Tanımsız kart','15883829',0,2,'2017-08-28 12:54:07.070000',1);
INSERT INTO portunes_identifier VALUES(4190,'Tanımsız kart','8379069',0,2,'2017-08-28 12:54:07.149000',1);
INSERT INTO portunes_identifier VALUES(4191,'Tanımsız kart','14150527',0,2,'2017-08-28 16:38:51.942000',1);
INSERT INTO portunes_identifier VALUES(4192,'Tanımsız kart','8379631',0,2,'2017-08-28 16:38:52.021000',1);
INSERT INTO portunes_identifier VALUES(4193,'Tanımsız kart','4176606',0,2,'2017-08-28 16:38:52.177000',1);
INSERT INTO portunes_identifier VALUES(4194,'Tanımsız kart','8389770',0,2,'2017-08-28 16:38:52.255000',1);
INSERT INTO portunes_identifier VALUES(4195,'Tanımsız kart','15187963',0,2,'2017-08-28 16:38:52.333000',1);
INSERT INTO portunes_identifier VALUES(4196,'Tanımsız kart','4540706',0,2,'2017-08-28 16:38:52.411000',1);
INSERT INTO portunes_identifier VALUES(4197,'Tanımsız kart','12434359',0,2,'2017-08-28 20:23:36.961000',1);
INSERT INTO portunes_identifier VALUES(4198,'Tanımsız kart','8735393',0,2,'2017-08-28 20:23:37.039000',1);
INSERT INTO portunes_identifier VALUES(4199,'Tanımsız kart','15668982',0,2,'2017-08-28 20:23:37.117000',1);
INSERT INTO portunes_identifier VALUES(4200,'Tanımsız kart','173122',0,2,'2017-08-28 20:23:37.194000',1);
INSERT INTO portunes_identifier VALUES(4201,'Tanımsız kart','14415743',0,2,'2017-08-29 00:08:56.082000',1);
INSERT INTO portunes_identifier VALUES(4202,'Tanımsız kart','12035883',0,2,'2017-08-29 00:08:56.160000',1);
INSERT INTO portunes_identifier VALUES(4203,'Tanımsız kart','8995472',0,2,'2017-08-29 03:54:25.677000',1);
INSERT INTO portunes_identifier VALUES(4204,'Tanımsız kart','14677883',0,2,'2017-08-29 03:54:25.755000',1);
INSERT INTO portunes_identifier VALUES(4205,'Tanımsız kart','12054205',0,2,'2017-08-29 03:54:25.833000',1);
INSERT INTO portunes_identifier VALUES(4206,'Tanımsız kart','13369335',0,2,'2017-08-29 07:39:53.525000',1);
INSERT INTO portunes_identifier VALUES(4207,'Tanımsız kart','5384865',0,2,'2017-08-29 07:39:53.602000',1);
INSERT INTO portunes_identifier VALUES(4208,'Tanımsız kart','14122738',0,2,'2017-08-29 07:39:53.680000',1);
INSERT INTO portunes_identifier VALUES(4209,'Tanımsız kart','16777179',0,2,'2017-08-29 11:25:19.568000',1);
INSERT INTO portunes_identifier VALUES(4210,'Tanımsız kart','14671870',0,2,'2017-08-29 11:25:19.646000',1);
INSERT INTO portunes_identifier VALUES(4211,'Tanımsız kart','16756186',0,2,'2017-08-29 11:25:19.723000',1);
INSERT INTO portunes_identifier VALUES(4212,'Tanımsız kart','16088444',0,2,'2017-08-29 11:25:19.801000',1);
INSERT INTO portunes_identifier VALUES(4213,'Tanımsız kart','6264831',0,2,'2017-08-29 15:10:46.602000',1);
INSERT INTO portunes_identifier VALUES(4214,'Tanımsız kart','7487150',0,2,'2017-08-29 15:10:46.680000',1);
INSERT INTO portunes_identifier VALUES(4215,'Tanımsız kart','8921124',0,2,'2017-08-29 15:10:46.757000',1);
INSERT INTO portunes_identifier VALUES(4216,'Tanımsız kart','4976557',0,2,'2017-08-29 15:10:46.834000',1);
INSERT INTO portunes_identifier VALUES(4217,'Tanımsız kart','11909629',0,2,'2017-08-29 15:10:46.912000',1);
INSERT INTO portunes_identifier VALUES(4218,'Tanımsız kart','8220029',0,2,'2017-08-29 18:55:43.202000',1);
INSERT INTO portunes_identifier VALUES(4219,'Tanımsız kart','14635742',0,2,'2017-08-29 18:55:43.280000',1);
INSERT INTO portunes_identifier VALUES(4220,'Tanımsız kart','12402551',0,2,'2017-08-29 18:55:43.358000',1);
INSERT INTO portunes_identifier VALUES(4221,'Tanımsız kart','16612350',0,2,'2017-08-29 18:55:43.436000',1);
INSERT INTO portunes_identifier VALUES(4222,'Tanımsız kart','7856043',0,2,'2017-08-29 22:41:11.445000',1);
INSERT INTO portunes_identifier VALUES(4223,'Tanımsız kart','6258111',0,2,'2017-08-29 22:41:11.523000',1);
INSERT INTO portunes_identifier VALUES(4224,'Tanımsız kart','16448943',0,2,'2017-08-29 22:41:11.601000',1);
INSERT INTO portunes_identifier VALUES(4225,'Tanımsız kart','16236343',0,2,'2017-08-29 22:41:11.678000',1);
INSERT INTO portunes_identifier VALUES(4226,'Tanımsız kart','8254825',0,2,'2017-08-30 02:26:33.497000',1);
INSERT INTO portunes_identifier VALUES(4227,'Tanımsız kart','6224751',0,2,'2017-08-30 02:26:33.575000',1);
INSERT INTO portunes_identifier VALUES(4228,'Tanımsız kart','11187542',0,2,'2017-08-30 02:26:33.652000',1);
INSERT INTO portunes_identifier VALUES(4229,'Tanımsız kart','11031621',0,2,'2017-08-30 02:26:33.730000',1);
INSERT INTO portunes_identifier VALUES(4230,'Tanımsız kart','4326546',0,2,'2017-08-30 06:11:19.444000',1);
INSERT INTO portunes_identifier VALUES(4231,'Tanımsız kart','2695425',0,2,'2017-08-30 06:11:19.522000',1);
INSERT INTO portunes_identifier VALUES(4232,'Tanımsız kart','10943981',0,2,'2017-08-30 06:11:19.599000',1);
INSERT INTO portunes_identifier VALUES(4233,'Tanımsız kart','5538129',0,2,'2017-08-30 06:11:19.677000',1);
INSERT INTO portunes_identifier VALUES(4234,'Tanımsız kart','16506811',0,2,'2017-08-30 06:11:19.754000',1);
INSERT INTO portunes_identifier VALUES(4235,'Tanımsız kart','15662974',0,2,'2017-08-30 06:11:19.910000',1);
INSERT INTO portunes_identifier VALUES(4236,'Tanımsız kart','12572010',0,2,'2017-08-30 09:57:24.570000',1);
INSERT INTO portunes_identifier VALUES(4237,'Tanımsız kart','12180958',0,2,'2017-08-30 09:57:24.647000',1);
INSERT INTO portunes_identifier VALUES(4238,'Tanımsız kart','5233655',0,2,'2017-08-30 09:57:24.725000',1);
INSERT INTO portunes_identifier VALUES(4239,'Tanımsız kart','16105471',0,2,'2017-08-30 09:57:24.802000',1);
INSERT INTO portunes_identifier VALUES(4240,'Tanımsız kart','152101',0,2,'2017-08-30 13:42:13.412000',1);
INSERT INTO portunes_identifier VALUES(4241,'Tanımsız kart','15432693',0,2,'2017-08-30 13:42:13.490000',1);
INSERT INTO portunes_identifier VALUES(4242,'Tanımsız kart','14413309',0,2,'2017-08-30 13:42:13.568000',1);
INSERT INTO portunes_identifier VALUES(4243,'Tanımsız kart','4859154',0,2,'2017-08-30 13:42:13.645000',1);
INSERT INTO portunes_identifier VALUES(4244,'Tanımsız kart','16236462',0,2,'2017-08-30 13:42:13.722000',1);
INSERT INTO portunes_identifier VALUES(4245,'Tanımsız kart','1320010',0,2,'2017-08-30 13:42:13.800000',1);
INSERT INTO portunes_identifier VALUES(4246,'Tanımsız kart','12441053',0,2,'2017-08-30 17:27:40.938000',1);
INSERT INTO portunes_identifier VALUES(4247,'Tanımsız kart','14661493',0,2,'2017-08-30 17:27:41.016000',1);
INSERT INTO portunes_identifier VALUES(4248,'Tanımsız kart','9472532',0,2,'2017-08-30 21:12:57.308000',1);
INSERT INTO portunes_identifier VALUES(4249,'Tanımsız kart','16773113',0,2,'2017-08-30 21:12:57.386000',1);
INSERT INTO portunes_identifier VALUES(4250,'Tanımsız kart','15456126',0,2,'2017-08-30 21:12:57.464000',1);
INSERT INTO portunes_identifier VALUES(4251,'Tanımsız kart','8110031',0,2,'2017-08-30 21:12:57.542000',1);
INSERT INTO portunes_identifier VALUES(4252,'Tanımsız kart','14483447',0,2,'2017-08-30 21:12:57.620000',1);
INSERT INTO portunes_identifier VALUES(4253,'Tanımsız kart','15464319',0,2,'2017-08-30 21:12:57.698000',1);
INSERT INTO portunes_identifier VALUES(4254,'Tanımsız kart','14137655',0,2,'2017-08-30 21:12:57.776000',1);
INSERT INTO portunes_identifier VALUES(4255,'Tanımsız kart','8989266',0,2,'2017-08-31 00:55:06.256000',1);
INSERT INTO portunes_identifier VALUES(4256,'Tanımsız kart','16474075',0,2,'2017-08-31 00:55:06.334000',1);
INSERT INTO portunes_identifier VALUES(4257,'Tanımsız kart','4784804',0,2,'2017-08-31 00:55:06.412000',1);
INSERT INTO portunes_identifier VALUES(4258,'Tanımsız kart','16591101',0,2,'2017-08-31 00:55:06.490000',1);
INSERT INTO portunes_identifier VALUES(4259,'Tanımsız kart','14122489',0,2,'2017-08-31 00:55:06.567000',1);
INSERT INTO portunes_identifier VALUES(4260,'Tanımsız kart','10783314',0,2,'2017-08-31 00:55:06.644000',1);
INSERT INTO portunes_identifier VALUES(4261,'Tanımsız kart','11263999',0,2,'2017-08-31 04:40:06.452000',1);
INSERT INTO portunes_identifier VALUES(4262,'Tanımsız kart','5127100',0,2,'2017-08-31 04:40:06.530000',1);
INSERT INTO portunes_identifier VALUES(4263,'Tanımsız kart','1386570',0,2,'2017-08-31 08:25:12.469000',1);
INSERT INTO portunes_identifier VALUES(4264,'Tanımsız kart','4883537',0,2,'2017-08-31 08:25:12.547000',1);
INSERT INTO portunes_identifier VALUES(4265,'Tanımsız kart','5313618',0,2,'2017-08-31 08:25:12.625000',1);
INSERT INTO portunes_identifier VALUES(4266,'Tanımsız kart','4852290',0,2,'2017-08-31 08:25:12.703000',1);
INSERT INTO portunes_identifier VALUES(4267,'Tanımsız kart','14659071',0,2,'2017-08-31 08:25:12.781000',1);
INSERT INTO portunes_identifier VALUES(4268,'Tanımsız kart','14613358',0,2,'2017-08-31 08:25:12.859000',1);
INSERT INTO portunes_identifier VALUES(4269,'Tanımsız kart','14466814',0,2,'2017-08-31 12:10:39.414000',1);
INSERT INTO portunes_identifier VALUES(4270,'Tanımsız kart','15970229',0,2,'2017-08-31 12:10:39.492000',1);
INSERT INTO portunes_identifier VALUES(4271,'Tanımsız kart','16744187',0,2,'2017-08-31 12:10:39.570000',1);
INSERT INTO portunes_identifier VALUES(4272,'Tanımsız kart','16694637',0,2,'2017-08-31 12:10:39.647000',1);
INSERT INTO portunes_identifier VALUES(4273,'Tanımsız kart','9084996',0,2,'2017-08-31 12:10:39.725000',1);
INSERT INTO portunes_identifier VALUES(4274,'Tanımsız kart','10551874',0,2,'2017-08-31 12:10:39.803000',1);
INSERT INTO portunes_identifier VALUES(4275,'Tanımsız kart','14120955',0,2,'2017-08-31 12:10:39.881000',1);
INSERT INTO portunes_identifier VALUES(4276,'Tanımsız kart','1082709',0,2,'2017-08-31 15:55:41.926000',1);
INSERT INTO portunes_identifier VALUES(4277,'Tanımsız kart','7843839',0,2,'2017-08-31 15:55:42.004000',1);
INSERT INTO portunes_identifier VALUES(4278,'Tanımsız kart','5237487',0,2,'2017-08-31 15:55:42.081000',1);
INSERT INTO portunes_identifier VALUES(4279,'Tanımsız kart','16736245',0,2,'2017-08-31 23:24:18.143000',1);
INSERT INTO portunes_identifier VALUES(4280,'Tanımsız kart','1354025',0,2,'2017-08-31 23:24:18.221000',1);
INSERT INTO portunes_identifier VALUES(4281,'Tanımsız kart','535044',0,2,'2017-08-31 23:24:18.299000',1);
INSERT INTO portunes_identifier VALUES(4282,'Tanımsız kart','16711615',0,2,'2017-08-31 23:24:18.377000',1);
INSERT INTO portunes_identifier VALUES(4283,'Tanımsız kart','1217169',0,2,'2017-08-31 23:24:18.455000',1);
INSERT INTO portunes_identifier VALUES(4284,'Tanımsız kart','3530735',0,2,'2017-09-01 03:09:46.367000',1);
INSERT INTO portunes_identifier VALUES(4285,'Tanımsız kart','6192822',0,2,'2017-09-01 06:54:35.956000',1);
INSERT INTO portunes_identifier VALUES(4286,'Tanımsız kart','11080341',0,2,'2017-09-01 06:54:36.033000',1);
INSERT INTO portunes_identifier VALUES(4287,'Tanımsız kart','5543058',0,2,'2017-09-01 06:54:36.111000',1);
INSERT INTO portunes_identifier VALUES(4288,'Tanımsız kart','12447183',0,2,'2017-09-01 06:54:36.188000',1);
INSERT INTO portunes_identifier VALUES(4289,'Tanımsız kart','8107775',0,2,'2017-09-01 10:38:31.308000',1);
INSERT INTO portunes_identifier VALUES(4290,'Tanımsız kart','599369',0,2,'2017-09-01 10:38:31.385000',1);
INSERT INTO portunes_identifier VALUES(4291,'Tanımsız kart','10321333',0,2,'2017-09-01 10:38:31.462000',1);
INSERT INTO portunes_identifier VALUES(4292,'Tanımsız kart','7339959',0,2,'2017-09-01 10:38:31.539000',1);
INSERT INTO portunes_identifier VALUES(4293,'Tanımsız kart','15701749',0,2,'2017-09-01 14:23:58.928000',1);
INSERT INTO portunes_identifier VALUES(4294,'Tanımsız kart','9049249',0,2,'2017-09-01 14:23:59.006000',1);
INSERT INTO portunes_identifier VALUES(4295,'Tanımsız kart','8931456',0,2,'2017-09-01 14:23:59.084000',1);
INSERT INTO portunes_identifier VALUES(4296,'Tanımsız kart','8322527',0,2,'2017-09-01 14:23:59.161000',1);
INSERT INTO portunes_identifier VALUES(4297,'Tanımsız kart','16482109',0,2,'2017-09-01 18:09:28.754000',1);
INSERT INTO portunes_identifier VALUES(4298,'Tanımsız kart','1348244',0,2,'2017-09-01 18:09:28.832000',1);
INSERT INTO portunes_identifier VALUES(4299,'Tanımsız kart','6742007',0,2,'2017-09-01 18:09:28.909000',1);
INSERT INTO portunes_identifier VALUES(4300,'Tanımsız kart','15662827',0,2,'2017-09-01 18:09:28.986000',1);
INSERT INTO portunes_identifier VALUES(4301,'Tanımsız kart','5631981',0,2,'2017-09-01 18:09:29.064000',1);
INSERT INTO portunes_identifier VALUES(4302,'Tanımsız kart','12582654',0,2,'2017-09-01 21:47:36.050000',1);
INSERT INTO portunes_identifier VALUES(4303,'Tanımsız kart','15678314',0,2,'2017-09-02 01:33:02.001000',1);
INSERT INTO portunes_identifier VALUES(4304,'Tanımsız kart','15686651',0,2,'2017-09-02 01:33:02.079000',1);
INSERT INTO portunes_identifier VALUES(4305,'Tanımsız kart','5383314',0,2,'2017-09-02 01:33:02.156000',1);
INSERT INTO portunes_identifier VALUES(4306,'Tanımsız kart','10473407',0,2,'2017-09-02 05:18:31.189000',1);
INSERT INTO portunes_identifier VALUES(4307,'Tanımsız kart','9701442',0,2,'2017-09-02 05:18:31.267000',1);
INSERT INTO portunes_identifier VALUES(4308,'Tanımsız kart','16771446',0,2,'2017-09-02 05:18:31.345000',1);
INSERT INTO portunes_identifier VALUES(4309,'Tanımsız kart','13889013',0,2,'2017-09-02 05:18:31.422000',1);
INSERT INTO portunes_identifier VALUES(4310,'Tanımsız kart','12234491',0,2,'2017-09-02 09:03:46.029000',1);
INSERT INTO portunes_identifier VALUES(4311,'Tanımsız kart','15448806',0,2,'2017-09-02 09:03:46.107000',1);
INSERT INTO portunes_identifier VALUES(4312,'Tanımsız kart','8355813',0,2,'2017-09-02 09:03:46.185000',1);
INSERT INTO portunes_identifier VALUES(4313,'Tanımsız kart','6291451',0,2,'2017-09-02 09:03:46.263000',1);
INSERT INTO portunes_identifier VALUES(4314,'Tanımsız kart','12410207',0,2,'2017-09-02 12:48:43.937000',1);
INSERT INTO portunes_identifier VALUES(4315,'Tanımsız kart','13302491',0,2,'2017-09-02 12:48:44.014000',1);
INSERT INTO portunes_identifier VALUES(4316,'Tanımsız kart','16289526',0,2,'2017-09-02 12:48:44.091000',1);
INSERT INTO portunes_identifier VALUES(4317,'Tanımsız kart','14330815',0,2,'2017-09-02 16:34:10.841000',1);
INSERT INTO portunes_identifier VALUES(4318,'Tanımsız kart','16772983',0,2,'2017-09-02 16:34:10.919000',1);
INSERT INTO portunes_identifier VALUES(4319,'Tanımsız kart','14548821',0,2,'2017-09-02 16:34:10.997000',1);
INSERT INTO portunes_identifier VALUES(4320,'Tanımsız kart','8398980',0,2,'2017-09-02 16:34:11.074000',1);
INSERT INTO portunes_identifier VALUES(4321,'Tanımsız kart','14628607',0,2,'2017-09-02 16:34:11.152000',1);
INSERT INTO portunes_identifier VALUES(4322,'Tanımsız kart','16640954',0,2,'2017-09-02 16:34:11.230000',1);
INSERT INTO portunes_identifier VALUES(4323,'Tanımsız kart','5709759',0,2,'2017-09-02 20:19:31.732000',1);
INSERT INTO portunes_identifier VALUES(4324,'Tanımsız kart','10822728',0,2,'2017-09-02 20:19:31.809000',1);
INSERT INTO portunes_identifier VALUES(4325,'Tanımsız kart','9961435',0,2,'2017-09-02 20:19:31.887000',1);
INSERT INTO portunes_identifier VALUES(4326,'Tanımsız kart','14024437',0,2,'2017-09-03 00:02:02.383000',1);
INSERT INTO portunes_identifier VALUES(4327,'Tanımsız kart','11019408',0,2,'2017-09-03 00:02:02.461000',1);
INSERT INTO portunes_identifier VALUES(4328,'Tanımsız kart','16485823',0,2,'2017-09-03 00:02:02.538000',1);
INSERT INTO portunes_identifier VALUES(4329,'Tanımsız kart','8105710',0,2,'2017-09-03 03:47:22.849000',1);
INSERT INTO portunes_identifier VALUES(4330,'Tanımsız kart','16708527',0,2,'2017-09-03 03:47:22.926000',1);
INSERT INTO portunes_identifier VALUES(4331,'Tanımsız kart','15555511',0,2,'2017-09-03 03:47:23.004000',1);
INSERT INTO portunes_identifier VALUES(4332,'Tanımsız kart','12312540',0,2,'2017-09-03 07:32:06.857000',1);
INSERT INTO portunes_identifier VALUES(4333,'Tanımsız kart','14352222',0,2,'2017-09-03 07:32:06.935000',1);
INSERT INTO portunes_identifier VALUES(4334,'Tanımsız kart','11401211',0,2,'2017-09-03 07:32:07.013000',1);
INSERT INTO portunes_identifier VALUES(4335,'Tanımsız kart','8302527',0,2,'2017-09-03 07:32:07.091000',1);
INSERT INTO portunes_identifier VALUES(4336,'Tanımsız kart','11528345',0,2,'2017-09-03 07:32:07.169000',1);
INSERT INTO portunes_identifier VALUES(4337,'Tanımsız kart','10570322',0,2,'2017-09-03 07:32:07.246000',1);
INSERT INTO portunes_identifier VALUES(4338,'Tanımsız kart','16640982',0,2,'2017-09-03 07:32:07.324000',1);
INSERT INTO portunes_identifier VALUES(4339,'Tanımsız kart','12416383',0,2,'2017-09-03 11:17:35.546000',1);
INSERT INTO portunes_identifier VALUES(4340,'Tanımsız kart','5383460',0,2,'2017-09-03 15:02:36.016000',1);
INSERT INTO portunes_identifier VALUES(4341,'Tanımsız kart','15924181',0,2,'2017-09-03 15:02:36.094000',1);
INSERT INTO portunes_identifier VALUES(4342,'Tanımsız kart','1086114',0,2,'2017-09-03 15:02:36.172000',1);
INSERT INTO portunes_identifier VALUES(4343,'Tanımsız kart','11496015',0,2,'2017-09-03 18:48:03.475000',1);
INSERT INTO portunes_identifier VALUES(4344,'Tanımsız kart','4466818',0,2,'2017-09-03 18:48:03.553000',1);
INSERT INTO portunes_identifier VALUES(4345,'Tanımsız kart','16441263',0,2,'2017-09-03 18:48:03.630000',1);
INSERT INTO portunes_identifier VALUES(4346,'Tanımsız kart','15450046',0,2,'2017-09-03 22:33:10.773000',1);
INSERT INTO portunes_identifier VALUES(4347,'Tanımsız kart','15587247',0,2,'2017-09-03 22:33:10.851000',1);
INSERT INTO portunes_identifier VALUES(4348,'Tanımsız kart','12312485',0,2,'2017-09-03 22:33:10.929000',1);
INSERT INTO portunes_identifier VALUES(4349,'Tanımsız kart','11969399',0,2,'2017-09-03 22:33:11.006000',1);
INSERT INTO portunes_identifier VALUES(4350,'Tanımsız kart','7781821',0,2,'2017-09-04 02:18:36.094000',1);
INSERT INTO portunes_identifier VALUES(4351,'Tanımsız kart','11047572',0,2,'2017-09-04 02:18:36.172000',1);
INSERT INTO portunes_identifier VALUES(4352,'Tanımsız kart','11468203',0,2,'2017-09-04 02:18:36.250000',1);
INSERT INTO portunes_identifier VALUES(4353,'Tanımsız kart','15689567',0,2,'2017-09-04 02:18:36.326000',1);
INSERT INTO portunes_identifier VALUES(4354,'Tanımsız kart','8347631',0,2,'2017-09-04 02:18:36.405000',1);
INSERT INTO portunes_identifier VALUES(4355,'Tanımsız kart','7683450',0,2,'2017-09-04 02:18:36.482000',1);
INSERT INTO portunes_identifier VALUES(4356,'Tanımsız kart','11184426',0,2,'2017-09-04 06:03:41.537000',1);
INSERT INTO portunes_identifier VALUES(4357,'Tanımsız kart','11529919',0,2,'2017-09-04 06:03:41.820000',1);
INSERT INTO portunes_identifier VALUES(4358,'Tanımsız kart','16121567',0,2,'2017-09-04 06:03:41.898000',1);
INSERT INTO portunes_identifier VALUES(4359,'Tanımsız kart','4363562',0,2,'2017-09-04 09:48:21.910000',1);
INSERT INTO portunes_identifier VALUES(4360,'Tanımsız kart','11092116',0,2,'2017-09-04 13:33:49.270000',1);
INSERT INTO portunes_identifier VALUES(4361,'Tanımsız kart','11986775',0,2,'2017-09-04 13:33:49.347000',1);
INSERT INTO portunes_identifier VALUES(4362,'Tanımsız kart','690696',0,2,'2017-09-04 13:33:49.425000',1);
INSERT INTO portunes_identifier VALUES(4363,'Tanımsız kart','14679798',0,2,'2017-09-04 13:33:49.502000',1);
INSERT INTO portunes_identifier VALUES(4364,'Tanımsız kart','8983700',0,2,'2017-09-04 13:33:49.580000',1);
INSERT INTO portunes_identifier VALUES(4365,'Tanımsız kart','5510288',0,2,'2017-09-04 15:26:29.124000',1);
INSERT INTO portunes_identifier VALUES(4366,'Tanımsız kart','14319039',0,2,'2017-09-04 17:19:16.154000',1);
INSERT INTO portunes_identifier VALUES(4367,'Tanımsız kart','9797503',0,2,'2017-09-04 17:19:16.232000',1);
INSERT INTO portunes_identifier VALUES(4368,'Tanımsız kart','15204341',0,2,'2017-09-04 17:19:16.310000',1);
INSERT INTO portunes_identifier VALUES(4369,'Tanımsız kart','1200714',0,2,'2017-09-04 17:19:16.388000',1);
INSERT INTO portunes_identifier VALUES(4370,'Tanımsız kart','172692',0,2,'2017-09-04 21:00:45.402000',1);
INSERT INTO portunes_identifier VALUES(4371,'Tanımsız kart','87332',0,2,'2017-09-04 21:00:45.480000',1);
INSERT INTO portunes_identifier VALUES(4372,'Tanımsız kart','7856126',0,2,'2017-09-04 21:00:45.558000',1);
INSERT INTO portunes_identifier VALUES(4373,'Tanımsız kart','13620975',0,2,'2017-09-05 00:44:52.480000',1);
INSERT INTO portunes_identifier VALUES(4374,'Tanımsız kart','14634967',0,2,'2017-09-05 00:44:52.558000',1);
INSERT INTO portunes_identifier VALUES(4375,'Tanımsız kart','14401530',0,2,'2017-09-05 04:25:02.327000',1);
INSERT INTO portunes_identifier VALUES(4376,'Tanımsız kart','11525627',0,2,'2017-09-05 04:25:02.405000',1);
INSERT INTO portunes_identifier VALUES(4377,'Tanımsız kart','15709923',0,2,'2017-09-05 04:25:02.482000',1);
INSERT INTO portunes_identifier VALUES(4378,'Tanımsız kart','6991073',0,2,'2017-09-05 08:09:32.127000',1);
INSERT INTO portunes_identifier VALUES(4379,'Tanımsız kart','6646443',0,2,'2017-09-05 08:09:32.205000',1);
INSERT INTO portunes_identifier VALUES(4380,'Tanımsız kart','11315883',0,2,'2017-09-05 08:09:32.283000',1);
INSERT INTO portunes_identifier VALUES(4381,'Tanımsız kart','15365719',0,2,'2017-09-05 08:09:32.361000',1);
INSERT INTO portunes_identifier VALUES(4382,'Tanımsız kart','12014933',0,2,'2017-09-05 08:09:32.674000',1);
INSERT INTO portunes_identifier VALUES(4383,'Tanımsız kart','5598677',0,2,'2017-09-05 08:09:32.830000',1);
INSERT INTO portunes_identifier VALUES(4384,'Tanımsız kart','5614167',0,2,'2017-09-05 08:09:32.909000',1);
INSERT INTO portunes_identifier VALUES(4385,'Tanımsız kart','5844138',0,2,'2017-09-05 08:09:33.069000',1);
INSERT INTO portunes_identifier VALUES(4386,'Tanımsız kart','11186863',0,2,'2017-09-05 08:09:33.225000',1);
INSERT INTO portunes_identifier VALUES(4387,'Tanımsız kart','5596330',0,2,'2017-09-05 08:09:33.460000',1);
INSERT INTO portunes_identifier VALUES(4388,'Tanımsız kart','11196139',0,2,'2017-09-05 08:09:33.538000',1);
INSERT INTO portunes_identifier VALUES(4389,'Tanımsız kart','11315882',0,2,'2017-09-05 08:09:33.616000',1);
INSERT INTO portunes_identifier VALUES(4390,'Tanımsız kart','7851341',0,2,'2017-09-05 08:09:33.693000',1);
INSERT INTO portunes_identifier VALUES(4391,'Tanımsız kart','11217819',0,2,'2017-09-05 08:09:33.849000',1);
INSERT INTO portunes_identifier VALUES(4392,'Tanımsız kart','11559829',0,2,'2017-09-05 08:09:33.927000',1);
INSERT INTO portunes_identifier VALUES(4393,'Tanımsız kart','15650237',0,2,'2017-09-05 08:09:35.725000',1);
INSERT INTO portunes_identifier VALUES(4394,'Tanımsız kart','16733336',0,2,'2017-09-05 11:55:00.810000',1);
INSERT INTO portunes_identifier VALUES(4395,'Tanımsız kart','15562606',0,2,'2017-09-05 11:55:02.833000',1);
INSERT INTO portunes_identifier VALUES(4396,'Tanımsız kart','16185967',0,2,'2017-09-05 11:55:02.912000',1);
INSERT INTO portunes_identifier VALUES(4397,'Tanımsız kart','12540925',0,2,'2017-09-05 11:55:02.989000',1);
INSERT INTO portunes_identifier VALUES(4398,'Tanımsız kart','11468279',0,2,'2017-09-05 15:40:32.085000',1);
INSERT INTO portunes_identifier VALUES(4399,'Tanımsız kart','11993071',0,2,'2017-09-05 15:40:32.241000',1);
INSERT INTO portunes_identifier VALUES(4400,'Tanımsız kart','8379133',0,2,'2017-09-05 15:40:32.319000',1);
INSERT INTO portunes_identifier VALUES(4401,'Tanımsız kart','14071743',0,2,'2017-09-05 15:40:32.398000',1);
INSERT INTO portunes_identifier VALUES(4402,'Tanımsız kart','16772597',0,2,'2017-09-05 15:40:32.476000',1);
INSERT INTO portunes_identifier VALUES(4403,'Tanımsız kart','1474423',0,2,'2017-09-05 15:40:32.553000',1);
INSERT INTO portunes_identifier VALUES(4404,'Tanımsız kart','11066968',0,2,'2017-09-05 15:40:32.631000',1);
INSERT INTO portunes_identifier VALUES(4405,'Tanımsız kart','16777195',0,2,'2017-09-05 15:40:32.709000',1);
INSERT INTO portunes_identifier VALUES(4406,'Tanımsız kart','8323199',0,2,'2017-09-05 15:40:32.788000',1);
INSERT INTO portunes_identifier VALUES(4407,'Tanımsız kart','8219479',0,2,'2017-09-05 15:40:32.866000',1);
INSERT INTO portunes_identifier VALUES(4408,'Tanımsız kart','10835883',0,2,'2017-09-05 15:40:33.201000',1);
INSERT INTO portunes_identifier VALUES(4409,'Tanımsız kart','15654253',0,2,'2017-09-05 15:40:33.796000',1);
INSERT INTO portunes_identifier VALUES(4410,'Tanımsız kart','1132885',0,2,'2017-09-05 15:40:33.874000',1);
INSERT INTO portunes_identifier VALUES(4411,'Tanımsız kart','15693805',0,2,'2017-09-05 15:40:34.186000',1);
INSERT INTO portunes_identifier VALUES(4412,'Tanımsız kart','10865276',0,2,'2017-09-05 19:25:35.416000',1);
INSERT INTO portunes_identifier VALUES(4413,'Tanımsız kart','16089071',0,2,'2017-09-05 19:25:35.494000',1);
INSERT INTO portunes_identifier VALUES(4414,'Tanımsız kart','10993037',0,2,'2017-09-05 23:10:39.799000',1);
INSERT INTO portunes_identifier VALUES(4415,'Tanımsız kart','16506798',0,2,'2017-09-05 23:10:39.876000',1);
INSERT INTO portunes_identifier VALUES(4416,'Tanımsız kart','2442410',0,2,'2017-09-06 02:56:05.006000',1);
INSERT INTO portunes_identifier VALUES(4417,'Tanımsız kart','2245716',0,2,'2017-09-06 02:56:05.084000',1);
INSERT INTO portunes_identifier VALUES(4418,'Tanımsız kart','16494590',0,2,'2017-09-06 02:56:05.162000',1);
INSERT INTO portunes_identifier VALUES(4419,'Tanımsız kart','12442554',0,2,'2017-09-06 02:56:05.240000',1);
INSERT INTO portunes_identifier VALUES(4420,'Tanımsız kart','5799252',0,2,'2017-09-06 06:41:30.905000',1);
INSERT INTO portunes_identifier VALUES(4421,'Tanımsız kart','9824977',0,2,'2017-09-06 06:41:31.548000',1);
INSERT INTO portunes_identifier VALUES(4422,'Tanımsız kart','9794920',0,2,'2017-09-06 06:41:31.625000',1);
INSERT INTO portunes_identifier VALUES(4423,'Tanımsız kart','16465451',0,2,'2017-09-06 06:41:31.779000',1);
INSERT INTO portunes_identifier VALUES(4424,'Tanımsız kart','11094869',0,2,'2017-09-06 06:41:33.888000',1);
INSERT INTO portunes_identifier VALUES(4425,'Tanımsız kart','9435050',0,2,'2017-09-06 06:41:34.013000',1);
INSERT INTO portunes_identifier VALUES(4426,'Tanımsız kart','14834303',0,2,'2017-09-06 06:41:34.090000',1);
INSERT INTO portunes_identifier VALUES(4427,'Tanımsız kart','12572661',0,2,'2017-09-06 06:41:34.167000',1);
INSERT INTO portunes_identifier VALUES(4428,'Tanımsız kart','12318429',0,2,'2017-09-06 10:26:43.686000',1);
INSERT INTO portunes_identifier VALUES(4429,'Tanımsız kart','16203630',0,2,'2017-09-06 10:26:43.842000',1);
INSERT INTO portunes_identifier VALUES(4430,'Tanımsız kart','9053513',0,2,'2017-09-06 14:12:01.542000',1);
INSERT INTO portunes_identifier VALUES(4431,'Tanımsız kart','11179306',0,2,'2017-09-06 14:12:01.620000',1);
INSERT INTO portunes_identifier VALUES(4432,'Tanımsız kart','14364671',0,2,'2017-09-06 14:12:04.127000',1);
INSERT INTO portunes_identifier VALUES(4433,'Tanımsız kart','16736251',0,2,'2017-09-06 14:12:04.205000',1);
INSERT INTO portunes_identifier VALUES(4434,'Tanımsız kart','13301399',0,2,'2017-09-06 14:12:04.283000',1);
INSERT INTO portunes_identifier VALUES(4435,'Tanımsız kart','5376337',0,2,'2017-09-06 14:12:04.360000',1);
INSERT INTO portunes_identifier VALUES(4436,'Tanımsız kart','673355',0,2,'2017-09-06 14:12:04.438000',1);
INSERT INTO portunes_identifier VALUES(4437,'Tanımsız kart','15695323',0,2,'2017-09-06 14:12:04.515000',1);
INSERT INTO portunes_identifier VALUES(4438,'Tanımsız kart','2905430',0,2,'2017-09-06 17:56:53.105000',1);
INSERT INTO portunes_identifier VALUES(4439,'Tanımsız kart','11232597',0,2,'2017-09-06 17:56:53.183000',1);
INSERT INTO portunes_identifier VALUES(4440,'Tanımsız kart','11329526',0,2,'2017-09-06 17:56:53.261000',1);
INSERT INTO portunes_identifier VALUES(4441,'Tanımsız kart','12425203',0,2,'2017-09-06 17:56:53.338000',1);
INSERT INTO portunes_identifier VALUES(4442,'Tanımsız kart','5594197',0,2,'2017-09-06 17:56:53.416000',1);
INSERT INTO portunes_identifier VALUES(4443,'Tanımsız kart','16607179',0,2,'2017-09-06 17:56:53.493000',1);
INSERT INTO portunes_identifier VALUES(4444,'Tanımsız kart','15652831',0,2,'2017-09-06 17:56:53.571000',1);
INSERT INTO portunes_identifier VALUES(4445,'Tanımsız kart','15706486',0,2,'2017-09-06 17:56:53.649000',1);
INSERT INTO portunes_identifier VALUES(4446,'Tanımsız kart','1118340',0,2,'2017-09-06 17:56:54.281000',1);
INSERT INTO portunes_identifier VALUES(4447,'Tanımsız kart','561184',0,2,'2017-09-06 17:56:54.514000',1);
INSERT INTO portunes_identifier VALUES(4448,'Tanımsız kart','5593385',0,2,'2017-09-06 17:56:55.212000',1);
INSERT INTO portunes_identifier VALUES(4449,'Tanımsız kart','15660881',0,2,'2017-09-06 17:56:55.339000',1);
INSERT INTO portunes_identifier VALUES(4450,'Tanımsız kart','2992764',0,2,'2017-09-06 17:56:55.417000',1);
INSERT INTO portunes_identifier VALUES(4451,'Tanımsız kart','16776895',0,2,'2017-09-06 17:56:55.494000',1);
INSERT INTO portunes_identifier VALUES(4452,'Tanımsız kart','13057526',0,2,'2017-09-06 17:56:55.572000',1);
INSERT INTO portunes_identifier VALUES(4453,'Tanımsız kart','6985663',0,2,'2017-09-06 17:56:55.649000',1);
INSERT INTO portunes_identifier VALUES(4454,'Tanımsız kart','4460674',0,2,'2017-09-06 21:42:15.616000',1);
INSERT INTO portunes_identifier VALUES(4455,'Tanımsız kart','13750683',0,2,'2017-09-06 21:42:15.849000',1);
INSERT INTO portunes_identifier VALUES(4456,'Tanımsız kart','3264923',0,2,'2017-09-06 21:42:15.926000',1);
INSERT INTO portunes_identifier VALUES(4457,'Tanımsız kart','11938798',0,2,'2017-09-06 21:42:16.673000',1);
INSERT INTO portunes_identifier VALUES(4458,'Tanımsız kart','12316075',0,2,'2017-09-06 21:42:16.751000',1);
INSERT INTO portunes_identifier VALUES(4459,'Tanımsız kart','5325989',0,2,'2017-09-06 21:42:16.829000',1);
INSERT INTO portunes_identifier VALUES(4460,'Tanımsız kart','9087048',0,2,'2017-09-06 21:42:16.906000',1);
INSERT INTO portunes_identifier VALUES(4461,'Tanımsız kart','16756566',0,2,'2017-09-06 21:42:16.984000',1);
INSERT INTO portunes_identifier VALUES(4462,'Tanımsız kart','14938078',0,2,'2017-09-07 01:27:47.889000',1);
INSERT INTO portunes_identifier VALUES(4463,'Tanımsız kart','12254039',0,2,'2017-09-07 01:27:47.967000',1);
INSERT INTO portunes_identifier VALUES(4464,'Tanımsız kart','16252283',0,2,'2017-09-07 01:27:48.045000',1);
INSERT INTO portunes_identifier VALUES(4465,'Tanımsız kart','16113599',0,2,'2017-09-07 01:27:48.122000',1);
INSERT INTO portunes_identifier VALUES(4466,'Tanımsız kart','12517215',0,2,'2017-09-07 05:12:32.644000',1);
INSERT INTO portunes_identifier VALUES(4467,'Tanımsız kart','10008493',0,2,'2017-09-07 05:12:32.721000',1);
INSERT INTO portunes_identifier VALUES(4468,'Tanımsız kart','11927453',0,2,'2017-09-07 05:12:32.798000',1);
INSERT INTO portunes_identifier VALUES(4469,'Tanımsız kart','15530959',0,2,'2017-09-07 05:12:32.875000',1);
INSERT INTO portunes_identifier VALUES(4470,'Tanımsız kart','16346559',0,2,'2017-09-07 05:12:32.952000',1);
INSERT INTO portunes_identifier VALUES(4471,'Tanımsız kart','4892820',0,2,'2017-09-07 05:12:33.030000',1);
INSERT INTO portunes_identifier VALUES(4472,'Tanımsız kart','16772471',0,2,'2017-09-07 05:12:33.107000',1);
INSERT INTO portunes_identifier VALUES(4473,'Tanımsız kart','4531489',0,2,'2017-09-07 08:53:24.495000',1);
INSERT INTO portunes_identifier VALUES(4474,'Tanımsız kart','4194433',0,2,'2017-09-07 08:53:24.650000',1);
INSERT INTO portunes_identifier VALUES(4475,'Tanımsız kart','4795026',0,2,'2017-09-07 08:53:25.864000',1);
INSERT INTO portunes_identifier VALUES(4476,'Tanımsız kart','4805194',0,2,'2017-09-07 08:53:25.942000',1);
INSERT INTO portunes_identifier VALUES(4477,'Tanımsız kart','9737546',0,2,'2017-09-07 08:53:26.018000',1);
INSERT INTO portunes_identifier VALUES(4478,'Tanımsız kart','10824018',0,2,'2017-09-07 08:53:26.096000',1);
INSERT INTO portunes_identifier VALUES(4479,'Tanımsız kart','9606308',0,2,'2017-09-07 08:53:26.173000',1);
INSERT INTO portunes_identifier VALUES(4480,'Tanımsız kart','10824357',0,2,'2017-09-07 08:53:26.329000',1);
INSERT INTO portunes_identifier VALUES(4481,'Tanımsız kart','9775370',0,2,'2017-09-07 08:53:26.484000',1);
INSERT INTO portunes_identifier VALUES(4482,'Tanımsız kart','4756649',0,2,'2017-09-07 08:53:26.561000',1);
INSERT INTO portunes_identifier VALUES(4483,'Tanımsız kart','4803145',0,2,'2017-09-07 08:53:26.638000',1);
INSERT INTO portunes_identifier VALUES(4484,'Tanımsız kart','9606474',0,2,'2017-09-07 08:53:26.715000',1);
INSERT INTO portunes_identifier VALUES(4485,'Tanımsız kart','5526825',0,2,'2017-09-07 08:53:26.792000',1);
INSERT INTO portunes_identifier VALUES(4486,'Tanımsız kart','10834578',0,2,'2017-09-07 08:53:26.869000',1);
INSERT INTO portunes_identifier VALUES(4487,'Tanımsız kart','9775444',0,2,'2017-09-07 08:53:26.946000',1);
INSERT INTO portunes_identifier VALUES(4488,'Tanımsız kart','5580074',0,2,'2017-09-07 08:53:27.023000',1);
INSERT INTO portunes_identifier VALUES(4489,'Tanımsız kart','4793642',0,2,'2017-09-07 08:53:27.100000',1);
INSERT INTO portunes_identifier VALUES(4490,'Tanımsız kart','9610538',0,2,'2017-09-07 08:53:27.178000',1);
INSERT INTO portunes_identifier VALUES(4491,'Tanımsız kart','2396820',0,2,'2017-09-07 08:53:27.255000',1);
INSERT INTO portunes_identifier VALUES(4492,'Tanımsız kart','2773588',0,2,'2017-09-07 08:53:27.410000',1);
INSERT INTO portunes_identifier VALUES(4493,'Tanımsız kart','9611925',0,2,'2017-09-07 08:53:27.488000',1);
INSERT INTO portunes_identifier VALUES(4494,'Tanımsız kart','9589394',0,2,'2017-09-07 08:53:27.565000',1);
INSERT INTO portunes_identifier VALUES(4495,'Tanımsız kart','9774418',0,2,'2017-09-07 08:53:27.642000',1);
INSERT INTO portunes_identifier VALUES(4496,'Tanımsız kart','9741460',0,2,'2017-09-07 08:53:27.718000',1);
INSERT INTO portunes_identifier VALUES(4497,'Tanımsız kart','11086121',0,2,'2017-09-07 08:53:27.875000',1);
INSERT INTO portunes_identifier VALUES(4498,'Tanımsız kart','9736873',0,2,'2017-09-07 08:53:27.953000',1);
INSERT INTO portunes_identifier VALUES(4499,'Tanımsız kart','5319338',0,2,'2017-09-07 08:53:28.030000',1);
INSERT INTO portunes_identifier VALUES(4500,'Tanımsız kart','5395602',0,2,'2017-09-07 08:53:28.107000',1);
INSERT INTO portunes_identifier VALUES(4501,'Tanımsız kart','5547145',0,2,'2017-09-07 08:53:28.185000',1);
INSERT INTO portunes_identifier VALUES(4502,'Tanımsız kart','4805922',0,2,'2017-09-07 08:53:28.262000',1);
INSERT INTO portunes_identifier VALUES(4503,'Tanımsız kart','4868681',0,2,'2017-09-07 08:53:28.340000',1);
INSERT INTO portunes_identifier VALUES(4504,'Tanımsız kart','5416082',0,2,'2017-09-07 08:53:28.417000',1);
INSERT INTO portunes_identifier VALUES(4505,'Tanımsız kart','10824277',0,2,'2017-09-07 08:53:28.494000',1);
INSERT INTO portunes_identifier VALUES(4506,'Tanımsız kart','5416101',0,2,'2017-09-07 08:53:28.571000',1);
INSERT INTO portunes_identifier VALUES(4507,'Tanımsız kart','4893333',0,2,'2017-09-07 08:53:28.727000',1);
INSERT INTO portunes_identifier VALUES(4508,'Tanımsız kart','5392981',0,2,'2017-09-07 08:53:28.882000',1);
INSERT INTO portunes_identifier VALUES(4509,'Tanımsız kart','5747681',0,2,'2017-09-07 12:38:24.245000',1);
INSERT INTO portunes_identifier VALUES(4510,'Tanımsız kart','13328251',0,2,'2017-09-07 12:38:24.917000',1);
INSERT INTO portunes_identifier VALUES(4511,'Tanımsız kart','4276490',0,2,'2017-09-07 12:38:24.994000',1);
INSERT INTO portunes_identifier VALUES(4512,'Tanımsız kart','16674751',0,2,'2017-09-07 12:38:25.306000',1);
INSERT INTO portunes_identifier VALUES(4513,'Tanımsız kart','14609919',0,2,'2017-09-07 12:38:25.617000',1);
INSERT INTO portunes_identifier VALUES(4514,'Tanımsız kart','5410890',0,2,'2017-09-07 12:38:25.929000',1);
INSERT INTO portunes_identifier VALUES(4515,'Tanımsız kart','11092053',0,2,'2017-09-07 12:38:26.007000',1);
INSERT INTO portunes_identifier VALUES(4516,'Tanımsız kart','10574404',0,2,'2017-09-07 12:38:26.084000',1);
INSERT INTO portunes_identifier VALUES(4517,'Tanımsız kart','12545278',0,2,'2017-09-07 12:38:26.162000',1);
INSERT INTO portunes_identifier VALUES(4518,'Tanımsız kart','2115924',0,2,'2017-09-07 12:38:26.240000',1);
INSERT INTO portunes_identifier VALUES(4519,'Tanımsız kart','15447766',0,2,'2017-09-07 12:38:26.317000',1);
INSERT INTO portunes_identifier VALUES(4520,'Tanımsız kart','9783881',0,2,'2017-09-07 12:38:26.395000',1);
INSERT INTO portunes_identifier VALUES(4521,'Tanımsız kart','7797755',0,2,'2017-09-07 12:38:26.473000',1);
INSERT INTO portunes_identifier VALUES(4522,'Tanımsız kart','16711518',0,2,'2017-09-07 16:31:56.399000',1);
INSERT INTO portunes_identifier VALUES(4523,'Tanımsız kart','10403837',0,2,'2017-09-07 16:31:56.478000',1);
INSERT INTO portunes_identifier VALUES(4524,'Tanımsız kart','14596791',0,2,'2017-09-07 16:31:56.555000',1);
INSERT INTO portunes_identifier VALUES(4525,'Tanımsız kart','12246491',0,2,'2017-09-07 16:31:56.633000',1);
INSERT INTO portunes_identifier VALUES(4526,'Tanımsız kart','10343415',0,2,'2017-09-07 16:31:56.711000',1);
INSERT INTO portunes_identifier VALUES(4527,'Tanımsız kart','4964349',0,2,'2017-09-07 16:31:56.789000',1);
INSERT INTO portunes_identifier VALUES(4528,'Tanımsız kart','5854357',0,2,'2017-09-07 20:31:37.386000',1);
INSERT INTO portunes_identifier VALUES(4529,'Tanımsız kart','16449358',0,2,'2017-09-07 20:31:37.513000',1);
INSERT INTO portunes_identifier VALUES(4530,'Tanımsız kart','698658',0,2,'2017-09-07 20:31:37.590000',1);
INSERT INTO portunes_identifier VALUES(4531,'Tanımsız kart','16251614',0,2,'2017-09-07 20:31:37.667000',1);
INSERT INTO portunes_identifier VALUES(4532,'Tanımsız kart','346453',0,2,'2017-09-07 20:31:37.745000',1);
INSERT INTO portunes_identifier VALUES(4533,'Tanımsız kart','15720370',0,2,'2017-09-08 00:31:12.941000',1);
INSERT INTO portunes_identifier VALUES(4534,'Tanımsız kart','16108027',0,2,'2017-09-08 00:31:13.019000',1);
INSERT INTO portunes_identifier VALUES(4535,'Tanımsız kart','3866027',0,2,'2017-09-08 00:31:13.097000',1);
INSERT INTO portunes_identifier VALUES(4536,'Tanımsız kart','10966782',0,2,'2017-09-08 04:29:16.849000',1);
INSERT INTO portunes_identifier VALUES(4537,'Tanımsız kart','14577383',0,2,'2017-09-08 04:29:16.926000',1);
INSERT INTO portunes_identifier VALUES(4538,'Tanımsız kart','11146569',0,2,'2017-09-08 04:29:17.004000',1);
INSERT INTO portunes_identifier VALUES(4539,'Tanımsız kart','15659991',0,2,'2017-09-08 04:29:17.082000',1);
INSERT INTO portunes_identifier VALUES(4540,'Tanımsız kart','6138879',0,2,'2017-09-08 04:29:17.160000',1);
INSERT INTO portunes_identifier VALUES(4541,'Tanımsız kart','16233695',0,2,'2017-09-08 04:29:17.238000',1);
INSERT INTO portunes_identifier VALUES(4542,'Tanımsız kart','3519227',0,2,'2017-09-08 08:27:15.977000',1);
INSERT INTO portunes_identifier VALUES(4543,'Tanımsız kart','16760447',0,2,'2017-09-08 08:27:16.055000',1);
INSERT INTO portunes_identifier VALUES(4544,'Tanımsız kart','14671871',0,2,'2017-09-08 08:27:16.133000',1);
INSERT INTO portunes_identifier VALUES(4545,'Tanımsız kart','11976701',0,2,'2017-09-08 08:27:16.211000',1);
INSERT INTO portunes_identifier VALUES(4546,'Tanımsız kart','11271662',0,2,'2017-09-08 12:41:44.375000',1);
INSERT INTO portunes_identifier VALUES(4547,'Tanımsız kart','6274942',0,2,'2017-09-08 12:41:44.452000',1);
INSERT INTO portunes_identifier VALUES(4548,'Tanımsız kart','8037571',0,2,'2017-09-11 05:51:24.117000',1);
INSERT INTO portunes_identifier VALUES(4549,'Tanımsız kart','4789316',0,2,'2017-09-11 05:51:24.735000',1);
INSERT INTO portunes_identifier VALUES(4550,'Tanımsız kart','6749469',0,2,'2017-09-11 05:51:27.084000',1);
INSERT INTO portunes_identifier VALUES(4551,'Tanımsız kart','10785352',0,2,'2017-09-11 05:51:28.127000',1);
INSERT INTO portunes_identifier VALUES(4552,'Tanımsız kart','14548700',0,2,'2017-09-11 05:51:28.280000',1);
INSERT INTO portunes_identifier VALUES(4553,'gecicikart1','2141148',0,1,'2017-09-11 07:46:28.235000',0);
INSERT INTO portunes_identifier VALUES(4554,'Ziyaretçi Yüksel Özkan','1916536',1,2,'2017-09-11 08:35:45.393000',0);
INSERT INTO portunes_identifier VALUES(4555,'Tanımsız kart','7695070',0,2,'2017-09-14 06:41:13.338000',1);
INSERT INTO portunes_identifier VALUES(4556,'Tanımsız kart','14040983',0,2,'2017-09-14 06:41:13.415000',1);
INSERT INTO portunes_identifier VALUES(4557,'Tanımsız kart','11777908',0,2,'2017-09-14 06:41:13.492000',1);
INSERT INTO portunes_identifier VALUES(4558,'Tanımsız kart','9685691',0,2,'2017-09-14 06:41:13.569000',1);
INSERT INTO portunes_identifier VALUES(4559,'Tanımsız kart','3044788',0,2,'2017-09-14 06:41:13.646000',1);
INSERT INTO portunes_identifier VALUES(4560,'Tanımsız kart','5758797',0,2,'2017-09-14 06:41:13.800000',1);
INSERT INTO portunes_identifier VALUES(4561,'Tanımsız kart','11845358',0,2,'2017-09-14 06:41:13.877000',1);
INSERT INTO portunes_identifier VALUES(4562,'Tanımsız kart','14663631',0,2,'2017-09-14 06:41:13.954000',1);
INSERT INTO portunes_identifier VALUES(4563,'Tanımsız kart','7689383',0,2,'2017-09-14 06:41:14.031000',1);
INSERT INTO portunes_identifier VALUES(4564,'Tanımsız kart','8239909',0,2,'2017-09-14 06:41:14.108000',1);
INSERT INTO portunes_identifier VALUES(4565,'Tanımsız kart','16776951',0,2,'2017-09-14 06:41:14.185000',1);
INSERT INTO portunes_identifier VALUES(4566,'Tanımsız kart','10528770',0,2,'2017-09-14 06:41:14.262000',1);
INSERT INTO portunes_identifier VALUES(4567,'Tanımsız kart','16760831',0,2,'2017-09-14 06:41:14.553000',1);
INSERT INTO portunes_identifier VALUES(4568,'Tanımsız kart','11986084',0,2,'2017-09-14 06:41:14.630000',1);
INSERT INTO portunes_identifier VALUES(4569,'Tanımsız kart','13803519',0,2,'2017-09-14 06:41:14.849000',1);
INSERT INTO portunes_identifier VALUES(4570,'Tanımsız kart','9786021',0,2,'2017-09-14 06:41:14.926000',1);
INSERT INTO portunes_identifier VALUES(4571,'Tanımsız kart','5065386',0,2,'2017-09-14 06:41:15.003000',1);
INSERT INTO portunes_identifier VALUES(4572,'Tanımsız kart','15345183',0,2,'2017-09-14 06:41:16.605000',1);
INSERT INTO portunes_identifier VALUES(4573,'Tanımsız kart','14144806',0,2,'2017-09-14 06:41:17.979000',1);
INSERT INTO portunes_identifier VALUES(4574,'Tanımsız kart','15279647',0,2,'2017-09-14 06:41:18.055000',1);
INSERT INTO portunes_identifier VALUES(4575,'Tanımsız kart','5109065',0,2,'2017-09-14 06:41:19.187000',1);
INSERT INTO portunes_identifier VALUES(4576,'Tanımsız kart','15564435',0,2,'2017-09-14 06:41:20.486000',1);
INSERT INTO portunes_identifier VALUES(4577,'Tanımsız kart','14678269',0,2,'2017-09-14 06:41:20.867000',1);
INSERT INTO portunes_identifier VALUES(4578,'Tanımsız kart','16772863',0,2,'2017-09-14 06:41:20.944000',1);
INSERT INTO portunes_identifier VALUES(4579,'Tanımsız kart','12435369',0,2,'2017-09-14 06:41:21.936000',1);
INSERT INTO portunes_identifier VALUES(4580,'Tanımsız kart','9586154',0,2,'2017-09-14 06:41:22.696000',1);
INSERT INTO portunes_identifier VALUES(4581,'Tanımsız kart','10450615',0,2,'2017-09-14 06:41:22.850000',1);
INSERT INTO portunes_identifier VALUES(4582,'Tanımsız kart','10785032',0,2,'2017-09-14 06:41:23.535000',1);
INSERT INTO portunes_identifier VALUES(4583,'Tanımsız kart','16743423',0,2,'2017-09-14 06:41:24.603000',1);
INSERT INTO portunes_identifier VALUES(4584,'Tanımsız kart','16768751',0,2,'2017-09-14 06:41:24.757000',1);
INSERT INTO portunes_identifier VALUES(4585,'Tanımsız kart','12268886',0,2,'2017-09-14 06:41:24.834000',1);
INSERT INTO portunes_identifier VALUES(4586,'Tanımsız kart','163872',0,2,'2017-09-14 06:41:25.214000',1);
INSERT INTO portunes_identifier VALUES(4587,'Tanımsız kart','5391489',0,2,'2017-09-14 06:41:25.595000',1);
INSERT INTO portunes_identifier VALUES(4588,'Tanımsız kart','10485828',0,2,'2017-09-14 06:41:25.672000',1);
INSERT INTO portunes_identifier VALUES(4589,'Tanımsız kart','8946820',0,2,'2017-09-14 06:41:26.514000',1);
INSERT INTO portunes_identifier VALUES(4590,'Tanımsız kart','541200',0,2,'2017-09-14 06:41:26.591000',1);
INSERT INTO portunes_identifier VALUES(4591,'Tanımsız kart','10561829',0,2,'2017-09-14 06:41:26.667000',1);
INSERT INTO portunes_identifier VALUES(4592,'Tanımsız kart','6288724',0,2,'2017-09-14 06:41:27.278000',1);
INSERT INTO portunes_identifier VALUES(4593,'Tanımsız kart','3448490',0,2,'2017-09-14 06:41:28.879000',1);
INSERT INTO portunes_identifier VALUES(4594,'Tanımsız kart','10836650',0,2,'2017-09-14 06:41:36.849000',1);
INSERT INTO portunes_identifier VALUES(4595,'Tanımsız kart','11184726',0,2,'2017-09-14 06:41:37.003000',1);
INSERT INTO portunes_identifier VALUES(4596,'Tanımsız kart','11186090',0,2,'2017-09-14 06:41:37.688000',1);
INSERT INTO portunes_identifier VALUES(4597,'Tanımsız kart','8236923',0,2,'2017-09-14 06:53:28.859000',1);
INSERT INTO portunes_identifier VALUES(4598,'Tanımsız kart','16379455',0,2,'2017-09-14 06:53:28.935000',1);
INSERT INTO portunes_identifier VALUES(4599,'GECICI','1916561',1,2,'2017-09-14 07:01:07.590000',0);
INSERT INTO portunes_identifier VALUES(4600,'Tanımsız kart','7986863',0,2,'2017-09-14 07:47:07.238000',1);
INSERT INTO portunes_identifier VALUES(4601,'Tanımsız kart','7976946',0,2,'2017-09-14 07:47:07.325000',1);
INSERT INTO portunes_identifier VALUES(4602,'Tanımsız kart','15449535',0,2,'2017-09-14 11:08:29.674000',1);
INSERT INTO portunes_identifier VALUES(4603,'Tanımsız kart','4497568',0,2,'2017-09-14 11:08:29.752000',1);
INSERT INTO portunes_identifier VALUES(4604,'Tanımsız kart','16238386',0,2,'2017-09-14 11:08:29.830000',1);
INSERT INTO portunes_identifier VALUES(4605,'Tanımsız kart','12582909',0,2,'2017-09-14 12:28:39.834000',1);
INSERT INTO portunes_identifier VALUES(4606,'Tanımsız kart','11468491',0,2,'2017-09-14 12:28:40.004000',1);
INSERT INTO portunes_identifier VALUES(4607,'Tanımsız kart','16711639',0,2,'2017-09-14 12:28:40.082000',1);
INSERT INTO portunes_identifier VALUES(4608,'Tanımsız kart','16775747',0,2,'2017-09-14 12:28:40.160000',1);
INSERT INTO portunes_identifier VALUES(4609,'Tanımsız kart','8204283',0,2,'2017-09-14 12:28:40.316000',1);
INSERT INTO portunes_identifier VALUES(4610,'Tanımsız kart','334698',0,2,'2017-09-14 12:28:40.394000',1);
INSERT INTO portunes_identifier VALUES(4611,'Tanımsız kart','8720388',0,2,'2017-09-14 12:28:41.373000',1);
INSERT INTO portunes_identifier VALUES(4612,'Tanımsız kart','150049',0,2,'2017-09-14 12:28:41.450000',1);
INSERT INTO portunes_identifier VALUES(4613,'Tanımsız kart','16776155',0,2,'2017-09-14 13:48:47.679000',1);
INSERT INTO portunes_identifier VALUES(4614,'Tanımsız kart','3394394',0,2,'2017-09-14 13:48:47.757000',1);
INSERT INTO portunes_identifier VALUES(4615,'Tanımsız kart','141440',0,2,'2017-09-14 13:48:48.582000',1);
INSERT INTO portunes_identifier VALUES(4616,'Tanımsız kart','594181',0,2,'2017-09-14 13:48:48.660000',1);
INSERT INTO portunes_identifier VALUES(4617,'Tanımsız kart','5275809',0,2,'2017-09-14 13:48:48.737000',1);
INSERT INTO portunes_identifier VALUES(4618,'Tanımsız kart','656642',0,2,'2017-09-14 13:48:48.818000',1);
INSERT INTO portunes_identifier VALUES(4619,'Tanımsız kart','4212770',0,2,'2017-09-14 13:48:48.896000',1);
INSERT INTO portunes_identifier VALUES(4620,'Tanımsız kart','164181',0,2,'2017-09-14 15:08:57.069000',1);
INSERT INTO portunes_identifier VALUES(4621,'Tanımsız kart','11184677',0,2,'2017-09-14 15:08:57.149000',1);
INSERT INTO portunes_identifier VALUES(4622,'Tanımsız kart','5570645',0,2,'2017-09-14 15:08:57.229000',1);
INSERT INTO portunes_identifier VALUES(4623,'Tanımsız kart','4735569',0,2,'2017-09-14 15:08:57.309000',1);
INSERT INTO portunes_identifier VALUES(4624,'Tanımsız kart','10571914',0,2,'2017-09-14 15:08:57.389000',1);
INSERT INTO portunes_identifier VALUES(4625,'Tanımsız kart','10749248',0,2,'2017-09-14 15:08:57.469000',1);
INSERT INTO portunes_identifier VALUES(4626,'Tanımsız kart','11076928',0,2,'2017-09-14 15:08:57.549000',1);
INSERT INTO portunes_identifier VALUES(4627,'Tanımsız kart','8733330',0,2,'2017-09-14 15:08:57.629000',1);
INSERT INTO portunes_identifier VALUES(4628,'Tanımsız kart','11030820',0,2,'2017-09-14 15:08:57.709000',1);
INSERT INTO portunes_identifier VALUES(4629,'Tanımsız kart','5592234',0,2,'2017-09-14 15:08:57.789000',1);
INSERT INTO portunes_identifier VALUES(4630,'Tanımsız kart','4851797',0,2,'2017-09-14 15:08:57.868000',1);
INSERT INTO portunes_identifier VALUES(4631,'Tanımsız kart','1398101',0,2,'2017-09-14 15:08:57.949000',1);
INSERT INTO portunes_identifier VALUES(4632,'Tanımsız kart','8934569',0,2,'2017-09-14 15:08:58.029000',1);
INSERT INTO portunes_identifier VALUES(4633,'Tanımsız kart','2396420',0,2,'2017-09-14 15:08:58.109000',1);
INSERT INTO portunes_identifier VALUES(4634,'Tanımsız kart','8956245',0,2,'2017-09-14 15:08:58.271000',1);
INSERT INTO portunes_identifier VALUES(4635,'Tanımsız kart','2790432',0,2,'2017-09-14 15:08:58.351000',1);
INSERT INTO portunes_identifier VALUES(4636,'Tanımsız kart','4358186',0,2,'2017-09-14 15:08:58.430000',1);
INSERT INTO portunes_identifier VALUES(4637,'Tanımsız kart','1354065',0,2,'2017-09-14 15:08:58.510000',1);
INSERT INTO portunes_identifier VALUES(4638,'Tanımsız kart','5587625',0,2,'2017-09-14 15:08:58.590000',1);
INSERT INTO portunes_identifier VALUES(4639,'Tanımsız kart','3147776',0,2,'2017-09-14 15:08:59.309000',1);
INSERT INTO portunes_identifier VALUES(4640,'Tanımsız kart','265',0,2,'2017-09-14 15:08:59.387000',1);
INSERT INTO portunes_identifier VALUES(4641,'Tanımsız kart','4196353',0,2,'2017-09-14 15:08:59.543000',1);
INSERT INTO portunes_identifier VALUES(4642,'Tanımsız kart','9783973',0,2,'2017-09-14 16:28:34.168000',1);
INSERT INTO portunes_identifier VALUES(4643,'Tanımsız kart','666277',0,2,'2017-09-14 16:28:34.345000',1);
INSERT INTO portunes_identifier VALUES(4644,'Tanımsız kart','677024',0,2,'2017-09-14 16:28:34.425000',1);
INSERT INTO portunes_identifier VALUES(4645,'Tanımsız kart','11146581',0,2,'2017-09-14 16:28:34.505000',1);
INSERT INTO portunes_identifier VALUES(4646,'Tanımsız kart','6252482',0,2,'2017-09-15 07:49:15.090000',1);
INSERT INTO portunes_identifier VALUES(4647,'Tanımsız kart','11267320',0,2,'2017-09-15 07:49:15.167000',1);
INSERT INTO portunes_identifier VALUES(4648,'Tanımsız kart','322184',0,2,'2017-09-15 07:49:15.950000',1);
INSERT INTO portunes_identifier VALUES(4649,'Tanımsız kart','11201160',0,2,'2017-09-15 07:49:16.028000',1);
INSERT INTO portunes_identifier VALUES(4650,'Tanımsız kart','12117230',0,2,'2017-09-15 07:49:17.186000',1);
INSERT INTO portunes_identifier VALUES(4651,'Tanımsız kart','16023540',0,2,'2017-09-15 09:13:57.264000',1);
INSERT INTO portunes_identifier VALUES(4652,'Tanımsız kart','2380362',0,2,'2017-09-15 09:13:57.344000',1);
INSERT INTO portunes_identifier VALUES(4653,'Tanımsız kart','958268',0,2,'2017-09-15 10:37:52.298000',1);
INSERT INTO portunes_identifier VALUES(4654,'Tanımsız kart','1908540',0,2,'2017-09-15 10:37:52.378000',1);
INSERT INTO portunes_identifier VALUES(4655,'Tanımsız kart','11880439',0,2,'2017-09-15 13:28:07.493000',1);
INSERT INTO portunes_identifier VALUES(4656,'Tanımsız kart','3843067',0,2,'2017-09-15 13:28:07.573000',1);
INSERT INTO portunes_identifier VALUES(4657,'Tanımsız kart','7686135',0,2,'2017-09-15 13:28:07.653000',1);
INSERT INTO portunes_identifier VALUES(4658,'Tanımsız kart','15654908',0,2,'2017-09-15 13:28:07.894000',1);
INSERT INTO portunes_identifier VALUES(4659,'Tanımsız kart','2366782',0,2,'2017-09-15 13:28:08.058000',1);
INSERT INTO portunes_identifier VALUES(4660,'Tanımsız kart','970654',0,2,'2017-09-15 13:28:08.138000',1);
INSERT INTO portunes_identifier VALUES(4661,'Tanımsız kart','541729',0,2,'2017-09-15 23:23:26.313000',1);
INSERT INTO portunes_identifier VALUES(4662,'Tanımsız kart','2793736',0,2,'2017-09-15 23:23:26.391000',1);
INSERT INTO portunes_identifier VALUES(4663,'Tanımsız kart','6529847',0,2,'2017-09-16 03:36:34.241000',1);
INSERT INTO portunes_identifier VALUES(4664,'Tanımsız kart','65696',0,2,'2017-09-17 15:13:18.778000',1);
INSERT INTO portunes_identifier VALUES(4665,'Tanımsız kart','82',0,2,'2017-09-17 15:13:18.855000',1);
INSERT INTO portunes_identifier VALUES(4666,'Tanımsız kart','2492944',0,2,'2017-09-17 15:13:18.934000',1);
INSERT INTO portunes_identifier VALUES(4667,'Tanımsız kart','2392608',0,2,'2017-09-18 07:17:57.996000',1);
INSERT INTO portunes_identifier VALUES(4668,'Tanımsız kart','4885028',0,2,'2017-09-18 07:17:58.153000',1);
INSERT INTO portunes_identifier VALUES(4669,'Tanımsız kart','4325636',0,2,'2017-09-18 07:17:58.464000',1);
INSERT INTO portunes_identifier VALUES(4670,'Tanımsız kart','12774029',0,2,'2017-09-18 15:04:44.520000',1);
INSERT INTO portunes_identifier VALUES(4671,'Tanımsız kart','16088489',0,2,'2017-09-19 12:05:36.552000',1);
INSERT INTO portunes_identifier VALUES(4672,'Tanımsız kart','16775095',0,2,'2017-09-19 12:05:36.629000',1);
INSERT INTO portunes_identifier VALUES(4673,'Tanımsız kart','1387008',0,2,'2017-09-19 12:05:37.095000',1);
INSERT INTO portunes_identifier VALUES(4674,'Tanımsız kart','6019649',0,2,'2017-09-19 13:35:46.046000',1);
INSERT INTO portunes_identifier VALUES(4675,'Tanımsız kart','4260880',0,2,'2017-09-19 13:35:46.825000',1);
INSERT INTO portunes_identifier VALUES(4676,'Tanımsız kart','11243494',0,2,'2017-09-19 15:05:49.856000',1);
INSERT INTO portunes_identifier VALUES(4677,'Tanımsız kart','14333801',0,2,'2017-09-19 15:05:49.933000',1);
INSERT INTO portunes_identifier VALUES(4678,'Tanımsız kart','16776927',0,2,'2017-09-19 16:35:59.334000',1);
INSERT INTO portunes_identifier VALUES(4679,'Tanımsız kart','12311546',0,2,'2017-09-19 16:35:59.412000',1);
INSERT INTO portunes_identifier VALUES(4680,'Tanımsız kart','16774402',0,2,'2017-09-20 07:34:27.467000',1);
INSERT INTO portunes_identifier VALUES(4681,'Tanımsız kart','15720447',0,2,'2017-09-20 07:34:27.545000',1);
INSERT INTO portunes_identifier VALUES(4682,'Tanımsız kart','16711647',0,2,'2017-09-20 07:34:27.623000',1);
INSERT INTO portunes_identifier VALUES(4683,'Tanımsız kart','12476282',0,2,'2017-09-20 07:34:27.700000',1);
INSERT INTO portunes_identifier VALUES(4684,'Tanımsız kart','15302363',0,2,'2017-09-20 07:34:27.778000',1);
INSERT INTO portunes_identifier VALUES(4685,'Tanımsız kart','12572591',0,2,'2017-09-20 07:34:27.856000',1);
INSERT INTO portunes_identifier VALUES(4686,'Tanımsız kart','15711215',0,2,'2017-09-20 07:34:28.013000',1);
INSERT INTO portunes_identifier VALUES(4687,'Tanımsız kart','13385993',0,2,'2017-09-20 07:34:28.169000',1);
INSERT INTO portunes_identifier VALUES(4688,'Tanımsız kart','11166741',0,2,'2017-09-20 10:34:46.777000',1);
INSERT INTO portunes_identifier VALUES(4689,'Tanımsız kart','5589585',0,2,'2017-09-20 12:04:56.543000',1);
INSERT INTO portunes_identifier VALUES(4690,'Tanımsız kart','11176617',0,2,'2017-09-20 12:04:56.623000',1);
INSERT INTO portunes_identifier VALUES(4691,'Tanımsız kart','10834448',0,2,'2017-09-20 12:04:56.703000',1);
INSERT INTO portunes_identifier VALUES(4692,'Tanımsız kart','1048609',0,2,'2017-09-21 11:27:48.476000',1);
INSERT INTO portunes_identifier VALUES(4693,'Tanımsız kart','11174655',0,2,'2017-09-21 11:27:48.947000',1);
INSERT INTO portunes_identifier VALUES(4694,'Tanımsız kart','13978754',0,2,'2017-09-21 13:45:55.520000',1);
INSERT INTO portunes_identifier VALUES(4695,'Tanımsız kart','4885154',0,2,'2017-09-21 17:18:53.006000',1);
INSERT INTO portunes_identifier VALUES(4696,'Tanımsız kart','12233787',0,2,'2017-09-21 17:18:53.866000',1);
INSERT INTO portunes_identifier VALUES(4697,'Tanımsız kart','8659208',0,2,'2017-09-21 17:18:58.112000',1);
INSERT INTO portunes_identifier VALUES(4698,'Tanımsız kart','8947778',0,2,'2017-09-21 17:18:58.190000',1);
INSERT INTO portunes_identifier VALUES(4699,'Tanımsız kart','8659204',0,2,'2017-09-21 17:18:58.267000',1);
INSERT INTO portunes_identifier VALUES(4700,'Tanımsız kart','4344100',0,2,'2017-09-21 22:25:14.969000',1);
INSERT INTO portunes_identifier VALUES(4701,'Tanımsız kart','2246948',0,2,'2017-09-21 22:25:15.047000',1);
INSERT INTO portunes_identifier VALUES(4702,'Tanımsız kart','11514849',0,2,'2017-09-22 08:35:48.240000',1);
INSERT INTO portunes_identifier VALUES(4703,'Tanımsız kart','1122568',0,2,'2017-09-23 08:24:45.561000',1);
INSERT INTO portunes_identifier VALUES(4704,'Tanımsız kart','160',0,2,'2017-09-25 05:17:29.824000',1);
INSERT INTO portunes_identifier VALUES(4705,'Tanımsız kart','1081353',0,2,'2017-09-25 08:53:43.393000',1);
INSERT INTO portunes_identifier VALUES(4706,'Tanımsız kart','13498938',0,2,'2017-09-25 12:29:35.347000',1);
INSERT INTO portunes_identifier VALUES(4707,'Tanımsız kart','11075858',0,2,'2017-09-25 14:17:47.658000',1);
INSERT INTO portunes_identifier VALUES(4708,'Tanımsız kart','4886864',0,2,'2017-09-25 14:17:47.820000',1);
INSERT INTO portunes_identifier VALUES(4709,'Tanımsız kart','10507536',0,2,'2017-09-25 14:17:47.900000',1);
INSERT INTO portunes_identifier VALUES(4710,'Tanımsız kart','5575817',0,2,'2017-09-25 14:17:47.980000',1);
INSERT INTO portunes_identifier VALUES(4711,'Tanımsız kart','5571856',0,2,'2017-09-25 14:17:48.060000',1);
INSERT INTO portunes_identifier VALUES(4712,'Tanımsız kart','11176522',0,2,'2017-09-25 14:17:48.140000',1);
INSERT INTO portunes_identifier VALUES(4713,'Tanımsız kart','693568',0,2,'2017-09-25 14:17:48.220000',1);
INSERT INTO portunes_identifier VALUES(4714,'Tanımsız kart','10489985',0,2,'2017-09-25 14:17:48.300000',1);
INSERT INTO portunes_identifier VALUES(4715,'Tanımsız kart','8399530',0,2,'2017-09-25 14:17:48.380000',1);
INSERT INTO portunes_identifier VALUES(4716,'Tanımsız kart','4540746',0,2,'2017-09-25 14:17:48.460000',1);
INSERT INTO portunes_identifier VALUES(4717,'Tanımsız kart','10494504',0,2,'2017-09-25 14:17:48.540000',1);
INSERT INTO portunes_identifier VALUES(4718,'Tanımsız kart','4532500',0,2,'2017-09-25 14:17:48.620000',1);
INSERT INTO portunes_identifier VALUES(4719,'Tanımsız kart','5411978',0,2,'2017-09-25 14:17:48.700000',1);
INSERT INTO portunes_identifier VALUES(4720,'Tanımsız kart','2434386',0,2,'2017-09-25 14:17:48.780000',1);
INSERT INTO portunes_identifier VALUES(4721,'Tanımsız kart','11162709',0,2,'2017-09-25 14:17:48.859000',1);
INSERT INTO portunes_identifier VALUES(4722,'Tanımsız kart','2762881',0,2,'2017-09-25 14:17:48.939000',1);
INSERT INTO portunes_identifier VALUES(4723,'Tanımsız kart','4541073',0,2,'2017-09-25 14:17:49.019000',1);
INSERT INTO portunes_identifier VALUES(4724,'Tanımsız kart','11157828',0,2,'2017-09-25 14:17:49.099000',1);
INSERT INTO portunes_identifier VALUES(4725,'Tanımsız kart','5510228',0,2,'2017-09-25 14:17:49.179000',1);
INSERT INTO portunes_identifier VALUES(4726,'Tanımsız kart','4860498',0,2,'2017-09-25 14:17:49.258000',1);
INSERT INTO portunes_identifier VALUES(4727,'Tanımsız kart','8738122',0,2,'2017-09-25 14:17:49.419000',1);
INSERT INTO portunes_identifier VALUES(4728,'Tanımsız kart','2435744',0,2,'2017-09-25 14:17:49.580000',1);
INSERT INTO portunes_identifier VALUES(4729,'Tanımsız kart','5548682',0,2,'2017-09-25 14:17:49.660000',1);
INSERT INTO portunes_identifier VALUES(4730,'Tanımsız kart','11142485',0,2,'2017-09-25 14:17:49.821000',1);
INSERT INTO portunes_identifier VALUES(4731,'Tanımsız kart','1216681',0,2,'2017-09-25 14:17:49.902000',1);
INSERT INTO portunes_identifier VALUES(4732,'Tanımsız kart','2774306',0,2,'2017-09-25 14:17:49.982000',1);
INSERT INTO portunes_identifier VALUES(4733,'Tanımsız kart','135464',0,2,'2017-09-25 14:17:50.062000',1);
INSERT INTO portunes_identifier VALUES(4734,'Tanımsız kart','15373087',0,2,'2017-09-25 17:54:13.878000',1);
INSERT INTO portunes_identifier VALUES(4735,'Tanımsız kart','2086182',0,2,'2017-09-25 17:54:14.270000',1);
INSERT INTO portunes_identifier VALUES(4736,'Tanımsız kart','16755276',0,2,'2017-09-26 06:28:22.134000',1);
INSERT INTO portunes_identifier VALUES(4737,'Tanımsız kart','2345358',0,2,'2017-09-26 08:16:34.222000',1);
INSERT INTO portunes_identifier VALUES(4738,'Tanımsız kart','6539662',0,2,'2017-09-26 08:16:34.299000',1);
INSERT INTO portunes_identifier VALUES(4739,'Tanımsız kart','5438116',0,2,'2017-09-26 11:52:58.777000',1);
INSERT INTO portunes_identifier VALUES(4740,'Tanımsız kart','9458863',0,2,'2017-09-26 11:52:59.245000',1);
INSERT INTO portunes_identifier VALUES(4741,'Tanımsız kart','15642157',0,2,'2017-09-26 13:41:12.349000',1);
INSERT INTO portunes_identifier VALUES(4742,'Tanımsız kart','2009392',0,2,'2017-09-26 13:41:16.956000',1);
INSERT INTO portunes_identifier VALUES(4743,'Tanımsız kart','16774550',0,2,'2017-09-26 13:41:18.599000',1);
INSERT INTO portunes_identifier VALUES(4744,'Tanımsız kart','16768887',0,2,'2017-09-26 13:41:18.677000',1);
INSERT INTO portunes_identifier VALUES(4745,'Tanımsız kart','12304383',0,2,'2017-09-26 13:41:18.755000',1);
INSERT INTO portunes_identifier VALUES(4746,'Tanımsız kart','295168',0,2,'2017-09-26 15:29:23.435000',1);
INSERT INTO portunes_identifier VALUES(4747,'Tanımsız kart','4792320',0,2,'2017-09-26 15:29:23.960000',1);
INSERT INTO portunes_identifier VALUES(4748,'Tanımsız kart','82088',0,2,'2017-09-26 17:17:37.341000',1);
INSERT INTO portunes_identifier VALUES(4749,'Tanımsız kart','5756198',0,2,'2017-09-27 11:18:08.999000',1);
INSERT INTO portunes_identifier VALUES(4750,'Tanımsız kart','11160138',0,2,'2017-09-27 11:18:09.936000',1);
INSERT INTO portunes_identifier VALUES(4751,'Tanımsız kart','1418389',0,2,'2017-09-27 11:18:10.013000',1);
INSERT INTO portunes_identifier VALUES(4752,'Tanımsız kart','1486293',0,2,'2017-09-27 14:55:01.782000',1);
INSERT INTO portunes_identifier VALUES(4753,'Tanımsız kart','2396457',0,2,'2017-09-27 20:19:12.401000',1);
INSERT INTO portunes_identifier VALUES(4754,'Tanımsız kart','4893266',0,2,'2017-09-28 01:42:31.413000',1);
INSERT INTO portunes_identifier VALUES(4755,'Tanımsız kart','8377638',0,2,'2017-09-28 12:31:20.883000',1);
INSERT INTO portunes_identifier VALUES(4756,'Tanımsız kart','9048720',0,2,'2017-09-28 12:31:21.353000',1);
INSERT INTO portunes_identifier VALUES(4757,'Tanımsız kart','1119396',0,2,'2017-09-28 14:19:51.518000',1);
INSERT INTO portunes_identifier VALUES(4758,'Tanımsız kart','4329604',0,2,'2017-09-28 16:05:31.173000',1);
INSERT INTO portunes_identifier VALUES(4759,'Tanımsız kart','1082401',0,2,'2017-09-28 16:05:31.252000',1);
INSERT INTO portunes_identifier VALUES(4760,'Tanımsız kart','8523841',0,2,'2017-09-28 21:27:21.447000',1);
INSERT INTO portunes_identifier VALUES(4761,'Tanımsız kart','1116226',0,2,'2017-09-28 21:27:21.525000',1);
INSERT INTO portunes_identifier VALUES(4762,'Tanımsız kart','8654978',0,2,'2017-09-28 21:27:21.681000',1);
INSERT INTO portunes_identifier VALUES(4763,'Tanımsız kart','11250661',0,2,'2017-09-29 06:25:42.484000',1);
INSERT INTO portunes_identifier VALUES(4764,'Tanımsız kart','11184202',0,2,'2017-09-29 12:00:53.528000',1);
INSERT INTO portunes_identifier VALUES(4765,'Tanımsız kart','4204545',0,2,'2017-09-29 12:00:53.608000',1);
INSERT INTO portunes_identifier VALUES(4766,'Tanımsız kart','15355999',0,2,'2017-09-29 12:00:54.884000',1);
INSERT INTO portunes_identifier VALUES(4767,'Tanımsız kart','9620117',0,2,'2017-09-29 12:00:54.962000',1);
INSERT INTO portunes_identifier VALUES(4768,'Tanımsız kart','15678281',0,2,'2017-09-29 16:00:52.238000',1);
INSERT INTO portunes_identifier VALUES(4769,'Tanımsız kart','7004885',0,2,'2017-09-29 16:00:53.258000',1);
INSERT INTO portunes_identifier VALUES(4770,'Mustafa Güler Yüksel Çalışan','2140451',0,2,'2017-10-03 06:51:59.492000',0);
INSERT INTO portunes_identifier VALUES(4771,'Tanımsız kart','2378025',0,2,'2017-10-03 08:58:48.923000',1);
INSERT INTO portunes_identifier VALUES(4772,'Tanımsız kart','2236680',0,2,'2017-10-03 08:58:50.830000',1);
INSERT INTO portunes_identifier VALUES(4773,'Tanımsız kart','270372',0,2,'2017-10-03 08:58:51.676000',1);
INSERT INTO portunes_identifier VALUES(4774,'Tanımsız kart','2261010',0,2,'2017-10-03 08:58:51.755000',1);
INSERT INTO portunes_identifier VALUES(4775,'Tanımsız kart','2164802',0,2,'2017-10-03 08:58:52.372000',1);
INSERT INTO portunes_identifier VALUES(4776,'Tanımsız kart','10832202',0,2,'2017-10-03 08:59:01.101000',1);
INSERT INTO portunes_identifier VALUES(4777,'Tanımsız kart','11179177',0,2,'2017-10-03 08:59:01.563000',1);
INSERT INTO portunes_identifier VALUES(4778,'Tanımsız kart','11797669',0,2,'2017-10-03 09:45:24.751000',1);
INSERT INTO portunes_identifier VALUES(4779,'Tanımsız kart','14791672',0,2,'2017-10-03 11:20:47.570000',1);
INSERT INTO portunes_identifier VALUES(4780,'Tanımsız kart','16774997',0,2,'2017-10-03 11:52:19.445000',1);
INSERT INTO portunes_identifier VALUES(4781,'Tanımsız kart','16770991',0,2,'2017-10-03 11:52:19.522000',1);
INSERT INTO portunes_identifier VALUES(4782,'Tanımsız kart','2249369',0,2,'2017-10-03 12:24:39.301000',1);
INSERT INTO portunes_identifier VALUES(4783,'Tanımsız kart','16777212',0,2,'2017-10-03 12:24:39.704000',1);
INSERT INTO portunes_identifier VALUES(4784,'Tanımsız kart','16774143',0,2,'2017-10-03 12:24:39.859000',1);
INSERT INTO portunes_identifier VALUES(4785,'Tanımsız kart','16777023',0,2,'2017-10-03 12:24:40.015000',1);
INSERT INTO portunes_identifier VALUES(4786,'Tanımsız kart','16777191',0,2,'2017-10-03 12:24:40.092000',1);
INSERT INTO portunes_identifier VALUES(4787,'Tanımsız kart','16776991',0,2,'2017-10-03 12:24:40.169000',1);
INSERT INTO portunes_identifier VALUES(4788,'Tanımsız kart','16777167',0,2,'2017-10-03 12:24:40.325000',1);
INSERT INTO portunes_identifier VALUES(4789,'Tanımsız kart','16764927',0,2,'2017-10-03 12:24:40.559000',1);
INSERT INTO portunes_identifier VALUES(4790,'Tanımsız kart','16777207',0,2,'2017-10-03 12:24:40.636000',1);
INSERT INTO portunes_identifier VALUES(4791,'Tanımsız kart','16777119',0,2,'2017-10-03 12:24:41.026000',1);
INSERT INTO portunes_identifier VALUES(4792,'Tanımsız kart','16775679',0,2,'2017-10-03 12:24:41.730000',1);
INSERT INTO portunes_identifier VALUES(4793,'Tanımsız kart','16760828',0,2,'2017-10-03 12:24:41.886000',1);
INSERT INTO portunes_identifier VALUES(4794,'Tanımsız kart','10485770',0,2,'2017-10-03 12:24:41.963000',1);
INSERT INTO portunes_identifier VALUES(4795,'Tanımsız kart','5330066',0,2,'2017-10-03 12:24:42.068000',1);
INSERT INTO portunes_identifier VALUES(4796,'Tanımsız kart','3670036',0,2,'2017-10-03 12:56:11.992000',1);
INSERT INTO portunes_identifier VALUES(4797,'Tanımsız kart','2881855',0,2,'2017-10-03 12:56:12.070000',1);
INSERT INTO portunes_identifier VALUES(4798,'Tanımsız kart','6195191',0,2,'2017-10-03 12:56:12.147000',1);
INSERT INTO portunes_identifier VALUES(4799,'Tanımsız kart','145717',0,2,'2017-10-03 12:56:12.303000',1);
INSERT INTO portunes_identifier VALUES(4800,'Tanımsız kart','4867242',0,2,'2017-10-03 14:03:15.752000',1);
INSERT INTO portunes_identifier VALUES(4801,'Tanımsız kart','5542473',0,2,'2017-10-03 14:37:00.695000',1);
INSERT INTO portunes_identifier VALUES(4802,'Tanımsız kart','540969',0,2,'2017-10-03 14:37:00.775000',1);
INSERT INTO portunes_identifier VALUES(4803,'Tanımsız kart','5589289',0,2,'2017-10-03 14:37:00.936000',1);
INSERT INTO portunes_identifier VALUES(4804,'Tanımsız kart','9081490',0,2,'2017-10-03 15:10:52.790000',1);
INSERT INTO portunes_identifier VALUES(4805,'Tanımsız kart','10786122',0,2,'2017-10-03 16:51:53.582000',1);
INSERT INTO portunes_identifier VALUES(4806,'Tanımsız kart','8037654',0,2,'2017-10-04 07:43:25.552000',1);
INSERT INTO portunes_identifier VALUES(4807,'Tanımsız kart','15372845',0,2,'2017-10-04 07:43:25.632000',1);
INSERT INTO portunes_identifier VALUES(4808,'Tanımsız kart','16075302',0,2,'2017-10-04 07:43:25.712000',1);
INSERT INTO portunes_identifier VALUES(4809,'Tanımsız kart','10398021',0,2,'2017-10-04 07:43:25.873000',1);
INSERT INTO portunes_identifier VALUES(4810,'Tanımsız kart','13967188',0,2,'2017-10-04 07:43:25.952000',1);
INSERT INTO portunes_identifier VALUES(4811,'Tanımsız kart','4018827',0,2,'2017-10-04 07:43:26.113000',1);
INSERT INTO portunes_identifier VALUES(4812,'Tanımsız kart','15373389',0,2,'2017-10-04 07:43:26.193000',1);
INSERT INTO portunes_identifier VALUES(4813,'Tanımsız kart','8915105',0,2,'2017-10-04 08:16:00.485000',1);
INSERT INTO portunes_identifier VALUES(4814,'Tanımsız kart','9612795',0,2,'2017-10-04 08:50:13.236000',1);
INSERT INTO portunes_identifier VALUES(4815,'Tanımsız kart','10802085',0,2,'2017-10-04 08:50:13.315000',1);
INSERT INTO portunes_identifier VALUES(4816,'Tanımsız kart','2468426',0,2,'2017-10-04 08:50:13.392000',1);
INSERT INTO portunes_identifier VALUES(4817,'Tanımsız kart','4930346',0,2,'2017-10-04 08:50:13.470000',1);
INSERT INTO portunes_identifier VALUES(4818,'Tanımsız kart','13970731',0,2,'2017-10-04 08:50:13.547000',1);
INSERT INTO portunes_identifier VALUES(4819,'Tanımsız kart','11379922',0,2,'2017-10-04 08:50:13.624000',1);
INSERT INTO portunes_identifier VALUES(4820,'Tanımsız kart','11834026',0,2,'2017-10-04 08:50:13.702000',1);
INSERT INTO portunes_identifier VALUES(4821,'Tanımsız kart','9611946',0,2,'2017-10-04 08:50:13.780000',1);
INSERT INTO portunes_identifier VALUES(4822,'Tanımsız kart','12211510',0,2,'2017-10-04 08:50:13.857000',1);
INSERT INTO portunes_identifier VALUES(4823,'Tanımsız kart','9737545',0,2,'2017-10-04 08:50:13.935000',1);
INSERT INTO portunes_identifier VALUES(4824,'Tanımsız kart','13325170',0,2,'2017-10-04 09:23:43.490000',1);
INSERT INTO portunes_identifier VALUES(4825,'Tanımsız kart','15387308',0,2,'2017-10-04 09:23:43.567000',1);
INSERT INTO portunes_identifier VALUES(4826,'Tanımsız kart','6993261',0,2,'2017-10-04 09:23:43.645000',1);
INSERT INTO portunes_identifier VALUES(4827,'Tanımsız kart','11237012',0,2,'2017-10-04 09:23:43.721000',1);
INSERT INTO portunes_identifier VALUES(4828,'Tanımsız kart','10835114',0,2,'2017-10-04 09:23:43.799000',1);
INSERT INTO portunes_identifier VALUES(4829,'Tanımsız kart','14379957',0,2,'2017-10-04 09:23:43.876000',1);
INSERT INTO portunes_identifier VALUES(4830,'Tanımsız kart','7715669',0,2,'2017-10-04 09:23:43.954000',1);
INSERT INTO portunes_identifier VALUES(4831,'Tanımsız kart','7305849',0,2,'2017-10-04 09:23:44.032000',1);
INSERT INTO portunes_identifier VALUES(4832,'Tanımsız kart','16763821',0,2,'2017-10-04 09:23:44.109000',1);
INSERT INTO portunes_identifier VALUES(4833,'Tanımsız kart','8867727',0,2,'2017-10-04 11:05:24.357000',1);
INSERT INTO portunes_identifier VALUES(4834,'Tanımsız kart','15028319',0,2,'2017-10-04 12:46:30.015000',1);
INSERT INTO portunes_identifier VALUES(4835,'Tanımsız kart','14006968',0,2,'2017-10-04 13:54:05.352000',1);
INSERT INTO portunes_identifier VALUES(4836,'Tanımsız kart','2709334',0,2,'2017-10-04 14:27:48.887000',1);
INSERT INTO portunes_identifier VALUES(4837,'Tanımsız kart','11442729',0,2,'2017-10-04 14:27:49.746000',1);
INSERT INTO portunes_identifier VALUES(4838,'Tanımsız kart','8982801',0,2,'2017-10-04 15:35:23.753000',1);
INSERT INTO portunes_identifier VALUES(4839,'Tanımsız kart','15394219',0,2,'2017-10-04 15:35:24.066000',1);
INSERT INTO portunes_identifier VALUES(4840,'Tanımsız kart','5325892',0,2,'2017-10-04 17:49:20.616000',1);
INSERT INTO portunes_identifier VALUES(4841,'Tanımsız kart','9770122',0,2,'2017-10-05 06:10:40.433000',1);
INSERT INTO portunes_identifier VALUES(4842,'Tanımsız kart','4264516',0,2,'2017-10-05 08:25:23.315000',1);
INSERT INTO portunes_identifier VALUES(4843,'Tanımsız kart','5583477',0,2,'2017-10-05 13:28:45.681000',1);
INSERT INTO portunes_identifier VALUES(4844,'Tanımsız kart','5728569',0,2,'2017-10-05 13:28:45.759000',1);
INSERT INTO portunes_identifier VALUES(4845,'Tanımsız kart','11331989',0,2,'2017-10-05 13:28:45.836000',1);
INSERT INTO portunes_identifier VALUES(4846,'Tanımsız kart','9624883',0,2,'2017-10-05 13:28:45.914000',1);
INSERT INTO portunes_identifier VALUES(4847,'Tanımsız kart','6616361',0,2,'2017-10-05 13:28:45.991000',1);
INSERT INTO portunes_identifier VALUES(4848,'Tanımsız kart','9611942',0,2,'2017-10-05 13:28:46.068000',1);
INSERT INTO portunes_identifier VALUES(4849,'Tanımsız kart','5880621',0,2,'2017-10-05 13:28:46.145000',1);
INSERT INTO portunes_identifier VALUES(4850,'Tanımsız kart','2962790',0,2,'2017-10-05 13:28:46.223000',1);
INSERT INTO portunes_identifier VALUES(4851,'Tanımsız kart','13822702',0,2,'2017-10-05 13:28:46.300000',1);
INSERT INTO portunes_identifier VALUES(4852,'Tanımsız kart','6115758',0,2,'2017-10-05 13:28:47.289000',1);
INSERT INTO portunes_identifier VALUES(4853,'Tanımsız kart','3842908',0,2,'2017-10-05 14:02:38.654000',1);
INSERT INTO portunes_identifier VALUES(4854,'Tanımsız kart','11144190',0,2,'2017-10-05 14:02:41.449000',1);
INSERT INTO portunes_identifier VALUES(4855,'Tanımsız kart','8930338',0,2,'2017-10-05 17:24:19.678000',1);
INSERT INTO portunes_identifier VALUES(4856,'Tanımsız kart','4237381',0,2,'2017-10-05 21:54:14.174000',1);
INSERT INTO portunes_identifier VALUES(4857,'Tanımsız kart','11158090',0,2,'2017-10-05 23:01:45.323000',1);
INSERT INTO portunes_identifier VALUES(4858,'Tanımsız kart','9783850',0,2,'2017-10-05 23:01:45.403000',1);
INSERT INTO portunes_identifier VALUES(4859,'Tanımsız kart','2763434',0,2,'2017-10-06 01:50:35.736000',1);
INSERT INTO portunes_identifier VALUES(4860,'Tanımsız kart','1394980',0,2,'2017-10-06 04:05:49.513000',1);
INSERT INTO portunes_identifier VALUES(4861,'Tanımsız kart','10459469',0,2,'2017-10-06 07:27:59.009000',1);
INSERT INTO portunes_identifier VALUES(4862,'Tanımsız kart','2222740',0,2,'2017-10-06 07:27:59.089000',1);
INSERT INTO portunes_identifier VALUES(4863,'Tanımsız kart','11172178',0,2,'2017-10-06 07:27:59.251000',1);
INSERT INTO portunes_identifier VALUES(4864,'Tanımsız kart','9415249',0,2,'2017-10-06 07:27:59.331000',1);
INSERT INTO portunes_identifier VALUES(4865,'Tanımsız kart','9232291',0,2,'2017-10-06 07:27:59.982000',1);
INSERT INTO portunes_identifier VALUES(4866,'Tanımsız kart','2668533',0,2,'2017-10-06 08:01:40.919000',1);
INSERT INTO portunes_identifier VALUES(4867,'Tanımsız kart','11891050',0,2,'2017-10-06 08:35:25.142000',1);
INSERT INTO portunes_identifier VALUES(4868,'Tanımsız kart','2245162',0,2,'2017-10-06 09:08:36.036000',1);
INSERT INTO portunes_identifier VALUES(4869,'Tanımsız kart','11159690',0,2,'2017-10-06 09:42:28.953000',1);
INSERT INTO portunes_identifier VALUES(4870,'Tanımsız kart','15377951',0,2,'2017-10-06 11:21:53.182000',1);
INSERT INTO portunes_identifier VALUES(4871,'Çağıl Kaderoğlu','2141551',1,2,'2017-10-06 13:50:05.406000',0);
INSERT INTO portunes_identifier VALUES(4872,'Tanımsız kart','10832201',0,2,'2017-10-06 16:58:42.695000',1);
INSERT INTO portunes_identifier VALUES(4873,'Tanımsız kart','9586981',0,2,'2017-10-06 16:58:42.775000',1);
INSERT INTO portunes_identifier VALUES(4874,'Tuncer','2140414',0,1,'2017-10-20 13:06:58.658000',0);
INSERT INTO portunes_identifier VALUES(4875,'yedek','2075533',0,2,'2017-11-09 15:21:27.183000',0);
INSERT INTO portunes_identifier VALUES(4876,'Cihan Susoğutma','2343621',0,2,'2017-11-14 10:11:58.416000',0);
INSERT INTO portunes_identifier VALUES(4877,'Tanımsız kart','5526804',0,2,'2017-11-16 08:10:17.851000',1);
INSERT INTO portunes_identifier VALUES(4878,'Tanımsız kart','5592228',0,2,'2017-11-16 08:10:17.930000',1);
INSERT INTO portunes_identifier VALUES(4879,'Tanımsız kart','10824360',0,2,'2017-11-16 08:10:18.088000',1);
INSERT INTO portunes_identifier VALUES(4880,'Tanımsız kart','11184682',0,2,'2017-11-16 08:10:18.167000',1);
INSERT INTO portunes_identifier VALUES(4881,'Tanımsız kart','5548689',0,2,'2017-11-16 08:10:18.247000',1);
INSERT INTO portunes_identifier VALUES(4882,'Tanımsız kart','9590081',0,2,'2017-11-16 08:10:18.326000',1);
INSERT INTO portunes_identifier VALUES(4883,'Tanımsız kart','4360746',0,2,'2017-11-16 08:10:18.405000',1);
INSERT INTO portunes_identifier VALUES(4884,'Tanımsız kart','2787922',0,2,'2017-11-16 08:10:18.484000',1);
INSERT INTO portunes_identifier VALUES(4885,'Tanımsız kart','10769572',0,2,'2017-11-16 08:10:18.564000',1);
INSERT INTO portunes_identifier VALUES(4886,'Tanımsız kart','5580117',0,2,'2017-11-16 08:10:18.722000',1);
INSERT INTO portunes_identifier VALUES(4887,'Tanımsız kart','9603753',0,2,'2017-11-16 08:10:18.801000',1);
INSERT INTO portunes_identifier VALUES(4888,'Tanımsız kart','9774249',0,2,'2017-11-16 08:10:18.882000',1);
INSERT INTO portunes_identifier VALUES(4889,'Tanımsız kart','666282',0,2,'2017-11-16 08:10:19.119000',1);
INSERT INTO portunes_identifier VALUES(4890,'Tanımsız kart','11142481',0,2,'2017-11-16 08:10:19.198000',1);
INSERT INTO portunes_identifier VALUES(4891,'Tanımsız kart','11053396',0,2,'2017-11-16 08:10:19.278000',1);
INSERT INTO portunes_identifier VALUES(4892,'Tanımsız kart','697682',0,2,'2017-11-16 08:10:19.436000',1);
INSERT INTO portunes_identifier VALUES(4893,'Tanımsız kart','4203536',0,2,'2017-11-16 08:10:19.987000',1);
INSERT INTO portunes_identifier VALUES(4894,'Tanımsız kart','10749066',0,2,'2017-11-16 08:10:20.066000',1);
INSERT INTO portunes_identifier VALUES(4895,'Tanımsız kart','11048098',0,2,'2017-11-16 08:10:20.146000',1);
INSERT INTO portunes_identifier VALUES(4896,'Tanımsız kart','5537802',0,2,'2017-11-16 08:10:20.225000',1);
INSERT INTO portunes_identifier VALUES(4897,'Tanımsız kart','271657',0,2,'2017-11-16 08:10:20.305000',1);
INSERT INTO portunes_identifier VALUES(4898,'Tanımsız kart','2098465',0,2,'2017-11-16 08:10:20.384000',1);
INSERT INTO portunes_identifier VALUES(4899,'Tanımsız kart','6152191',0,2,'2017-11-16 08:10:22.198000',1);
INSERT INTO portunes_identifier VALUES(4900,'Tanımsız kart','11890621',0,2,'2017-11-16 08:10:22.277000',1);
INSERT INTO portunes_identifier VALUES(4901,'Tanımsız kart','12246365',0,2,'2017-11-16 08:10:22.356000',1);
INSERT INTO portunes_identifier VALUES(4902,'Tanımsız kart','16690091',0,2,'2017-11-16 08:10:22.435000',1);
INSERT INTO portunes_identifier VALUES(4903,'Tanımsız kart','11397887',0,2,'2017-11-16 08:10:22.593000',1);
INSERT INTO portunes_identifier VALUES(4904,'Tanımsız kart','15712191',0,2,'2017-11-16 08:10:22.672000',1);
INSERT INTO portunes_identifier VALUES(4905,'Tanımsız kart','14679935',0,2,'2017-11-16 08:10:22.751000',1);
INSERT INTO portunes_identifier VALUES(4906,'Tanımsız kart','12255071',0,2,'2017-11-16 08:10:22.830000',1);
INSERT INTO portunes_identifier VALUES(4907,'Tanımsız kart','5684957',0,2,'2017-11-16 08:10:22.909000',1);
INSERT INTO portunes_identifier VALUES(4908,'Tanımsız kart','15695837',0,2,'2017-11-16 08:10:22.989000',1);
INSERT INTO portunes_identifier VALUES(4909,'Tanımsız kart','14408575',0,2,'2017-11-16 08:10:23.068000',1);
INSERT INTO portunes_identifier VALUES(4910,'Tanımsız kart','12582765',0,2,'2017-11-16 08:10:23.146000',1);
INSERT INTO portunes_identifier VALUES(4911,'Tanımsız kart','11531735',0,2,'2017-11-16 08:10:23.225000',1);
INSERT INTO portunes_identifier VALUES(4912,'Tanımsız kart','16733950',0,2,'2017-11-16 08:10:23.303000',1);
INSERT INTO portunes_identifier VALUES(4913,'Tanımsız kart','14646239',0,2,'2017-11-16 08:10:23.382000',1);
INSERT INTO portunes_identifier VALUES(4914,'Tanımsız kart','16643959',0,2,'2017-11-16 08:10:23.461000',1);
INSERT INTO portunes_identifier VALUES(4915,'Tanımsız kart','7306939',0,2,'2017-11-16 08:10:23.540000',1);
INSERT INTO portunes_identifier VALUES(4916,'Tanımsız kart','14548925',0,2,'2017-11-16 08:10:23.619000',1);
INSERT INTO portunes_identifier VALUES(4917,'Tanımsız kart','13987838',0,2,'2017-11-16 08:10:23.698000',1);
INSERT INTO portunes_identifier VALUES(4918,'Tanımsız kart','16120575',0,2,'2017-11-16 08:10:23.777000',1);
INSERT INTO portunes_identifier VALUES(4919,'Tanımsız kart','6291455',0,2,'2017-11-16 08:10:23.935000',1);
INSERT INTO portunes_identifier VALUES(4920,'Tanımsız kart','16457202',0,2,'2017-11-16 08:10:24.408000',1);
INSERT INTO portunes_identifier VALUES(4921,'Tanımsız kart','2785450',0,2,'2017-11-16 08:10:25.509000',1);
INSERT INTO portunes_identifier VALUES(4922,'Tanımsız kart','74305',0,2,'2017-11-16 08:10:25.588000',1);
INSERT INTO portunes_identifier VALUES(4923,'Tanımsız kart','11093258',0,2,'2017-11-16 08:10:25.667000',1);
INSERT INTO portunes_identifier VALUES(4924,'Tanımsız kart','4805793',0,2,'2017-11-16 08:10:25.746000',1);
INSERT INTO portunes_identifier VALUES(4925,'Tanımsız kart','9521441',0,2,'2017-11-16 08:10:25.825000',1);
INSERT INTO portunes_identifier VALUES(4926,'Tanımsız kart','5546152',0,2,'2017-11-16 08:10:25.905000',1);
INSERT INTO portunes_identifier VALUES(4927,'Tanımsız kart','11184468',0,2,'2017-11-16 08:10:25.984000',1);
INSERT INTO portunes_identifier VALUES(4928,'Tanımsız kart','11142416',0,2,'2017-11-16 08:10:26.063000',1);
INSERT INTO portunes_identifier VALUES(4929,'Tanımsız kart','1200810',0,2,'2017-11-16 08:10:26.143000',1);
INSERT INTO portunes_identifier VALUES(4930,'Tanımsız kart','11143765',0,2,'2017-11-16 08:10:26.222000',1);
INSERT INTO portunes_identifier VALUES(4931,'Tanımsız kart','9078053',0,2,'2017-11-16 08:10:26.301000',1);
INSERT INTO portunes_identifier VALUES(4932,'Tanımsız kart','10824212',0,2,'2017-11-16 08:10:26.381000',1);
INSERT INTO portunes_identifier VALUES(4933,'Tanımsız kart','2756650',0,2,'2017-11-16 08:10:26.539000',1);
INSERT INTO portunes_identifier VALUES(4934,'Tanımsız kart','1313444',0,2,'2017-11-16 08:10:26.618000',1);
INSERT INTO portunes_identifier VALUES(4935,'Tanımsız kart','1223317',0,2,'2017-11-16 08:10:26.776000',1);
INSERT INTO portunes_identifier VALUES(4936,'Tanımsız kart','11097106',0,2,'2017-11-16 08:10:26.855000',1);
INSERT INTO portunes_identifier VALUES(4937,'Tanımsız kart','9000256',0,2,'2017-11-16 08:10:26.934000',1);
INSERT INTO portunes_identifier VALUES(4938,'Tanımsız kart','1083411',0,2,'2017-11-16 08:25:55.210000',1);
INSERT INTO portunes_identifier VALUES(4939,'Tanımsız kart','2625800',0,2,'2017-11-16 08:25:55.286000',1);
INSERT INTO portunes_identifier VALUES(4940,'Tanımsız kart','11179172',0,2,'2017-11-16 08:25:55.439000',1);
INSERT INTO portunes_identifier VALUES(4941,'Tanımsız kart','1123625',0,2,'2017-11-16 08:25:55.516000',1);
INSERT INTO portunes_identifier VALUES(4942,'Tanımsız kart','4477573',0,2,'2017-11-16 08:25:55.593000',1);
INSERT INTO portunes_identifier VALUES(4943,'Tanımsız kart','557203',0,2,'2017-11-16 08:25:55.898000',1);
INSERT INTO portunes_identifier VALUES(4944,'Tanımsız kart','1065540',0,2,'2017-11-16 08:25:55.975000',1);
INSERT INTO portunes_identifier VALUES(4945,'Tanımsız kart','8669320',0,2,'2017-11-16 08:25:56.130000',1);
INSERT INTO portunes_identifier VALUES(4946,'Tanımsız kart','2245778',0,2,'2017-11-16 08:25:56.206000',1);
INSERT INTO portunes_identifier VALUES(4947,'Tanımsız kart','1118546',0,2,'2017-11-16 08:25:56.283000',1);
INSERT INTO portunes_identifier VALUES(4948,'Tanımsız kart','2177',0,2,'2017-11-16 08:25:56.513000',1);
INSERT INTO portunes_identifier VALUES(4949,'Tanımsız kart','37957',0,2,'2017-11-16 08:25:56.589000',1);
INSERT INTO portunes_identifier VALUES(4950,'Tanımsız kart','65545',0,2,'2017-11-16 08:25:56.821000',1);
INSERT INTO portunes_identifier VALUES(4951,'Tanımsız kart','8987170',0,2,'2017-11-16 08:25:56.898000',1);
INSERT INTO portunes_identifier VALUES(4952,'Tanımsız kart','9511460',0,2,'2017-11-16 08:25:56.974000',1);
INSERT INTO portunes_identifier VALUES(4953,'Tanımsız kart','1310864',0,2,'2017-11-16 08:25:57.127000',1);
INSERT INTO portunes_identifier VALUES(4954,'Tanımsız kart','541249',0,2,'2017-11-16 08:25:57.205000',1);
INSERT INTO portunes_identifier VALUES(4955,'Tanımsız kart','1057936',0,2,'2017-11-16 08:25:57.282000',1);
INSERT INTO portunes_identifier VALUES(4956,'Tanımsız kart','8396872',0,2,'2017-11-16 08:25:57.435000',1);
INSERT INTO portunes_identifier VALUES(4957,'Tanımsız kart','262281',0,2,'2017-11-16 08:25:57.511000',1);
INSERT INTO portunes_identifier VALUES(4958,'Tanımsız kart','258',0,2,'2017-11-16 08:25:57.665000',1);
INSERT INTO portunes_identifier VALUES(4959,'Tanımsız kart','4493384',0,2,'2017-11-16 08:25:57.742000',1);
INSERT INTO portunes_identifier VALUES(4960,'Tanımsız kart','4491400',0,2,'2017-11-16 08:25:57.970000',1);
INSERT INTO portunes_identifier VALUES(4961,'Tanımsız kart','1179938',0,2,'2017-11-16 08:25:58.201000',1);
INSERT INTO portunes_identifier VALUES(4962,'Tanımsız kart','9062436',0,2,'2017-11-16 08:25:58.278000',1);
INSERT INTO portunes_identifier VALUES(4963,'Tanımsız kart','525376',0,2,'2017-11-16 08:25:58.355000',1);
INSERT INTO portunes_identifier VALUES(4964,'Tanımsız kart','2261065',0,2,'2017-11-16 08:25:58.509000',1);
INSERT INTO portunes_identifier VALUES(4965,'Tanımsız kart','74898',0,2,'2017-11-16 08:25:58.586000',1);
INSERT INTO portunes_identifier VALUES(4966,'Tanımsız kart','1198372',0,2,'2017-11-16 08:25:58.662000',1);
INSERT INTO portunes_identifier VALUES(4967,'Tanımsız kart','2396452',0,2,'2017-11-16 08:25:58.893000',1);
INSERT INTO portunes_identifier VALUES(4968,'Tanımsız kart','524576',0,2,'2017-11-16 08:25:59.046000',1);
INSERT INTO portunes_identifier VALUES(4969,'Tanımsız kart','2396754',0,2,'2017-11-16 08:26:00.730000',1);
INSERT INTO portunes_identifier VALUES(4970,'Tanımsız kart','8522020',0,2,'2017-11-16 08:26:01.190000',1);
INSERT INTO portunes_identifier VALUES(4971,'Tanımsız kart','4211273',0,2,'2017-11-16 08:26:01.497000',1);
INSERT INTO portunes_identifier VALUES(4972,'Tanımsız kart','524420',0,2,'2017-11-16 08:26:02.034000',1);
INSERT INTO portunes_identifier VALUES(4973,'Tanımsız kart','10785280',0,2,'2017-11-16 08:26:02.111000',1);
INSERT INTO portunes_identifier VALUES(4974,'Tanımsız kart','266',0,2,'2017-11-16 08:26:02.340000',1);
INSERT INTO portunes_identifier VALUES(4975,'Tanımsız kart','279620',0,2,'2017-11-16 08:26:02.646000',1);
INSERT INTO portunes_identifier VALUES(4976,'Tanımsız kart','2362057',0,2,'2017-11-16 08:26:02.723000',1);
INSERT INTO portunes_identifier VALUES(4977,'Tanımsız kart','8987301',0,2,'2017-11-16 08:26:02.800000',1);
INSERT INTO portunes_identifier VALUES(4978,'Tanımsız kart','10625826',0,2,'2017-11-16 08:26:02.953000',1);
INSERT INTO portunes_identifier VALUES(4979,'Tanımsız kart','8405010',0,2,'2017-11-16 08:26:03.030000',1);
INSERT INTO portunes_identifier VALUES(4980,'Tanımsız kart','13799465',0,2,'2017-11-16 08:26:03.107000',1);
INSERT INTO portunes_identifier VALUES(4981,'Tanımsız kart','1198212',0,2,'2017-11-16 08:26:03.715000',1);
INSERT INTO portunes_identifier VALUES(4982,'Tanımsız kart','2359560',0,2,'2017-11-16 08:26:03.943000',1);
INSERT INTO portunes_identifier VALUES(4983,'Tanımsız kart','2433618',0,2,'2017-11-16 08:26:04.173000',1);
INSERT INTO portunes_identifier VALUES(4984,'Tanımsız kart','70985',0,2,'2017-11-16 08:26:04.706000',1);
INSERT INTO portunes_identifier VALUES(4985,'Tanımsız kart','10555690',0,2,'2017-11-16 08:26:05.011000',1);
INSERT INTO portunes_identifier VALUES(4986,'Tanımsız kart','5375112',0,2,'2017-11-16 08:26:05.088000',1);
INSERT INTO portunes_identifier VALUES(4987,'Tanımsız kart','8988745',0,2,'2017-11-16 08:26:05.315000',1);
INSERT INTO portunes_identifier VALUES(4988,'Tanımsız kart','10834504',0,2,'2017-11-16 08:26:05.392000',1);
INSERT INTO portunes_identifier VALUES(4989,'Tanımsız kart','10769045',0,2,'2017-11-16 08:26:05.850000',1);
INSERT INTO portunes_identifier VALUES(4990,'Tanımsız kart','9587016',0,2,'2017-11-16 08:26:06.078000',1);
INSERT INTO portunes_identifier VALUES(4991,'Tanımsız kart','2377988',0,2,'2017-11-16 08:26:06.155000',1);
INSERT INTO portunes_identifier VALUES(4992,'Tanımsız kart','2368520',0,2,'2017-11-16 08:26:06.232000',1);
INSERT INTO portunes_identifier VALUES(4993,'Tanımsız kart','2376737',0,2,'2017-11-16 08:26:06.462000',1);
INSERT INTO portunes_identifier VALUES(4994,'Tanımsız kart','4720772',0,2,'2017-11-16 08:26:06.766000',1);
INSERT INTO portunes_identifier VALUES(4995,'Tanımsız kart','1188360',0,2,'2017-11-16 08:26:06.919000',1);
INSERT INTO portunes_identifier VALUES(4996,'Tanımsız kart','9445712',0,2,'2017-11-16 08:26:07.072000',1);
INSERT INTO portunes_identifier VALUES(4997,'Tanımsız kart','9577508',0,2,'2017-11-16 08:26:07.149000',1);
INSERT INTO portunes_identifier VALUES(4998,'Tanımsız kart','1198658',0,2,'2017-11-16 08:26:07.226000',1);
INSERT INTO portunes_identifier VALUES(4999,'Tanımsız kart','10066329',0,2,'2017-11-16 08:26:07.378000',1);
INSERT INTO portunes_identifier VALUES(5000,'Tanımsız kart','2396744',0,2,'2017-11-16 08:26:07.455000',1);
INSERT INTO portunes_identifier VALUES(5001,'Tanımsız kart','4493604',0,2,'2017-11-16 08:26:08.835000',1);
INSERT INTO portunes_identifier VALUES(5002,'Tanımsız kart','4493897',0,2,'2017-11-16 08:26:09.373000',1);
INSERT INTO portunes_identifier VALUES(5003,'Tanımsız kart','4793481',0,2,'2017-11-16 08:26:12.207000',1);
INSERT INTO portunes_identifier VALUES(5004,'Tanımsız kart','5390920',0,2,'2017-11-16 08:26:15.121000',1);
INSERT INTO portunes_identifier VALUES(5005,'Tanımsız kart','1198153',0,2,'2017-11-16 08:26:15.274000',1);
INSERT INTO portunes_identifier VALUES(5006,'Tanımsız kart','1183762',0,2,'2017-11-16 08:26:15.351000',1);
INSERT INTO portunes_identifier VALUES(5007,'Tanımsız kart','2396672',0,2,'2017-11-16 08:26:15.427000',1);
INSERT INTO portunes_identifier VALUES(5008,'Tanımsız kart','4489761',0,2,'2017-11-16 08:26:15.658000',1);
INSERT INTO portunes_identifier VALUES(5009,'Tanımsız kart','1066240',0,2,'2017-11-16 08:26:15.734000',1);
INSERT INTO portunes_identifier VALUES(5010,'Tanımsız kart','276',0,2,'2017-11-16 08:26:15.811000',1);
INSERT INTO portunes_identifier VALUES(5011,'Tanımsız kart','4473988',0,2,'2017-11-16 08:26:15.965000',1);
INSERT INTO portunes_identifier VALUES(5012,'Tanımsız kart','599204',0,2,'2017-11-16 08:26:16.042000',1);
INSERT INTO portunes_identifier VALUES(5013,'Tanımsız kart','4530722',0,2,'2017-11-16 08:26:16.962000',1);
INSERT INTO portunes_identifier VALUES(5014,'Tanımsız kart','2181381',0,2,'2017-11-16 08:26:18.179000',1);
INSERT INTO portunes_identifier VALUES(5015,'Tanımsız kart','9521449',0,2,'2017-11-16 08:26:18.410000',1);
INSERT INTO portunes_identifier VALUES(5016,'Tanımsız kart','4760234',0,2,'2017-11-16 08:26:18.563000',1);
INSERT INTO portunes_identifier VALUES(5017,'Tanımsız kart','10769044',0,2,'2017-11-16 08:26:18.868000',1);
INSERT INTO portunes_identifier VALUES(5018,'Tanımsız kart','1254533',0,2,'2017-11-16 08:26:19.556000',1);
INSERT INTO portunes_identifier VALUES(5019,'Tanımsız kart','2245156',0,2,'2017-11-16 08:26:19.709000',1);
INSERT INTO portunes_identifier VALUES(5020,'Tanımsız kart','2370120',0,2,'2017-11-16 08:26:20.015000',1);
INSERT INTO portunes_identifier VALUES(5021,'Tanımsız kart','1217170',0,2,'2017-11-16 08:26:20.092000',1);
INSERT INTO portunes_identifier VALUES(5022,'Tanımsız kart','4367914',0,2,'2017-11-16 08:26:20.169000',1);
INSERT INTO portunes_identifier VALUES(5023,'Tanımsız kart','4756036',0,2,'2017-11-16 08:26:20.322000',1);
INSERT INTO portunes_identifier VALUES(5024,'Tanımsız kart','4474001',0,2,'2017-11-16 08:26:20.399000',1);
INSERT INTO portunes_identifier VALUES(5025,'Tanımsız kart','2378020',0,2,'2017-11-16 08:26:20.860000',1);
INSERT INTO portunes_identifier VALUES(5026,'Tanımsız kart','2394404',0,2,'2017-11-16 08:26:20.937000',1);
INSERT INTO portunes_identifier VALUES(5027,'Tanımsız kart','4793489',0,2,'2017-11-16 08:26:21.935000',1);
INSERT INTO portunes_identifier VALUES(5028,'Tanımsız kart','10783012',0,2,'2017-11-16 08:26:22.165000',1);
INSERT INTO portunes_identifier VALUES(5029,'Tanımsız kart','4800804',0,2,'2017-11-16 08:26:23.008000',1);
INSERT INTO portunes_identifier VALUES(5030,'Tanımsız kart','270337',0,2,'2017-11-16 08:26:23.467000',1);
INSERT INTO portunes_identifier VALUES(5031,'Tanımsız kart','9470208',0,2,'2017-11-16 08:26:23.698000',1);
INSERT INTO portunes_identifier VALUES(5032,'Tanımsız kart','4794698',0,2,'2017-11-16 08:26:23.926000',1);
INSERT INTO portunes_identifier VALUES(5033,'Tanımsız kart','4760868',0,2,'2017-11-16 08:26:24.080000',1);
INSERT INTO portunes_identifier VALUES(5034,'Tanımsız kart','2246722',0,2,'2017-11-16 08:26:24.157000',1);
INSERT INTO portunes_identifier VALUES(5035,'Tanımsız kart','8987793',0,2,'2017-11-16 08:26:25.762000',1);
INSERT INTO portunes_identifier VALUES(5036,'Tanımsız kart','8521760',0,2,'2017-11-16 08:26:26.603000',1);
INSERT INTO portunes_identifier VALUES(5037,'Tanımsız kart','2402952',0,2,'2017-11-16 08:26:26.757000',1);
INSERT INTO portunes_identifier VALUES(5038,'Tanımsız kart','2506756',0,2,'2017-11-16 08:26:26.910000',1);
INSERT INTO portunes_identifier VALUES(5039,'Tanımsız kart','2271269',0,2,'2017-11-16 08:26:27.064000',1);
INSERT INTO portunes_identifier VALUES(5040,'Tanımsız kart','6494406',0,2,'2017-11-16 08:26:27.141000',1);
INSERT INTO portunes_identifier VALUES(5041,'Tanımsız kart','2147392',0,2,'2017-11-16 08:26:27.218000',1);
INSERT INTO portunes_identifier VALUES(5042,'Tanımsız kart','9732737',0,2,'2017-11-16 08:26:27.295000',1);
INSERT INTO portunes_identifier VALUES(5043,'Tanımsız kart','2396224',0,2,'2017-11-16 08:26:27.449000',1);
INSERT INTO portunes_identifier VALUES(5044,'Tanımsız kart','13421774',0,2,'2017-11-16 08:26:27.679000',1);
INSERT INTO portunes_identifier VALUES(5045,'Tanımsız kart','9208849',0,2,'2017-11-16 08:26:27.756000',1);
INSERT INTO portunes_identifier VALUES(5046,'Tanımsız kart','9200162',0,2,'2017-11-16 08:26:27.833000',1);
INSERT INTO portunes_identifier VALUES(5047,'Tanımsız kart','1149064',0,2,'2017-11-16 08:26:27.910000',1);
INSERT INTO portunes_identifier VALUES(5048,'Tanımsız kart','1623586',0,2,'2017-11-16 08:26:27.986000',1);
INSERT INTO portunes_identifier VALUES(5049,'Tanımsız kart','559682',0,2,'2017-11-16 08:26:28.063000',1);
INSERT INTO portunes_identifier VALUES(5050,'Tanımsız kart','2271316',0,2,'2017-11-16 08:26:28.140000',1);
INSERT INTO portunes_identifier VALUES(5051,'Tanımsız kart','10518560',0,2,'2017-11-16 08:26:28.370000',1);
INSERT INTO portunes_identifier VALUES(5052,'Tanımsız kart','2184276',0,2,'2017-11-16 08:26:28.447000',1);
INSERT INTO portunes_identifier VALUES(5053,'Tanımsız kart','4793378',0,2,'2017-11-16 08:26:28.523000',1);
INSERT INTO portunes_identifier VALUES(5054,'Tanımsız kart','8987154',0,2,'2017-11-16 08:26:28.601000',1);
INSERT INTO portunes_identifier VALUES(5055,'Tanımsız kart','9589253',0,2,'2017-11-16 08:26:28.678000',1);
INSERT INTO portunes_identifier VALUES(5056,'Tanımsız kart','1123476',0,2,'2017-11-16 08:26:28.754000',1);
INSERT INTO portunes_identifier VALUES(5057,'Tanımsız kart','4753994',0,2,'2017-11-16 08:26:29.974000',1);
INSERT INTO portunes_identifier VALUES(5058,'Tanımsız kart','264208',0,2,'2017-11-16 08:26:30.203000',1);
INSERT INTO portunes_identifier VALUES(5059,'Tanımsız kart','4342352',0,2,'2017-11-16 08:26:30.280000',1);
INSERT INTO portunes_identifier VALUES(5060,'Tanımsız kart','4719649',0,2,'2017-11-16 08:26:30.357000',1);
INSERT INTO portunes_identifier VALUES(5061,'Tanımsız kart','4211848',0,2,'2017-11-16 08:26:30.586000',1);
INSERT INTO portunes_identifier VALUES(5062,'Tanımsız kart','10827044',0,2,'2017-11-16 08:26:30.738000',1);
INSERT INTO portunes_identifier VALUES(5063,'Tanımsız kart','9736786',0,2,'2017-11-16 08:26:30.815000',1);
INSERT INTO portunes_identifier VALUES(5064,'Tanımsız kart','10818084',0,2,'2017-11-16 08:26:30.892000',1);
INSERT INTO portunes_identifier VALUES(5065,'Tanımsız kart','8938008',0,2,'2017-11-16 08:26:31.121000',1);
INSERT INTO portunes_identifier VALUES(5066,'Tanımsız kart','148040',0,2,'2017-11-16 08:26:31.198000',1);
INSERT INTO portunes_identifier VALUES(5067,'Tanımsız kart','9646694',0,2,'2017-11-16 08:26:31.350000',1);
INSERT INTO portunes_identifier VALUES(5068,'Tanımsız kart','9712961',0,2,'2017-11-16 08:26:31.427000',1);
INSERT INTO portunes_identifier VALUES(5069,'Tanımsız kart','8497473',0,2,'2017-11-16 08:26:31.505000',1);
INSERT INTO portunes_identifier VALUES(5070,'Tanımsız kart','2396232',0,2,'2017-11-16 08:26:31.589000',1);
INSERT INTO portunes_identifier VALUES(5071,'Tanımsız kart','2445449',0,2,'2017-11-16 08:26:31.666000',1);
INSERT INTO portunes_identifier VALUES(5072,'Tanımsız kart','69764',0,2,'2017-11-16 08:26:31.742000',1);
INSERT INTO portunes_identifier VALUES(5073,'Tanımsız kart','4755976',0,2,'2017-11-16 08:26:31.819000',1);
INSERT INTO portunes_identifier VALUES(5074,'Tanımsız kart','566564',0,2,'2017-11-16 08:26:31.896000',1);
INSERT INTO portunes_identifier VALUES(5075,'Tanımsız kart','4362834',0,2,'2017-11-16 08:26:32.126000',1);
INSERT INTO portunes_identifier VALUES(5076,'Tanımsız kart','3757226',0,2,'2017-11-16 08:26:32.202000',1);
INSERT INTO portunes_identifier VALUES(5077,'Tanımsız kart','13378051',0,2,'2017-11-16 08:26:32.355000',1);
INSERT INTO portunes_identifier VALUES(5078,'Tanımsız kart','96',0,2,'2017-11-16 08:26:32.586000',1);
INSERT INTO portunes_identifier VALUES(5079,'Tanımsız kart','5243424',0,2,'2017-11-16 08:26:32.663000',1);
INSERT INTO portunes_identifier VALUES(5080,'Tanımsız kart','4800661',0,2,'2017-11-16 08:26:32.739000',1);
INSERT INTO portunes_identifier VALUES(5081,'Tanımsız kart','14223426',0,2,'2017-11-16 08:26:32.892000',1);
INSERT INTO portunes_identifier VALUES(5082,'Tanımsız kart','4540585',0,2,'2017-11-16 08:26:33.045000',1);
INSERT INTO portunes_identifier VALUES(5083,'Tanımsız kart','2245794',0,2,'2017-11-16 08:26:33.428000',1);
INSERT INTO portunes_identifier VALUES(5084,'Tanımsız kart','8948002',0,2,'2017-11-16 08:26:34.729000',1);
INSERT INTO portunes_identifier VALUES(5085,'Tanımsız kart','8950050',0,2,'2017-11-16 08:26:34.882000',1);
INSERT INTO portunes_identifier VALUES(5086,'Tanımsız kart','1118754',0,2,'2017-11-16 08:26:35.112000',1);
INSERT INTO portunes_identifier VALUES(5087,'Tanımsız kart','4753554',0,2,'2017-11-16 08:26:35.266000',1);
INSERT INTO portunes_identifier VALUES(5088,'Tanımsız kart','4491409',0,2,'2017-11-16 08:26:35.496000',1);
INSERT INTO portunes_identifier VALUES(5089,'Tanımsız kart','2245700',0,2,'2017-11-16 08:26:35.573000',1);
INSERT INTO portunes_identifier VALUES(5090,'Tanımsız kart','1197192',0,2,'2017-11-16 08:26:35.650000',1);
INSERT INTO portunes_identifier VALUES(5091,'Tanımsız kart','8987208',0,2,'2017-11-16 08:26:35.803000',1);
INSERT INTO portunes_identifier VALUES(5092,'Tanımsız kart','2396689',0,2,'2017-11-16 08:26:35.958000',1);
INSERT INTO portunes_identifier VALUES(5093,'Tanımsız kart','1118498',0,2,'2017-11-16 08:26:36.034000',1);
INSERT INTO portunes_identifier VALUES(5094,'Tanımsız kart','2236961',0,2,'2017-11-16 08:26:36.571000',1);
INSERT INTO portunes_identifier VALUES(5095,'Tanımsız kart','1116296',0,2,'2017-11-16 08:26:36.878000',1);
INSERT INTO portunes_identifier VALUES(5096,'Tanımsız kart','8982802',0,2,'2017-11-16 08:26:37.108000',1);
INSERT INTO portunes_identifier VALUES(5097,'Tanımsız kart','8947986',0,2,'2017-11-16 08:26:37.261000',1);
INSERT INTO portunes_identifier VALUES(5098,'Tanımsız kart','2237512',0,2,'2017-11-16 08:26:37.338000',1);
INSERT INTO portunes_identifier VALUES(5099,'Tanımsız kart','9577609',0,2,'2017-11-16 08:26:37.492000',1);
INSERT INTO portunes_identifier VALUES(5100,'Tanımsız kart','8950308',0,2,'2017-11-16 08:26:37.722000',1);
INSERT INTO portunes_identifier VALUES(5101,'Tanımsız kart','2237508',0,2,'2017-11-16 08:26:37.798000',1);
INSERT INTO portunes_identifier VALUES(5102,'Tanımsız kart','8987792',0,2,'2017-11-16 08:26:37.951000',1);
INSERT INTO portunes_identifier VALUES(5103,'Tanımsız kart','9576996',0,2,'2017-11-16 08:26:38.028000',1);
INSERT INTO portunes_identifier VALUES(5104,'Tanımsız kart','9577617',0,2,'2017-11-16 08:26:38.182000',1);
INSERT INTO portunes_identifier VALUES(5105,'Tanımsız kart','8947858',0,2,'2017-11-16 08:26:38.258000',1);
INSERT INTO portunes_identifier VALUES(5106,'Tanımsız kart','2394257',0,2,'2017-11-16 08:26:38.335000',1);
INSERT INTO portunes_identifier VALUES(5107,'Tanımsız kart','133136',0,2,'2017-11-16 08:26:38.565000',1);
INSERT INTO portunes_identifier VALUES(5108,'Tanımsız kart','8652832',0,2,'2017-11-16 08:26:38.641000',1);
INSERT INTO portunes_identifier VALUES(5109,'Tanımsız kart','8454660',0,2,'2017-11-16 08:26:38.718000',1);
INSERT INTO portunes_identifier VALUES(5110,'Tanımsız kart','4227330',0,2,'2017-11-16 08:26:38.795000',1);
INSERT INTO portunes_identifier VALUES(5111,'Tanımsız kart','4260360',0,2,'2017-11-16 08:26:38.872000',1);
INSERT INTO portunes_identifier VALUES(5112,'Tanımsız kart','4227329',0,2,'2017-11-16 08:26:38.949000',1);
INSERT INTO portunes_identifier VALUES(5113,'Tanımsız kart','4793377',0,2,'2017-11-16 08:26:39.102000',1);
INSERT INTO portunes_identifier VALUES(5114,'Tanımsız kart','2392356',0,2,'2017-11-16 08:26:39.178000',1);
INSERT INTO portunes_identifier VALUES(5115,'Tanımsız kart','2658850',0,2,'2017-11-16 08:26:39.409000',1);
INSERT INTO portunes_identifier VALUES(5116,'Tanımsız kart','9512073',0,2,'2017-11-16 08:26:39.945000',1);
INSERT INTO portunes_identifier VALUES(5117,'Tanımsız kart','2368073',0,2,'2017-11-16 08:26:40.022000',1);
INSERT INTO portunes_identifier VALUES(5118,'Tanımsız kart','2246802',0,2,'2017-11-16 08:26:40.099000',1);
INSERT INTO portunes_identifier VALUES(5119,'Tanımsız kart','4491410',0,2,'2017-11-16 08:26:40.175000',1);
INSERT INTO portunes_identifier VALUES(5120,'Tanımsız kart','1188420',0,2,'2017-11-16 08:26:40.252000',1);
INSERT INTO portunes_identifier VALUES(5121,'Tanımsız kart','1118500',0,2,'2017-11-16 08:26:40.942000',1);
INSERT INTO portunes_identifier VALUES(5122,'Tanımsız kart','8987172',0,2,'2017-11-16 08:26:41.171000',1);
INSERT INTO portunes_identifier VALUES(5123,'Tanımsız kart','2400548',0,2,'2017-11-16 08:26:41.248000',1);
INSERT INTO portunes_identifier VALUES(5124,'Tanımsız kart','2237000',0,2,'2017-11-16 08:26:41.325000',1);
INSERT INTO portunes_identifier VALUES(5125,'Tanımsız kart','300193',0,2,'2017-11-16 08:26:41.401000',1);
INSERT INTO portunes_identifier VALUES(5126,'Tanımsız kart','4932757',0,2,'2017-11-16 08:26:41.478000',1);
INSERT INTO portunes_identifier VALUES(5127,'Tanımsız kart','9437216',0,2,'2017-11-16 08:26:41.633000',1);
INSERT INTO portunes_identifier VALUES(5128,'Tanımsız kart','145',0,2,'2017-11-16 08:26:41.710000',1);
INSERT INTO portunes_identifier VALUES(5129,'Tanımsız kart','8659489',0,2,'2017-11-16 08:26:41.863000',1);
INSERT INTO portunes_identifier VALUES(5130,'Tanımsız kart','1623601',0,2,'2017-11-16 08:26:41.940000',1);
INSERT INTO portunes_identifier VALUES(5131,'Tanımsız kart','2101506',0,2,'2017-11-16 08:26:42.018000',1);
INSERT INTO portunes_identifier VALUES(5132,'Tanımsız kart','1048856',0,2,'2017-11-16 08:26:42.095000',1);
INSERT INTO portunes_identifier VALUES(5133,'Tanımsız kart','9478144',0,2,'2017-11-16 08:26:42.249000',1);
INSERT INTO portunes_identifier VALUES(5134,'Tanımsız kart','9064530',0,2,'2017-11-16 08:26:42.326000',1);
INSERT INTO portunes_identifier VALUES(5135,'Tanımsız kart','2313',0,2,'2017-11-16 08:26:42.479000',1);
INSERT INTO portunes_identifier VALUES(5136,'Tanımsız kart','1344064',0,2,'2017-11-16 08:26:42.709000',1);
INSERT INTO portunes_identifier VALUES(5137,'Tanımsız kart','9587008',0,2,'2017-11-16 08:26:42.785000',1);
INSERT INTO portunes_identifier VALUES(5138,'Tanımsız kart','8987784',0,2,'2017-11-16 08:26:42.862000',1);
INSERT INTO portunes_identifier VALUES(5139,'Tanımsız kart','4527240',0,2,'2017-11-16 08:26:43.015000',1);
INSERT INTO portunes_identifier VALUES(5140,'Tanımsız kart','4882432',0,2,'2017-11-16 08:26:43.398000',1);
INSERT INTO portunes_identifier VALUES(5141,'Tanımsız kart','10488138',0,2,'2017-11-16 08:26:44.312000',1);
INSERT INTO portunes_identifier VALUES(5142,'Tanımsız kart','4363554',0,2,'2017-11-16 08:26:44.389000',1);
INSERT INTO portunes_identifier VALUES(5143,'Tanımsız kart','1133124',0,2,'2017-11-16 08:26:44.542000',1);
INSERT INTO portunes_identifier VALUES(5144,'Tanımsız kart','1354667',0,2,'2017-11-16 08:26:44.846000',1);
INSERT INTO portunes_identifier VALUES(5145,'Tanımsız kart','4461089',0,2,'2017-11-16 08:26:44.923000',1);
INSERT INTO portunes_identifier VALUES(5146,'Tanımsız kart','529418',0,2,'2017-11-16 08:26:45.534000',1);
INSERT INTO portunes_identifier VALUES(5147,'Tanımsız kart','4793476',0,2,'2017-11-16 08:26:45.610000',1);
INSERT INTO portunes_identifier VALUES(5148,'Tanımsız kart','1196693',0,2,'2017-11-16 08:26:45.687000',1);
INSERT INTO portunes_identifier VALUES(5149,'Tanımsız kart','10785346',0,2,'2017-11-16 08:26:45.764000',1);
INSERT INTO portunes_identifier VALUES(5150,'Tanımsız kart','1189029',0,2,'2017-11-16 08:26:45.840000',1);
INSERT INTO portunes_identifier VALUES(5151,'Tanımsız kart','541266',0,2,'2017-11-16 08:26:46.906000',1);
INSERT INTO portunes_identifier VALUES(5152,'Tanımsız kart','10757412',0,2,'2017-11-16 08:26:47.135000',1);
INSERT INTO portunes_identifier VALUES(5153,'Tanımsız kart','9570562',0,2,'2017-11-16 08:26:47.212000',1);
INSERT INTO portunes_identifier VALUES(5154,'Tanımsız kart','4523396',0,2,'2017-11-16 08:26:47.289000',1);
INSERT INTO portunes_identifier VALUES(5155,'Tanımsız kart','10633216',0,2,'2017-11-16 08:26:47.366000',1);
INSERT INTO portunes_identifier VALUES(5156,'Tanımsız kart','2380356',0,2,'2017-11-16 08:26:47.443000',1);
INSERT INTO portunes_identifier VALUES(5157,'Tanımsız kart','4795028',0,2,'2017-11-16 08:26:47.519000',1);
INSERT INTO portunes_identifier VALUES(5158,'Tanımsız kart','4457640',0,2,'2017-11-16 08:26:47.825000',1);
INSERT INTO portunes_identifier VALUES(5159,'Tanımsız kart','4354',0,2,'2017-11-16 08:26:47.978000',1);
INSERT INTO portunes_identifier VALUES(5160,'Tanımsız kart','4494468',0,2,'2017-11-16 08:26:48.742000',1);
INSERT INTO portunes_identifier VALUES(5161,'Tanımsız kart','1135754',0,2,'2017-11-16 08:26:49.355000',1);
INSERT INTO portunes_identifier VALUES(5162,'Tanımsız kart','4532393',0,2,'2017-11-16 08:26:50.042000',1);
INSERT INTO portunes_identifier VALUES(5163,'Tanımsız kart','9523858',0,2,'2017-11-16 08:26:50.347000',1);
INSERT INTO portunes_identifier VALUES(5164,'Tanımsız kart','2173518',0,2,'2017-11-16 08:26:50.501000',1);
INSERT INTO portunes_identifier VALUES(5165,'Tanımsız kart','8688256',0,2,'2017-11-16 08:26:50.807000',1);
INSERT INTO portunes_identifier VALUES(5166,'Tanımsız kart','2654340',0,2,'2017-11-16 08:26:50.884000',1);
INSERT INTO portunes_identifier VALUES(5167,'Tanımsız kart','8484',0,2,'2017-11-16 08:26:50.961000',1);
INSERT INTO portunes_identifier VALUES(5168,'Tanımsız kart','1184000',0,2,'2017-11-16 08:26:51.115000',1);
INSERT INTO portunes_identifier VALUES(5169,'Tanımsız kart','8225',0,2,'2017-11-16 08:26:51.192000',1);
INSERT INTO portunes_identifier VALUES(5170,'Tanımsız kart','14000789',0,2,'2017-11-16 08:26:51.346000',1);
INSERT INTO portunes_identifier VALUES(5171,'Tanımsız kart','15389077',0,2,'2017-11-16 08:26:51.422000',1);
INSERT INTO portunes_identifier VALUES(5172,'Tanımsız kart','9079328',0,2,'2017-11-16 08:26:51.499000',1);
INSERT INTO portunes_identifier VALUES(5173,'Tanımsız kart','148',0,2,'2017-11-16 08:26:51.652000',1);
INSERT INTO portunes_identifier VALUES(5174,'Tanımsız kart','4797266',0,2,'2017-11-16 08:26:52.461000',1);
INSERT INTO portunes_identifier VALUES(5175,'Tanımsız kart','15455711',0,2,'2017-11-16 08:26:56.221000',1);
INSERT INTO portunes_identifier VALUES(5176,'Tanımsız kart','16478173',0,2,'2017-11-16 08:26:56.300000',1);
INSERT INTO portunes_identifier VALUES(5177,'Tanımsız kart','11986357',0,2,'2017-11-16 08:26:56.378000',1);
INSERT INTO portunes_identifier VALUES(5178,'Tanımsız kart','4806052',0,2,'2017-11-16 08:26:56.458000',1);
INSERT INTO portunes_identifier VALUES(5179,'Tanımsız kart','4829863',0,2,'2017-11-16 08:26:56.537000',1);
INSERT INTO portunes_identifier VALUES(5180,'Tanımsız kart','6794015',0,2,'2017-11-16 08:26:58.028000',1);
INSERT INTO portunes_identifier VALUES(5181,'Tanımsız kart','5682666',0,2,'2017-11-16 08:27:09.479000',1);
INSERT INTO portunes_identifier VALUES(5182,'Tanımsız kart','16034479',0,2,'2017-11-16 08:27:09.559000',1);
INSERT INTO portunes_identifier VALUES(5183,'Tanımsız kart','5594557',0,2,'2017-11-16 08:27:09.638000',1);
INSERT INTO portunes_identifier VALUES(5184,'Tanımsız kart','15379101',0,2,'2017-11-16 08:27:09.717000',1);
INSERT INTO portunes_identifier VALUES(5185,'Tanımsız kart','11512506',0,2,'2017-11-16 08:27:09.796000',1);
INSERT INTO portunes_identifier VALUES(5186,'Tanımsız kart','11358907',0,2,'2017-11-16 08:27:09.875000',1);
INSERT INTO portunes_identifier VALUES(5187,'Tanımsız kart','5600618',0,2,'2017-11-16 08:27:10.033000',1);
INSERT INTO portunes_identifier VALUES(5188,'Tanımsız kart','11184874',0,2,'2017-11-16 08:27:10.112000',1);
INSERT INTO portunes_identifier VALUES(5189,'Tanımsız kart','11253461',0,2,'2017-11-16 08:27:10.270000',1);
INSERT INTO portunes_identifier VALUES(5190,'Tanımsız kart','5614261',0,2,'2017-11-16 08:27:10.349000',1);
INSERT INTO portunes_identifier VALUES(5191,'Tanımsız kart','5592789',0,2,'2017-11-16 08:27:10.507000',1);
INSERT INTO portunes_identifier VALUES(5192,'Tanımsız kart','5593813',0,2,'2017-11-16 08:27:10.586000',1);
INSERT INTO portunes_identifier VALUES(5193,'Tanımsız kart','6991277',0,2,'2017-11-16 08:27:10.665000',1);
INSERT INTO portunes_identifier VALUES(5194,'Tanımsız kart','13989205',0,2,'2017-11-16 08:27:10.824000',1);
INSERT INTO portunes_identifier VALUES(5195,'Tanımsız kart','7165610',0,2,'2017-11-16 08:27:10.903000',1);
INSERT INTO portunes_identifier VALUES(5196,'Tanımsız kart','11228629',0,2,'2017-11-16 08:27:10.982000',1);
INSERT INTO portunes_identifier VALUES(5197,'Tanımsız kart','7035579',0,2,'2017-11-16 08:27:11.062000',1);
INSERT INTO portunes_identifier VALUES(5198,'Tanımsız kart','11251034',0,2,'2017-11-16 08:27:11.141000',1);
INSERT INTO portunes_identifier VALUES(5199,'Tanımsız kart','16438955',0,2,'2017-11-16 08:27:11.220000',1);
INSERT INTO portunes_identifier VALUES(5200,'Tanımsız kart','16084479',0,2,'2017-11-16 08:27:11.299000',1);
INSERT INTO portunes_identifier VALUES(5201,'Tanımsız kart','16110973',0,2,'2017-11-16 08:27:11.378000',1);
INSERT INTO portunes_identifier VALUES(5202,'Tanımsız kart','11500502',0,2,'2017-11-16 08:27:11.458000',1);
INSERT INTO portunes_identifier VALUES(5203,'Tanımsız kart','7847254',0,2,'2017-11-16 08:27:11.537000',1);
INSERT INTO portunes_identifier VALUES(5204,'Tanımsız kart','16758494',0,2,'2017-11-16 08:27:11.616000',1);
INSERT INTO portunes_identifier VALUES(5205,'Tanımsız kart','11230038',0,2,'2017-11-16 08:27:12.009000',1);
INSERT INTO portunes_identifier VALUES(5206,'Tanımsız kart','14024186',0,2,'2017-11-16 08:27:12.088000',1);
INSERT INTO portunes_identifier VALUES(5207,'Tanımsız kart','12442295',0,2,'2017-11-16 08:27:12.167000',1);
INSERT INTO portunes_identifier VALUES(5208,'Tanımsız kart','14638773',0,2,'2017-11-16 08:27:12.246000',1);
INSERT INTO portunes_identifier VALUES(5209,'Tanımsız kart','15686365',0,2,'2017-11-16 08:27:12.326000',1);
INSERT INTO portunes_identifier VALUES(5210,'Tanımsız kart','6157662',0,2,'2017-11-16 08:27:12.405000',1);
INSERT INTO portunes_identifier VALUES(5211,'Tanımsız kart','12015445',0,2,'2017-11-16 08:27:12.484000',1);
INSERT INTO portunes_identifier VALUES(5212,'Tanımsız kart','11381461',0,2,'2017-11-16 08:27:12.563000',1);
INSERT INTO portunes_identifier VALUES(5213,'Tanımsız kart','5758295',0,2,'2017-11-16 08:27:12.642000',1);
INSERT INTO portunes_identifier VALUES(5214,'Tanımsız kart','11885483',0,2,'2017-11-16 08:27:12.721000',1);
INSERT INTO portunes_identifier VALUES(5215,'Tanımsız kart','7056302',0,2,'2017-11-16 08:27:12.801000',1);
INSERT INTO portunes_identifier VALUES(5216,'Tanımsız kart','5958357',0,2,'2017-11-16 08:27:12.880000',1);
INSERT INTO portunes_identifier VALUES(5217,'Tanımsız kart','13986517',0,2,'2017-11-16 08:27:12.959000',1);
INSERT INTO portunes_identifier VALUES(5218,'Tanımsız kart','11251374',0,2,'2017-11-16 08:27:13.039000',1);
INSERT INTO portunes_identifier VALUES(5219,'Tanımsız kart','11990366',0,2,'2017-11-16 08:27:13.118000',1);
INSERT INTO portunes_identifier VALUES(5220,'Tanımsız kart','16493399',0,2,'2017-11-16 08:27:13.197000',1);
INSERT INTO portunes_identifier VALUES(5221,'Tanımsız kart','14085882',0,2,'2017-11-16 08:27:13.276000',1);
INSERT INTO portunes_identifier VALUES(5222,'Tanımsız kart','9052242',0,2,'2017-11-16 08:27:13.908000',1);
INSERT INTO portunes_identifier VALUES(5223,'Tanımsız kart','335937',0,2,'2017-11-16 08:27:13.987000',1);
INSERT INTO portunes_identifier VALUES(5224,'Tanımsız kart','4360489',0,2,'2017-11-16 08:27:14.066000',1);
INSERT INTO portunes_identifier VALUES(5225,'Tanımsız kart','4759568',0,2,'2017-11-16 08:27:14.145000',1);
INSERT INTO portunes_identifier VALUES(5226,'Tanımsız kart','2245905',0,2,'2017-11-16 08:27:14.225000',1);
INSERT INTO portunes_identifier VALUES(5227,'Tanımsız kart','4854281',0,2,'2017-11-16 08:27:14.383000',1);
INSERT INTO portunes_identifier VALUES(5228,'Tanımsız kart','11185525',0,2,'2017-11-16 08:27:14.462000',1);
INSERT INTO portunes_identifier VALUES(5229,'Tanımsız kart','7034203',0,2,'2017-11-16 08:27:14.541000',1);
INSERT INTO portunes_identifier VALUES(5230,'Tanımsız kart','303680',0,2,'2017-11-16 08:27:14.936000',1);
INSERT INTO portunes_identifier VALUES(5231,'Tanımsız kart','8951074',0,2,'2017-11-16 08:27:15.094000',1);
INSERT INTO portunes_identifier VALUES(5232,'Tanımsız kart','2179650',0,2,'2017-11-16 08:27:15.173000',1);
INSERT INTO portunes_identifier VALUES(5233,'Tanımsız kart','4360352',0,2,'2017-11-16 08:27:15.252000',1);
INSERT INTO portunes_identifier VALUES(5234,'Tanımsız kart','9700610',0,2,'2017-11-16 08:27:15.332000',1);
INSERT INTO portunes_identifier VALUES(5235,'Tanımsız kart','295969',0,2,'2017-11-16 08:27:15.411000',1);
INSERT INTO portunes_identifier VALUES(5236,'Tanımsız kart','295441',0,2,'2017-11-16 08:27:15.569000',1);
INSERT INTO portunes_identifier VALUES(5237,'Tanımsız kart','1118344',0,2,'2017-11-16 08:27:19.178000',1);
INSERT INTO portunes_identifier VALUES(5238,'Tanımsız kart','2166852',0,2,'2017-11-16 08:27:19.258000',1);
INSERT INTO portunes_identifier VALUES(5239,'Emre Kazancı','9419151',1,1,'2017-11-23 12:07:15.477000',0);
INSERT INTO portunes_identifier VALUES(5240,'Tanımsız kart','1320',0,2,'2017-11-27 08:19:54.062000',1);
INSERT INTO portunes_identifier VALUES(5241,'Tanımsız kart','1189009',0,2,'2017-11-27 08:19:54.243000',1);
INSERT INTO portunes_identifier VALUES(5242,'Tanımsız kart','10634257',0,2,'2017-11-27 08:19:54.322000',1);
INSERT INTO portunes_identifier VALUES(5243,'Tanımsız kart','3279549',0,2,'2017-11-27 08:19:54.565000',1);
INSERT INTO portunes_identifier VALUES(5244,'Tanımsız kart','11668157',0,2,'2017-11-27 08:19:54.644000',1);
INSERT INTO portunes_identifier VALUES(5245,'Tanımsız kart','9439522',0,2,'2017-11-27 08:19:55.915000',1);
INSERT INTO portunes_identifier VALUES(5246,'Tanımsız kart','2757952',0,2,'2017-11-27 08:19:56.073000',1);
INSERT INTO portunes_identifier VALUES(5247,'Tanımsız kart','11184706',0,2,'2017-11-27 08:19:56.152000',1);
INSERT INTO portunes_identifier VALUES(5248,'Tanımsız kart','1050889',0,2,'2017-11-27 08:19:57.218000',1);
INSERT INTO portunes_identifier VALUES(5249,'Tanımsız kart','1119232',0,2,'2017-11-27 08:19:57.448000',1);
INSERT INTO portunes_identifier VALUES(5250,'Tanımsız kart','3198147',0,2,'2017-11-27 08:19:57.524000',1);
INSERT INTO portunes_identifier VALUES(5251,'Tanımsız kart','6553858',0,2,'2017-11-27 08:19:57.606000',1);
INSERT INTO portunes_identifier VALUES(5252,'Tanımsız kart','558224',0,2,'2017-11-27 08:19:57.687000',1);
INSERT INTO portunes_identifier VALUES(5253,'Tanımsız kart','4891684',0,2,'2017-11-27 08:19:57.764000',1);
INSERT INTO portunes_identifier VALUES(5254,'Tanımsız kart','2728068',0,2,'2017-11-27 08:19:57.841000',1);
INSERT INTO portunes_identifier VALUES(5255,'Tanımsız kart','524753',0,2,'2017-11-27 08:19:57.918000',1);
INSERT INTO portunes_identifier VALUES(5256,'Tanımsız kart','10028382',0,2,'2017-11-27 08:19:58.375000',1);
INSERT INTO portunes_identifier VALUES(5257,'Tanımsız kart','8684576',0,2,'2017-11-27 08:19:58.984000',1);
INSERT INTO portunes_identifier VALUES(5258,'Tanımsız kart','8431952',0,2,'2017-11-27 08:19:59.060000',1);
INSERT INTO portunes_identifier VALUES(5259,'Tanımsız kart','8915072',0,2,'2017-11-27 08:19:59.137000',1);
INSERT INTO portunes_identifier VALUES(5260,'Tanımsız kart','5261344',0,2,'2017-11-27 08:19:59.214000',1);
INSERT INTO portunes_identifier VALUES(5261,'Tanımsız kart','266385',0,2,'2017-11-27 08:19:59.291000',1);
INSERT INTO portunes_identifier VALUES(5262,'Tanımsız kart','4346148',0,2,'2017-11-27 08:19:59.443000',1);
INSERT INTO portunes_identifier VALUES(5263,'Tanımsız kart','2245777',0,2,'2017-11-27 08:19:59.520000',1);
INSERT INTO portunes_identifier VALUES(5264,'Tanımsız kart','4803146',0,2,'2017-11-27 08:19:59.672000',1);
INSERT INTO portunes_identifier VALUES(5265,'Tanımsız kart','4740501',0,2,'2017-11-27 08:19:59.749000',1);
INSERT INTO portunes_identifier VALUES(5266,'Tanımsız kart','9720468',0,2,'2017-11-27 08:19:59.978000',1);
INSERT INTO portunes_identifier VALUES(5267,'Tanımsız kart','3678820',0,2,'2017-11-27 08:20:00.055000',1);
INSERT INTO portunes_identifier VALUES(5268,'Tanımsız kart','2409618',0,2,'2017-11-27 08:20:00.131000',1);
INSERT INTO portunes_identifier VALUES(5269,'Tanımsız kart','8949835',0,2,'2017-11-27 08:20:00.208000',1);
INSERT INTO portunes_identifier VALUES(5270,'Tanımsız kart','140288',0,2,'2017-11-27 08:20:00.361000',1);
INSERT INTO portunes_identifier VALUES(5271,'Tanımsız kart','1083529',0,2,'2017-11-27 08:20:00.438000',1);
INSERT INTO portunes_identifier VALUES(5272,'Tanımsız kart','4259844',0,2,'2017-11-27 08:20:00.591000',1);
INSERT INTO portunes_identifier VALUES(5273,'Tanımsız kart','348808',0,2,'2017-11-27 08:20:00.667000',1);
INSERT INTO portunes_identifier VALUES(5274,'Tanımsız kart','9200184',0,2,'2017-11-27 08:20:00.896000',1);
INSERT INTO portunes_identifier VALUES(5275,'Tanımsız kart','2232580',0,2,'2017-11-27 08:20:01.278000',1);
INSERT INTO portunes_identifier VALUES(5276,'Tanımsız kart','11052065',0,2,'2017-11-27 08:20:01.508000',1);
INSERT INTO portunes_identifier VALUES(5277,'Tanımsız kart','4789608',0,2,'2017-11-27 08:20:01.584000',1);
INSERT INTO portunes_identifier VALUES(5278,'Tanımsız kart','4786441',0,2,'2017-11-27 08:20:01.737000',1);
INSERT INTO portunes_identifier VALUES(5279,'Tanımsız kart','9065041',0,2,'2017-11-27 08:20:01.814000',1);
INSERT INTO portunes_identifier VALUES(5280,'Tanımsız kart','2386570',0,2,'2017-11-27 08:20:01.891000',1);
INSERT INTO portunes_identifier VALUES(5281,'Tanımsız kart','8422538',0,2,'2017-11-27 08:20:02.119000',1);
INSERT INTO portunes_identifier VALUES(5282,'Tanımsız kart','2146304',0,2,'2017-11-27 08:20:02.501000',1);
INSERT INTO portunes_identifier VALUES(5283,'Tanımsız kart','12782640',0,2,'2017-11-27 08:20:02.655000',1);
INSERT INTO portunes_identifier VALUES(5284,'Tanımsız kart','3313937',0,2,'2017-11-27 08:20:02.732000',1);
INSERT INTO portunes_identifier VALUES(5285,'Tanımsız kart','9503810',0,2,'2017-11-27 08:20:02.810000',1);
INSERT INTO portunes_identifier VALUES(5286,'Tanımsız kart','9445990',0,2,'2017-11-27 08:20:02.887000',1);
INSERT INTO portunes_identifier VALUES(5287,'Tanımsız kart','9577028',0,2,'2017-11-27 08:20:02.964000',1);
INSERT INTO portunes_identifier VALUES(5288,'Tanımsız kart','13144648',0,2,'2017-11-27 08:20:03.041000',1);
INSERT INTO portunes_identifier VALUES(5289,'Tanımsız kart','8667665',0,2,'2017-11-27 08:20:03.118000',1);
INSERT INTO portunes_identifier VALUES(5290,'Tanımsız kart','4792836',0,2,'2017-11-27 08:20:03.195000',1);
INSERT INTO portunes_identifier VALUES(5291,'Tanımsız kart','8802569',0,2,'2017-11-27 08:20:03.271000',1);
INSERT INTO portunes_identifier VALUES(5292,'Tanımsız kart','8659076',0,2,'2017-11-27 08:20:03.425000',1);
INSERT INTO portunes_identifier VALUES(5293,'Tanımsız kart','6988373',0,2,'2017-11-27 08:20:03.579000',1);
INSERT INTO portunes_identifier VALUES(5294,'Tanımsız kart','1311232',0,2,'2017-11-27 08:20:03.810000',1);
INSERT INTO portunes_identifier VALUES(5295,'Tanımsız kart','3355443',0,2,'2017-11-27 08:20:03.964000',1);
INSERT INTO portunes_identifier VALUES(5296,'Tanımsız kart','4477572',0,2,'2017-11-27 08:20:04.118000',1);
INSERT INTO portunes_identifier VALUES(5297,'Tanımsız kart','10654249',0,2,'2017-11-27 08:20:04.195000',1);
INSERT INTO portunes_identifier VALUES(5298,'Tanımsız kart','2647234',0,2,'2017-11-27 08:20:04.348000',1);
INSERT INTO portunes_identifier VALUES(5299,'Tanımsız kart','282752',0,2,'2017-11-27 08:20:04.424000',1);
INSERT INTO portunes_identifier VALUES(5300,'Tanımsız kart','5591722',0,2,'2017-11-27 08:20:04.501000',1);
INSERT INTO portunes_identifier VALUES(5301,'Tanımsız kart','5579776',0,2,'2017-11-27 08:20:04.580000',1);
INSERT INTO portunes_identifier VALUES(5302,'Tanımsız kart','1217092',0,2,'2017-11-27 08:20:04.885000',1);
INSERT INTO portunes_identifier VALUES(5303,'Tanımsız kart','2434184',0,2,'2017-11-27 08:20:04.962000',1);
INSERT INTO portunes_identifier VALUES(5304,'Tanımsız kart','4728971',0,2,'2017-11-27 08:20:05.270000',1);
INSERT INTO portunes_identifier VALUES(5305,'Tanımsız kart','2247880',0,2,'2017-11-27 08:20:05.423000',1);
INSERT INTO portunes_identifier VALUES(5306,'Tanımsız kart','561410',0,2,'2017-11-27 08:20:05.500000',1);
INSERT INTO portunes_identifier VALUES(5307,'Tanımsız kart','149777',0,2,'2017-11-27 08:20:05.655000',1);
INSERT INTO portunes_identifier VALUES(5308,'Tanımsız kart','2230304',0,2,'2017-11-27 08:20:05.732000',1);
INSERT INTO portunes_identifier VALUES(5309,'Tanımsız kart','10494024',0,2,'2017-11-27 08:20:05.808000',1);
INSERT INTO portunes_identifier VALUES(5310,'Tanımsız kart','9585152',0,2,'2017-11-27 08:20:05.886000',1);
INSERT INTO portunes_identifier VALUES(5311,'Tanımsız kart','12988812',0,2,'2017-11-27 08:20:06.039000',1);
INSERT INTO portunes_identifier VALUES(5312,'Tanımsız kart','8405128',0,2,'2017-11-27 08:20:06.116000',1);
INSERT INTO portunes_identifier VALUES(5313,'Tanımsız kart','824336',0,2,'2017-11-27 08:20:06.194000',1);
INSERT INTO portunes_identifier VALUES(5314,'Tanımsız kart','2246788',0,2,'2017-11-27 08:20:06.271000',1);
INSERT INTO portunes_identifier VALUES(5315,'Tanımsız kart','4723264',0,2,'2017-11-27 08:20:06.730000',1);
INSERT INTO portunes_identifier VALUES(5316,'Tanımsız kart','9996882',0,2,'2017-11-27 08:20:06.807000',1);
INSERT INTO portunes_identifier VALUES(5317,'Tanımsız kart','12989209',0,2,'2017-11-27 08:20:07.113000',1);
INSERT INTO portunes_identifier VALUES(5318,'Tanımsız kart','2397216',0,2,'2017-11-27 08:20:07.191000',1);
INSERT INTO portunes_identifier VALUES(5319,'Tanımsız kart','9200177',0,2,'2017-11-27 08:20:07.267000',1);
INSERT INTO portunes_identifier VALUES(5320,'Tanımsız kart','576611',0,2,'2017-11-27 08:20:07.344000',1);
INSERT INTO portunes_identifier VALUES(5321,'Tanımsız kart','2252806',0,2,'2017-11-27 08:20:07.421000',1);
INSERT INTO portunes_identifier VALUES(5322,'Tanımsız kart','9200408',0,2,'2017-11-27 08:20:07.498000',1);
INSERT INTO portunes_identifier VALUES(5323,'Tanımsız kart','8949846',0,2,'2017-11-27 08:20:07.575000',1);
INSERT INTO portunes_identifier VALUES(5324,'Tanımsız kart','4872390',0,2,'2017-11-27 08:20:07.652000',1);
INSERT INTO portunes_identifier VALUES(5325,'Tanımsız kart','10756136',0,2,'2017-11-27 08:20:07.729000',1);
INSERT INTO portunes_identifier VALUES(5326,'Tanımsız kart','8421890',0,2,'2017-11-27 08:20:07.806000',1);
INSERT INTO portunes_identifier VALUES(5327,'Tanımsız kart','536774',0,2,'2017-11-27 08:20:07.883000',1);
INSERT INTO portunes_identifier VALUES(5328,'Tanımsız kart','2794048',0,2,'2017-11-27 08:20:07.960000',1);
INSERT INTO portunes_identifier VALUES(5329,'Tanımsız kart','9445650',0,2,'2017-11-27 08:20:08.114000',1);
INSERT INTO portunes_identifier VALUES(5330,'Tanımsız kart','11027593',0,2,'2017-11-27 08:20:08.343000',1);
INSERT INTO portunes_identifier VALUES(5331,'Tanımsız kart','1198674',0,2,'2017-11-27 08:20:08.420000',1);
INSERT INTO portunes_identifier VALUES(5332,'Tanımsız kart','599338',0,2,'2017-11-27 08:20:09.183000',1);
INSERT INTO portunes_identifier VALUES(5333,'Tanımsız kart','2101809',0,2,'2017-11-27 08:20:09.260000',1);
INSERT INTO portunes_identifier VALUES(5334,'Tanımsız kart','13394712',0,2,'2017-11-27 08:20:09.337000',1);
INSERT INTO portunes_identifier VALUES(5335,'Tanımsız kart','1184036',0,2,'2017-11-27 08:20:09.567000',1);
INSERT INTO portunes_identifier VALUES(5336,'Tanımsız kart','1188104',0,2,'2017-11-27 08:20:09.797000',1);
INSERT INTO portunes_identifier VALUES(5337,'Tanımsız kart','5310728',0,2,'2017-11-27 08:20:09.874000',1);
INSERT INTO portunes_identifier VALUES(5338,'Tanımsız kart','9513124',0,2,'2017-11-27 08:20:10.256000',1);
INSERT INTO portunes_identifier VALUES(5339,'Tanımsız kart','2377796',0,2,'2017-11-27 08:20:10.332000',1);
INSERT INTO portunes_identifier VALUES(5340,'Tanımsız kart','1044',0,2,'2017-11-27 08:20:10.868000',1);
INSERT INTO portunes_identifier VALUES(5341,'Tanımsız kart','2396690',0,2,'2017-11-27 08:20:11.482000',1);
INSERT INTO portunes_identifier VALUES(5342,'Tanımsız kart','4474114',0,2,'2017-11-27 08:20:11.559000',1);
INSERT INTO portunes_identifier VALUES(5343,'Tanımsız kart','10785348',0,2,'2017-11-27 08:20:11.865000',1);
INSERT INTO portunes_identifier VALUES(5344,'Tanımsız kart','4788818',0,2,'2017-11-27 08:20:11.942000',1);
INSERT INTO portunes_identifier VALUES(5345,'Tanımsız kart','4727817',0,2,'2017-11-27 08:20:12.019000',1);
INSERT INTO portunes_identifier VALUES(5346,'Tanımsız kart','4794441',0,2,'2017-11-27 08:20:12.096000',1);
INSERT INTO portunes_identifier VALUES(5347,'Tanımsız kart','1197188',0,2,'2017-11-27 08:20:12.173000',1);
INSERT INTO portunes_identifier VALUES(5348,'Tanımsız kart','4760874',0,2,'2017-11-27 08:20:12.403000',1);
INSERT INTO portunes_identifier VALUES(5349,'Tanımsız kart','167936',0,2,'2017-11-27 08:20:12.556000',1);
INSERT INTO portunes_identifier VALUES(5350,'Tanımsız kart','3426384',0,2,'2017-11-27 08:20:12.644000',1);
INSERT INTO portunes_identifier VALUES(5351,'Tanımsız kart','10637904',0,2,'2017-11-27 08:20:12.720000',1);
INSERT INTO portunes_identifier VALUES(5352,'Tanımsız kart','66112',0,2,'2017-11-27 08:20:12.797000',1);
INSERT INTO portunes_identifier VALUES(5353,'Tanımsız kart','164864',0,2,'2017-11-27 08:20:12.874000',1);
INSERT INTO portunes_identifier VALUES(5354,'Tanımsız kart','5276192',0,2,'2017-11-27 08:20:12.951000',1);
INSERT INTO portunes_identifier VALUES(5355,'Tanımsız kart','2704532',0,2,'2017-11-27 08:20:13.028000',1);
INSERT INTO portunes_identifier VALUES(5356,'Tanımsız kart','1311314',0,2,'2017-11-27 08:20:13.105000',1);
INSERT INTO portunes_identifier VALUES(5357,'Tanımsız kart','4194452',0,2,'2017-11-27 08:20:13.182000',1);
INSERT INTO portunes_identifier VALUES(5358,'Tanımsız kart','8454176',0,2,'2017-11-27 08:20:13.335000',1);
INSERT INTO portunes_identifier VALUES(5359,'Tanımsız kart','8683520',0,2,'2017-11-27 08:20:13.412000',1);
INSERT INTO portunes_identifier VALUES(5360,'Tanımsız kart','8528896',0,2,'2017-11-27 08:20:13.489000',1);
INSERT INTO portunes_identifier VALUES(5361,'Tanımsız kart','545316',0,2,'2017-11-27 08:20:13.643000',1);
INSERT INTO portunes_identifier VALUES(5362,'Tanımsız kart','13781264',0,2,'2017-11-27 08:20:13.720000',1);
INSERT INTO portunes_identifier VALUES(5363,'Tanımsız kart','4543593',0,2,'2017-11-27 08:20:13.797000',1);
INSERT INTO portunes_identifier VALUES(5364,'Tanımsız kart','2433056',0,2,'2017-11-27 08:20:13.950000',1);
INSERT INTO portunes_identifier VALUES(5365,'Tanımsız kart','4494481',0,2,'2017-11-27 08:20:14.027000',1);
INSERT INTO portunes_identifier VALUES(5366,'Tanımsız kart','4543017',0,2,'2017-11-27 08:20:14.104000',1);
INSERT INTO portunes_identifier VALUES(5367,'Tanımsız kart','4792650',0,2,'2017-11-27 08:20:14.258000',1);
INSERT INTO portunes_identifier VALUES(5368,'Tanımsız kart','1182049',0,2,'2017-11-27 08:20:14.335000',1);
INSERT INTO portunes_identifier VALUES(5369,'Tanımsız kart','2663505',0,2,'2017-11-27 08:20:14.487000',1);
INSERT INTO portunes_identifier VALUES(5370,'Tanımsız kart','5379256',0,2,'2017-11-27 08:20:14.564000',1);
INSERT INTO portunes_identifier VALUES(5371,'Tanımsız kart','1347874',0,2,'2017-11-27 08:20:14.717000',1);
INSERT INTO portunes_identifier VALUES(5372,'Tanımsız kart','4756116',0,2,'2017-11-27 08:20:14.794000',1);
INSERT INTO portunes_identifier VALUES(5373,'Tanımsız kart','304425',0,2,'2017-11-27 08:20:14.871000',1);
INSERT INTO portunes_identifier VALUES(5374,'Tanımsız kart','5378581',0,2,'2017-11-27 08:20:14.947000',1);
INSERT INTO portunes_identifier VALUES(5375,'Tanımsız kart','4867144',0,2,'2017-11-27 08:20:15.175000',1);
INSERT INTO portunes_identifier VALUES(5376,'Tanımsız kart','4803106',0,2,'2017-11-27 08:20:15.252000',1);
INSERT INTO portunes_identifier VALUES(5377,'Tanımsız kart','8684857',0,2,'2017-11-27 08:20:15.329000',1);
INSERT INTO portunes_identifier VALUES(5378,'Tanımsız kart','4754002',0,2,'2017-11-27 08:20:15.635000',1);
INSERT INTO portunes_identifier VALUES(5379,'Tanımsız kart','545690',0,2,'2017-11-27 08:20:15.713000',1);
INSERT INTO portunes_identifier VALUES(5380,'Tanımsız kart','1346217',0,2,'2017-11-27 08:20:15.943000',1);
INSERT INTO portunes_identifier VALUES(5381,'Tanımsız kart','1216678',0,2,'2017-11-27 08:20:16.095000',1);
INSERT INTO portunes_identifier VALUES(5382,'Tanımsız kart','8726692',0,2,'2017-11-27 08:20:16.248000',1);
INSERT INTO portunes_identifier VALUES(5383,'Tanımsız kart','10765394',0,2,'2017-11-27 08:20:16.402000',1);
INSERT INTO portunes_identifier VALUES(5384,'Tanımsız kart','10785428',0,2,'2017-11-27 08:20:16.631000',1);
INSERT INTO portunes_identifier VALUES(5385,'Tanımsız kart','1608258',0,2,'2017-11-27 08:20:16.860000',1);
INSERT INTO portunes_identifier VALUES(5386,'Tanımsız kart','17026',0,2,'2017-11-27 08:20:17.473000',1);
INSERT INTO portunes_identifier VALUES(5387,'Tanımsız kart','9280',0,2,'2017-11-27 08:20:17.703000',1);
INSERT INTO portunes_identifier VALUES(5388,'Tanımsız kart','4261904',0,2,'2017-11-27 08:20:17.780000',1);
INSERT INTO portunes_identifier VALUES(5389,'Tanımsız kart','8392706',0,2,'2017-11-27 08:20:18.472000',1);
INSERT INTO portunes_identifier VALUES(5390,'Tanımsız kart','73986',0,2,'2017-11-27 08:20:18.625000',1);
INSERT INTO portunes_identifier VALUES(5391,'Tanımsız kart','8650880',0,2,'2017-11-27 08:20:19.163000',1);
INSERT INTO portunes_identifier VALUES(5392,'Tanımsız kart','73732',0,2,'2017-11-27 08:20:19.240000',1);
INSERT INTO portunes_identifier VALUES(5393,'Tanımsız kart','9474192',0,2,'2017-11-27 08:20:19.317000',1);
INSERT INTO portunes_identifier VALUES(5394,'Tanımsız kart','4456457',0,2,'2017-11-27 08:20:19.471000',1);
INSERT INTO portunes_identifier VALUES(5395,'Tanımsız kart','4228224',0,2,'2017-11-27 08:20:19.547000',1);
INSERT INTO portunes_identifier VALUES(5396,'Tanımsız kart','4457472',0,2,'2017-11-27 08:20:19.931000',1);
INSERT INTO portunes_identifier VALUES(5397,'Tanımsız kart','4195364',0,2,'2017-11-27 08:20:20.544000',1);
INSERT INTO portunes_identifier VALUES(5398,'Tanımsız kart','263177',0,2,'2017-11-27 08:20:20.621000',1);
INSERT INTO portunes_identifier VALUES(5399,'Tanımsız kart','4722720',0,2,'2017-11-27 08:20:20.851000',1);
INSERT INTO portunes_identifier VALUES(5400,'Tanımsız kart','272384',0,2,'2017-11-27 08:20:20.928000',1);
INSERT INTO portunes_identifier VALUES(5401,'Tanımsız kart','4235280',0,2,'2017-11-27 08:20:21.081000',1);
INSERT INTO portunes_identifier VALUES(5402,'Tanımsız kart','32834',0,2,'2017-11-27 08:20:21.158000',1);
INSERT INTO portunes_identifier VALUES(5403,'Tanımsız kart','1184912',0,2,'2017-11-27 08:20:21.235000',1);
INSERT INTO portunes_identifier VALUES(5404,'Tanımsız kart','1316',0,2,'2017-11-27 08:20:21.388000',1);
INSERT INTO portunes_identifier VALUES(5405,'Tanımsız kart','8405138',0,2,'2017-11-27 08:20:21.465000',1);
INSERT INTO portunes_identifier VALUES(5406,'Tanımsız kart','1085504',0,2,'2017-11-27 08:20:21.542000',1);
INSERT INTO portunes_identifier VALUES(5407,'Tanımsız kart','4202761',0,2,'2017-11-27 08:20:21.619000',1);
INSERT INTO portunes_identifier VALUES(5408,'Tanımsız kart','8202',0,2,'2017-11-27 08:20:22.079000',1);
INSERT INTO portunes_identifier VALUES(5409,'Tanımsız kart','8668168',0,2,'2017-11-27 08:20:22.311000',1);
INSERT INTO portunes_identifier VALUES(5410,'Tanımsız kart','8393289',0,2,'2017-11-27 08:20:22.464000',1);
INSERT INTO portunes_identifier VALUES(5411,'Tanımsız kart','2392064',0,2,'2017-11-27 08:20:22.618000',1);
INSERT INTO portunes_identifier VALUES(5412,'Tanımsız kart','18433',0,2,'2017-11-27 08:20:22.925000',1);
INSERT INTO portunes_identifier VALUES(5413,'Tanımsız kart','2121',0,2,'2017-11-27 08:20:23.463000',1);
INSERT INTO portunes_identifier VALUES(5414,'Tanımsız kart','543009',0,2,'2017-11-27 08:20:23.540000',1);
INSERT INTO portunes_identifier VALUES(5415,'Tanımsız kart','2695426',0,2,'2017-11-27 08:20:23.617000',1);
INSERT INTO portunes_identifier VALUES(5416,'Tanımsız kart','1170',0,2,'2017-11-27 08:20:23.694000',1);
INSERT INTO portunes_identifier VALUES(5417,'Tanımsız kart','1180818',0,2,'2017-11-27 08:20:25.080000',1);
INSERT INTO portunes_identifier VALUES(5418,'Tanımsız kart','16964',0,2,'2017-11-27 08:20:25.157000',1);
INSERT INTO portunes_identifier VALUES(5419,'Tanımsız kart','4723272',0,2,'2017-11-27 08:20:25.311000',1);
INSERT INTO portunes_identifier VALUES(5420,'Tanımsız kart','4473992',0,2,'2017-11-27 08:20:25.618000',1);
INSERT INTO portunes_identifier VALUES(5421,'Tanımsız kart','4477588',0,2,'2017-11-27 08:20:25.695000',1);
INSERT INTO portunes_identifier VALUES(5422,'Tanımsız kart','5390480',0,2,'2017-11-27 08:20:26.152000',1);
INSERT INTO portunes_identifier VALUES(5423,'Tanımsız kart','5373328',0,2,'2017-11-27 08:20:26.381000',1);
INSERT INTO portunes_identifier VALUES(5424,'Tanımsız kart','9578756',0,2,'2017-11-27 08:20:26.611000',1);
INSERT INTO portunes_identifier VALUES(5425,'Tanımsız kart','10487808',0,2,'2017-11-27 08:20:28.062000',1);
INSERT INTO portunes_identifier VALUES(5426,'Tanımsız kart','262153',0,2,'2017-11-27 08:20:28.216000',1);
INSERT INTO portunes_identifier VALUES(5427,'Tanımsız kart','2172036',0,2,'2017-11-27 08:20:28.906000',1);
INSERT INTO portunes_identifier VALUES(5428,'Tanımsız kart','1197060',0,2,'2017-11-27 08:20:29.215000',1);
INSERT INTO portunes_identifier VALUES(5429,'Tanımsız kart','595092',0,2,'2017-11-27 08:20:29.291000',1);
INSERT INTO portunes_identifier VALUES(5430,'Tanımsız kart','2393120',0,2,'2017-11-27 08:20:29.368000',1);
INSERT INTO portunes_identifier VALUES(5431,'Tanımsız kart','2244608',0,2,'2017-11-27 08:20:29.445000',1);
INSERT INTO portunes_identifier VALUES(5432,'Tanımsız kart','10494536',0,2,'2017-11-27 08:20:29.523000',1);
INSERT INTO portunes_identifier VALUES(5433,'Tanımsız kart','8462628',0,2,'2017-11-27 08:20:29.599000',1);
INSERT INTO portunes_identifier VALUES(5434,'Tanımsız kart','2393234',0,2,'2017-11-27 08:20:29.676000',1);
INSERT INTO portunes_identifier VALUES(5435,'Tanımsız kart','8659529',0,2,'2017-11-27 08:20:29.829000',1);
INSERT INTO portunes_identifier VALUES(5436,'Tanımsız kart','9734178',0,2,'2017-11-27 08:20:29.906000',1);
INSERT INTO portunes_identifier VALUES(5437,'Tanımsız kart','8652993',0,2,'2017-11-27 08:20:30.060000',1);
INSERT INTO portunes_identifier VALUES(5438,'Tanımsız kart','1098',0,2,'2017-11-27 08:20:30.137000',1);
INSERT INTO portunes_identifier VALUES(5439,'Tanımsız kart','2237584',0,2,'2017-11-27 08:20:30.214000',1);
INSERT INTO portunes_identifier VALUES(5440,'Tanımsız kart','1155602',0,2,'2017-11-27 08:20:30.444000',1);
INSERT INTO portunes_identifier VALUES(5441,'Tanımsız kart','9589316',0,2,'2017-11-27 08:20:30.521000',1);
INSERT INTO portunes_identifier VALUES(5442,'Tanımsız kart','1097',0,2,'2017-11-27 08:20:30.598000',1);
INSERT INTO portunes_identifier VALUES(5443,'Tanımsız kart','8196',0,2,'2017-11-27 08:20:30.905000',1);
INSERT INTO portunes_identifier VALUES(5444,'Tanımsız kart','2705729',0,2,'2017-11-27 08:20:30.982000',1);
INSERT INTO portunes_identifier VALUES(5445,'Tanımsız kart','4793418',0,2,'2017-11-27 08:20:31.059000',1);
INSERT INTO portunes_identifier VALUES(5446,'Tanımsız kart','3072',0,2,'2017-11-27 08:20:31.212000',1);
INSERT INTO portunes_identifier VALUES(5447,'Tanımsız kart','2354787',0,2,'2017-11-27 08:20:37.444000',1);
INSERT INTO portunes_identifier VALUES(5448,'Tanımsız kart','4713187',0,2,'2017-11-27 08:20:37.523000',1);
INSERT INTO portunes_identifier VALUES(5449,'Tanımsız kart','14341461',0,2,'2017-11-27 08:20:39.180000',1);
INSERT INTO portunes_identifier VALUES(5450,'Tanımsız kart','11272021',0,2,'2017-11-27 08:20:39.260000',1);
INSERT INTO portunes_identifier VALUES(5451,'Tanımsız kart','5680090',0,2,'2017-11-27 08:20:39.418000',1);
INSERT INTO portunes_identifier VALUES(5452,'Tanımsız kart','15381851',0,2,'2017-11-27 08:20:39.496000',1);
INSERT INTO portunes_identifier VALUES(5453,'Tanımsız kart','14346923',0,2,'2017-11-27 08:20:39.575000',1);
INSERT INTO portunes_identifier VALUES(5454,'Tanımsız kart','16187327',0,2,'2017-11-27 08:20:39.655000',1);
INSERT INTO portunes_identifier VALUES(5455,'Tanımsız kart','14118583',0,2,'2017-11-27 08:20:39.734000',1);
INSERT INTO portunes_identifier VALUES(5456,'Tanımsız kart','11228885',0,2,'2017-11-27 08:20:39.892000',1);
INSERT INTO portunes_identifier VALUES(5457,'Tanımsız kart','14375610',0,2,'2017-11-27 08:20:39.971000',1);
INSERT INTO portunes_identifier VALUES(5458,'Tanımsız kart','14505301',0,2,'2017-11-27 08:20:40.082000',1);
INSERT INTO portunes_identifier VALUES(5459,'Tanımsız kart','14330839',0,2,'2017-11-27 08:20:40.160000',1);
INSERT INTO portunes_identifier VALUES(5460,'Tanımsız kart','12498266',0,2,'2017-11-27 08:20:40.243000',1);
INSERT INTO portunes_identifier VALUES(5461,'Tanımsız kart','11187887',0,2,'2017-11-27 08:20:40.322000',1);
INSERT INTO portunes_identifier VALUES(5462,'Tanımsız kart','6155755',0,2,'2017-11-27 08:20:40.401000',1);
INSERT INTO portunes_identifier VALUES(5463,'Tanımsız kart','14348215',0,2,'2017-11-27 08:20:40.480000',1);
INSERT INTO portunes_identifier VALUES(5464,'Tanımsız kart','14087934',0,2,'2017-11-27 08:20:40.559000',1);
INSERT INTO portunes_identifier VALUES(5465,'Tanımsız kart','16775127',0,2,'2017-11-27 08:20:40.638000',1);
INSERT INTO portunes_identifier VALUES(5466,'Tanımsız kart','16186351',0,2,'2017-11-27 08:20:40.718000',1);
INSERT INTO portunes_identifier VALUES(5467,'Tanımsız kart','11185066',0,2,'2017-11-27 08:20:40.875000',1);
INSERT INTO portunes_identifier VALUES(5468,'Tanımsız kart','7796698',0,2,'2017-11-27 08:20:40.955000',1);
INSERT INTO portunes_identifier VALUES(5469,'Tanımsız kart','5594581',0,2,'2017-11-27 08:20:41.034000',1);
INSERT INTO portunes_identifier VALUES(5470,'Tanımsız kart','5597911',0,2,'2017-11-27 08:20:41.113000',1);
INSERT INTO portunes_identifier VALUES(5471,'Tanımsız kart','7777981',0,2,'2017-11-27 08:20:41.192000',1);
INSERT INTO portunes_identifier VALUES(5472,'Tanımsız kart','6150837',0,2,'2017-11-27 08:20:41.271000',1);
INSERT INTO portunes_identifier VALUES(5473,'Tanımsız kart','14089135',0,2,'2017-11-27 08:20:41.588000',1);
INSERT INTO portunes_identifier VALUES(5474,'Tanımsız kart','14013781',0,2,'2017-11-27 08:20:41.746000',1);
INSERT INTO portunes_identifier VALUES(5475,'Tanımsız kart','11234005',0,2,'2017-11-27 08:20:41.825000',1);
INSERT INTO portunes_identifier VALUES(5476,'Tanımsız kart','7691606',0,2,'2017-11-27 08:20:41.904000',1);
INSERT INTO portunes_identifier VALUES(5477,'Tanımsız kart','5941978',0,2,'2017-11-27 08:20:42.141000',1);
INSERT INTO portunes_identifier VALUES(5478,'Tanımsız kart','11251373',0,2,'2017-11-27 08:20:42.221000',1);
INSERT INTO portunes_identifier VALUES(5479,'Tanımsız kart','5680821',0,2,'2017-11-27 08:20:42.458000',1);
INSERT INTO portunes_identifier VALUES(5480,'Tanımsız kart','5614251',0,2,'2017-11-27 08:20:42.537000',1);
INSERT INTO portunes_identifier VALUES(5481,'Tanımsız kart','16695003',0,2,'2017-11-27 08:20:42.616000',1);
INSERT INTO portunes_identifier VALUES(5482,'Tanımsız kart','16702133',0,2,'2017-11-27 08:20:42.774000',1);
INSERT INTO portunes_identifier VALUES(5483,'Tanımsız kart','14120283',0,2,'2017-11-27 08:20:43.565000',1);
INSERT INTO portunes_identifier VALUES(5484,'Tanımsız kart','7171770',0,2,'2017-11-27 08:20:43.644000',1);
INSERT INTO portunes_identifier VALUES(5485,'Tanımsız kart','11206390',0,2,'2017-11-27 08:20:43.723000',1);
INSERT INTO portunes_identifier VALUES(5486,'Tanımsız kart','5598591',0,2,'2017-11-27 08:20:43.803000',1);
INSERT INTO portunes_identifier VALUES(5487,'Tanımsız kart','11394525',0,2,'2017-11-27 08:20:43.882000',1);
INSERT INTO portunes_identifier VALUES(5488,'Tanımsız kart','11228634',0,2,'2017-11-27 08:20:43.961000',1);
INSERT INTO portunes_identifier VALUES(5489,'Tanımsız kart','11449693',0,2,'2017-11-27 08:20:44.040000',1);
INSERT INTO portunes_identifier VALUES(5490,'Tanımsız kart','16439229',0,2,'2017-11-27 08:20:44.120000',1);
INSERT INTO portunes_identifier VALUES(5491,'Tanımsız kart','16110934',0,2,'2017-11-27 08:20:44.199000',1);
INSERT INTO portunes_identifier VALUES(5492,'Tanımsız kart','11359957',0,2,'2017-11-27 08:20:44.279000',1);
INSERT INTO portunes_identifier VALUES(5493,'Tanımsız kart','13982442',0,2,'2017-11-27 08:20:44.595000',1);
INSERT INTO portunes_identifier VALUES(5494,'Tanımsız kart','11187885',0,2,'2017-11-27 08:20:44.674000',1);
INSERT INTO portunes_identifier VALUES(5495,'Tanımsız kart','5630634',0,2,'2017-11-27 08:20:45.149000',1);
INSERT INTO portunes_identifier VALUES(5496,'Tanımsız kart','14539437',0,2,'2017-11-27 08:20:45.228000',1);
INSERT INTO portunes_identifier VALUES(5497,'Tanımsız kart','14333398',0,2,'2017-11-27 08:20:45.859000',1);
INSERT INTO portunes_identifier VALUES(5498,'Tanımsız kart','5765978',0,2,'2017-11-27 08:20:45.938000',1);
INSERT INTO portunes_identifier VALUES(5499,'Tanımsız kart','7697751',0,2,'2017-11-27 08:20:46.018000',1);
INSERT INTO portunes_identifier VALUES(5500,'Tanımsız kart','16438741',0,2,'2017-11-27 08:20:46.097000',1);
INSERT INTO portunes_identifier VALUES(5501,'Tanımsız kart','14349655',0,2,'2017-11-27 08:20:46.176000',1);
INSERT INTO portunes_identifier VALUES(5502,'Tanımsız kart','11234989',0,2,'2017-11-27 08:20:46.255000',1);
INSERT INTO portunes_identifier VALUES(5503,'SüleymanSelimKısırkaya','1912096',1,1,'2017-11-29 15:31:47.514000',0);
INSERT INTO portunes_identifier VALUES(5504,'intern11','1912092',1,2,'2017-12-08 06:02:15.002000',0);
INSERT INTO portunes_identifier VALUES(5505,'Özgür Aksoy','1912005',1,2,'2017-12-08 08:24:10.343000',0);
INSERT INTO portunes_identifier VALUES(5506,'Kapı tadilat','2343824',1,2,'2017-12-11 10:48:41.915000',0);
INSERT INTO portunes_identifier VALUES(5507,'Tanımsız kart','4268324',0,2,'2017-12-23 13:50:55.636000',1);
INSERT INTO portunes_identifier VALUES(5508,'Tanımsız kart','14330538',0,2,'2017-12-23 13:50:56.110000',1);
INSERT INTO portunes_identifier VALUES(5509,'Tanımsız kart','11184814',0,2,'2017-12-23 13:50:56.189000',1);
INSERT INTO portunes_identifier VALUES(5510,'Tanımsız kart','5592747',0,2,'2017-12-23 13:50:56.505000',1);
INSERT INTO portunes_identifier VALUES(5511,'Tanımsız kart','2368640',0,2,'2017-12-23 13:50:56.901000',1);
INSERT INTO portunes_identifier VALUES(5512,'Tanımsız kart','1086020',0,2,'2017-12-23 13:50:56.979000',1);
INSERT INTO portunes_identifier VALUES(5513,'Tanımsız kart','4264065',0,2,'2017-12-23 13:50:57.058000',1);
INSERT INTO portunes_identifier VALUES(5514,'Tanımsız kart','4801890',0,2,'2017-12-23 13:50:57.454000',1);
INSERT INTO portunes_identifier VALUES(5515,'Tanımsız kart','5378186',0,2,'2017-12-23 13:50:57.847000',1);
INSERT INTO portunes_identifier VALUES(5516,'Tanımsız kart','4268105',0,2,'2017-12-23 13:50:57.927000',1);
INSERT INTO portunes_identifier VALUES(5517,'Tanımsız kart','9707793',0,2,'2017-12-23 13:50:58.006000',1);
INSERT INTO portunes_identifier VALUES(5518,'Tanımsız kart','10568210',0,2,'2017-12-23 13:50:58.401000',1);
INSERT INTO portunes_identifier VALUES(5519,'Tanımsız kart','2172996',0,2,'2017-12-23 13:50:58.559000',1);
INSERT INTO portunes_identifier VALUES(5520,'Tanımsız kart','5393061',0,2,'2017-12-23 13:50:58.718000',1);
INSERT INTO portunes_identifier VALUES(5521,'Tanımsız kart','4494344',0,2,'2017-12-23 13:50:59.033000',1);
INSERT INTO portunes_identifier VALUES(5522,'Kadir Network','1912065',0,1,'2017-12-25 10:15:14.220000',0);
INSERT INTO portunes_identifier VALUES(5523,'Tanımsız kart','10753403',0,2,'2017-12-29 09:17:36.468000',1);
INSERT INTO portunes_identifier VALUES(5524,'Tanımsız kart','709964',0,2,'2017-12-29 09:22:37.194000',1);
INSERT INTO portunes_identifier VALUES(5525,'Tanımsız kart','3729768',0,2,'2017-12-29 09:22:38.606000',1);
INSERT INTO portunes_identifier VALUES(5526,'Hatice Hoca EŞi','2342553',1,2,'2018-01-04 08:19:10.578000',0);
INSERT INTO portunes_identifier VALUES(5527,'Tanımsız kart','14112085',0,2,'2018-01-04 13:10:29.774000',1);
INSERT INTO portunes_identifier VALUES(5528,'Tanımsız kart','338210',0,2,'2018-01-04 15:25:40.564000',1);
INSERT INTO portunes_identifier VALUES(5529,'Tanımsız kart','37185',0,2,'2018-01-04 15:25:40.798000',1);
INSERT INTO portunes_identifier VALUES(5530,'Tanımsız kart','559376',0,2,'2018-01-04 15:25:40.875000',1);
INSERT INTO portunes_identifier VALUES(5531,'Tanımsız kart','11079744',0,2,'2018-01-04 15:25:40.953000',1);
INSERT INTO portunes_identifier VALUES(5532,'Tanımsız kart','2101536',0,2,'2018-01-04 15:25:41.109000',1);
INSERT INTO portunes_identifier VALUES(5533,'Tanımsız kart','10834597',0,2,'2018-01-04 15:25:41.187000',1);
INSERT INTO portunes_identifier VALUES(5534,'Tanımsız kart','1348354',0,2,'2018-01-04 15:25:41.264000',1);
INSERT INTO portunes_identifier VALUES(5535,'Tanımsız kart','5941979',0,2,'2018-01-04 15:25:41.369000',1);
INSERT INTO portunes_identifier VALUES(5536,'Tanımsız kart','10824361',0,2,'2018-01-04 15:25:41.447000',1);
INSERT INTO portunes_identifier VALUES(5537,'Tanımsız kart','6116693',0,2,'2018-01-04 15:25:41.527000',1);
INSERT INTO portunes_identifier VALUES(5538,'Tanımsız kart','5',0,2,'2018-01-04 15:25:41.819000',1);
INSERT INTO portunes_identifier VALUES(5539,'Tanımsız kart','688128',0,2,'2018-01-04 15:25:41.980000',1);
INSERT INTO portunes_identifier VALUES(5540,'Tanımsız kart','43008',0,2,'2018-01-04 15:25:42.141000',1);
INSERT INTO portunes_identifier VALUES(5541,'Tanımsız kart','10',0,2,'2018-01-04 15:25:42.623000',1);
INSERT INTO portunes_identifier VALUES(5542,'Tanımsız kart','2688',0,2,'2018-01-04 15:25:42.702000',1);
INSERT INTO portunes_identifier VALUES(5543,'Tanımsız kart','2115882',0,2,'2018-01-04 17:40:53.139000',1);
INSERT INTO portunes_identifier VALUES(5544,'Tanımsız kart','14341803',0,2,'2018-01-04 17:40:53.216000',1);
INSERT INTO portunes_identifier VALUES(5545,'Tanımsız kart','2114841',0,2,'2018-01-04 17:40:53.371000',1);
INSERT INTO portunes_identifier VALUES(5546,'Tanımsız kart','8917522',0,2,'2018-01-04 17:40:53.606000',1);
INSERT INTO portunes_identifier VALUES(5547,'Tanımsız kart','5417644',0,2,'2018-01-04 17:40:53.788000',1);
INSERT INTO portunes_identifier VALUES(5548,'Tanımsız kart','558212',0,2,'2018-01-04 17:40:53.867000',1);
INSERT INTO portunes_identifier VALUES(5549,'Tanımsız kart','2216',0,2,'2018-01-04 17:40:53.999000',1);
INSERT INTO portunes_identifier VALUES(5550,'Tanımsız kart','10240',0,2,'2018-01-04 17:40:54.967000',1);
INSERT INTO portunes_identifier VALUES(5551,'Tanımsız kart','1280',0,2,'2018-01-04 17:40:55.127000',1);
INSERT INTO portunes_identifier VALUES(5552,'Tanımsız kart','11010048',0,2,'2018-01-04 17:40:56.097000',1);
INSERT INTO portunes_identifier VALUES(5553,'Tanımsız kart','21',0,2,'2018-01-04 17:40:57.066000',1);
INSERT INTO portunes_identifier VALUES(5554,'Tanımsız kart','4358144',0,2,'2018-01-04 17:40:57.146000',1);
INSERT INTO portunes_identifier VALUES(5555,'Tanımsız kart','172032',0,2,'2018-01-04 17:40:58.922000',1);
INSERT INTO portunes_identifier VALUES(5556,'Tanımsız kart','336',0,2,'2018-01-04 17:40:59.326000',1);
INSERT INTO portunes_identifier VALUES(5557,'Tanımsız kart','2269184',0,2,'2018-01-04 17:40:59.890000',1);
INSERT INTO portunes_identifier VALUES(5558,'Tanımsız kart','10485792',0,2,'2018-01-04 17:41:00.453000',1);
INSERT INTO portunes_identifier VALUES(5559,'Tanımsız kart','524560',0,2,'2018-01-04 17:41:00.613000',1);
INSERT INTO portunes_identifier VALUES(5560,'Tanımsız kart','262432',0,2,'2018-01-04 17:41:00.693000',1);
INSERT INTO portunes_identifier VALUES(5561,'Tanımsız kart','42',0,2,'2018-01-04 17:41:02.712000',1);
INSERT INTO portunes_identifier VALUES(5562,'Tanımsız kart','5440',0,2,'2018-01-04 17:41:02.791000',1);
INSERT INTO portunes_identifier VALUES(5563,'Tanımsız kart','8864',0,2,'2018-01-04 22:10:34.050000',1);
INSERT INTO portunes_identifier VALUES(5564,'Tanımsız kart','1290',0,2,'2018-01-04 22:10:35.504000',1);
INSERT INTO portunes_identifier VALUES(5565,'Tanımsız kart','672',0,2,'2018-01-04 22:10:38.653000',1);
INSERT INTO portunes_identifier VALUES(5566,'Tanımsız kart','524421',0,2,'2018-01-05 00:25:49.601000',1);
INSERT INTO portunes_identifier VALUES(5567,'Tanımsız kart','84',0,2,'2018-01-05 00:25:50.160000',1);
INSERT INTO portunes_identifier VALUES(5568,'Tanımsız kart','168',0,2,'2018-01-05 00:25:50.400000',1);
INSERT INTO portunes_identifier VALUES(5569,'Tanımsız kart','133',0,2,'2018-01-05 02:40:59.381000',1);
INSERT INTO portunes_identifier VALUES(5570,'Tanımsız kart','545792',0,2,'2018-01-05 02:40:59.946000',1);
INSERT INTO portunes_identifier VALUES(5571,'Tanımsız kart','4538368',0,2,'2018-01-05 02:41:10.546000',1);
INSERT INTO portunes_identifier VALUES(5572,'Tanımsız kart','2790741',0,2,'2018-01-05 02:41:10.626000',1);
INSERT INTO portunes_identifier VALUES(5573,'Tanımsız kart','1376256',0,2,'2018-01-05 02:41:10.706000',1);
INSERT INTO portunes_identifier VALUES(5574,'Tanımsız kart','90128',0,2,'2018-01-05 04:56:10.219000',1);
INSERT INTO portunes_identifier VALUES(5575,'Tanımsız kart','8946756',0,2,'2018-01-05 04:56:10.297000',1);
INSERT INTO portunes_identifier VALUES(5576,'Tanımsız kart','7683372',0,2,'2018-01-05 04:56:10.374000',1);
INSERT INTO portunes_identifier VALUES(5577,'Tanımsız kart','8668233',0,2,'2018-01-05 04:56:10.452000',1);
INSERT INTO portunes_identifier VALUES(5578,'Tanımsız kart','5276490',0,2,'2018-01-05 04:56:10.530000',1);
INSERT INTO portunes_identifier VALUES(5579,'Tanımsız kart','5959610',0,2,'2018-01-05 04:56:10.633000',1);
INSERT INTO portunes_identifier VALUES(5580,'Tanımsız kart','7666666',0,2,'2018-01-05 04:56:10.713000',1);
INSERT INTO portunes_identifier VALUES(5581,'Tanımsız kart','86016',0,2,'2018-01-05 04:56:12.948000',1);
INSERT INTO portunes_identifier VALUES(5582,'Tanımsız kart','5376',0,2,'2018-01-05 04:56:14.161000',1);
INSERT INTO portunes_identifier VALUES(5583,'Tanımsız kart','34',0,2,'2018-01-05 04:56:15.695000',1);
INSERT INTO portunes_identifier VALUES(5584,'Tanımsız kart','4276224',0,2,'2018-01-05 04:56:17.228000',1);
INSERT INTO portunes_identifier VALUES(5585,'Tanımsız kart','4264',0,2,'2018-01-05 04:56:20.710000',1);
INSERT INTO portunes_identifier VALUES(5586,'Tanımsız kart','533',0,2,'2018-01-05 04:56:22.082000',1);
INSERT INTO portunes_identifier VALUES(5587,'Tanımsız kart','6990502',0,2,'2018-01-05 07:11:03.366000',1);
INSERT INTO portunes_identifier VALUES(5588,'Tanımsız kart','8450',0,2,'2018-01-05 07:11:03.523000',1);
INSERT INTO portunes_identifier VALUES(5589,'Tanımsız kart','2642506',0,2,'2018-01-05 07:11:03.603000',1);
INSERT INTO portunes_identifier VALUES(5590,'Tanımsız kart','8912962',0,2,'2018-01-05 07:11:03.683000',1);
INSERT INTO portunes_identifier VALUES(5591,'Tanımsız kart','5584554',0,2,'2018-01-05 09:26:00.649000',1);
INSERT INTO portunes_identifier VALUES(5592,'Tanımsız kart','4325632',0,2,'2018-01-05 09:26:00.806000',1);
INSERT INTO portunes_identifier VALUES(5593,'Tanımsız kart','8736784',0,2,'2018-01-05 09:26:00.883000',1);
INSERT INTO portunes_identifier VALUES(5594,'Tanımsız kart','9770308',0,2,'2018-01-05 11:41:12.565000',1);
INSERT INTO portunes_identifier VALUES(5595,'Tanımsız kart','2271529',0,2,'2018-01-05 11:41:12.643000',1);
INSERT INTO portunes_identifier VALUES(5596,'Tanımsız kart','10785044',0,2,'2018-01-05 11:41:12.720000',1);
INSERT INTO portunes_identifier VALUES(5597,'Tanımsız kart','2368804',0,2,'2018-01-05 13:56:20.486000',1);
INSERT INTO portunes_identifier VALUES(5598,'Tanımsız kart','132104',0,2,'2018-01-05 13:56:20.563000',1);
INSERT INTO portunes_identifier VALUES(5599,'Tanımsız kart','11447149',0,2,'2018-01-05 13:56:20.641000',1);
INSERT INTO portunes_identifier VALUES(5600,'Tanımsız kart','295972',0,2,'2018-01-05 13:56:20.875000',1);
INSERT INTO portunes_identifier VALUES(5601,'Tanımsız kart','140289',0,2,'2018-01-05 13:56:20.954000',1);
INSERT INTO portunes_identifier VALUES(5602,'Tanımsız kart','8100101',0,2,'2018-01-05 16:11:04.632000',1);
INSERT INTO portunes_identifier VALUES(5603,'Tanımsız kart','5350645',0,2,'2018-01-05 16:11:05.177000',1);
INSERT INTO portunes_identifier VALUES(5604,'Tanımsız kart','6710853',0,2,'2018-01-05 16:11:06.213000',1);
INSERT INTO portunes_identifier VALUES(5605,'Tanımsız kart','5982500',0,2,'2018-01-05 16:11:06.290000',1);
INSERT INTO portunes_identifier VALUES(5606,'Tanımsız kart','8974611',0,2,'2018-01-05 16:11:06.367000',1);
INSERT INTO portunes_identifier VALUES(5607,'Tanımsız kart','1577156',0,2,'2018-01-05 16:11:06.522000',1);
INSERT INTO portunes_identifier VALUES(5608,'Tanımsız kart','5092525',0,2,'2018-01-05 16:11:06.678000',1);
INSERT INTO portunes_identifier VALUES(5609,'Tanımsız kart','13841605',0,2,'2018-01-05 16:11:06.755000',1);
INSERT INTO portunes_identifier VALUES(5610,'Tanımsız kart','2168000',0,2,'2018-01-05 16:11:06.833000',1);
INSERT INTO portunes_identifier VALUES(5611,'Tanımsız kart','2101376',0,2,'2018-01-05 16:11:06.910000',1);
INSERT INTO portunes_identifier VALUES(5612,'Tanımsız kart','8388435',0,2,'2018-01-05 16:11:07.014000',1);
INSERT INTO portunes_identifier VALUES(5613,'Tanımsız kart','535040',0,2,'2018-01-05 18:26:16.223000',1);
INSERT INTO portunes_identifier VALUES(5614,'Tanımsız kart','1201234',0,2,'2018-01-05 18:26:16.560000',1);
INSERT INTO portunes_identifier VALUES(5615,'Tanımsız kart','1311818',0,2,'2018-01-05 18:26:16.638000',1);
INSERT INTO portunes_identifier VALUES(5616,'Tanımsız kart','9081013',0,2,'2018-01-05 18:26:16.715000',1);
INSERT INTO portunes_identifier VALUES(5617,'Tanımsız kart','4490240',0,2,'2018-01-05 18:26:16.793000',1);
INSERT INTO portunes_identifier VALUES(5618,'Tanımsız kart','2171027',0,2,'2018-01-05 18:26:16.870000',1);
INSERT INTO portunes_identifier VALUES(5619,'Tanımsız kart','262674',0,2,'2018-01-05 18:26:16.947000',1);
INSERT INTO portunes_identifier VALUES(5620,'Tanımsız kart','8997525',0,2,'2018-01-05 18:26:17.025000',1);
INSERT INTO portunes_identifier VALUES(5621,'Tanımsız kart','10797608',0,2,'2018-01-05 18:26:17.102000',1);
INSERT INTO portunes_identifier VALUES(5622,'Tanımsız kart','10832549',0,2,'2018-01-05 18:26:17.285000',1);
INSERT INTO portunes_identifier VALUES(5623,'Tanımsız kart','5430701',0,2,'2018-01-05 18:26:17.365000',1);
INSERT INTO portunes_identifier VALUES(5624,'Tanımsız kart','1190528',0,2,'2018-01-05 20:41:13.221000',1);
INSERT INTO portunes_identifier VALUES(5625,'Tanımsız kart','5588305',0,2,'2018-01-06 07:56:25.207000',1);
INSERT INTO portunes_identifier VALUES(5626,'Tanımsız kart','1220946',0,2,'2018-01-06 07:56:25.287000',1);
INSERT INTO portunes_identifier VALUES(5627,'Tanımsız kart','11881130',0,2,'2018-01-06 07:56:25.366000',1);
INSERT INTO portunes_identifier VALUES(5628,'Tanımsız kart','5418223',0,2,'2018-01-06 07:56:25.446000',1);
INSERT INTO portunes_identifier VALUES(5629,'Tanımsız kart','10770108',0,2,'2018-01-06 07:56:25.526000',1);
INSERT INTO portunes_identifier VALUES(5630,'Tanımsız kart','11094164',0,2,'2018-01-06 07:56:25.605000',1);
INSERT INTO portunes_identifier VALUES(5631,'Tanımsız kart','11027530',0,2,'2018-01-06 07:56:25.684000',1);
INSERT INTO portunes_identifier VALUES(5632,'Tanımsız kart','10527048',0,2,'2018-01-06 07:56:25.764000',1);
INSERT INTO portunes_identifier VALUES(5633,'Tanımsız kart','9736488',0,2,'2018-01-06 07:56:25.844000',1);
INSERT INTO portunes_identifier VALUES(5634,'Tanımsız kart','9774369',0,2,'2018-01-06 07:56:25.923000',1);
INSERT INTO portunes_identifier VALUES(5635,'Tanımsız kart','10814548',0,2,'2018-01-06 07:56:26.003000',1);
INSERT INTO portunes_identifier VALUES(5636,'Tanımsız kart','4490576',0,2,'2018-01-06 07:56:26.082000',1);
INSERT INTO portunes_identifier VALUES(5637,'Tanımsız kart','4335776',0,2,'2018-01-06 07:56:26.161000',1);
INSERT INTO portunes_identifier VALUES(5638,'ibrihimşarra','2343819',1,1,'2018-01-08 06:54:35.959000',0);
INSERT INTO portunes_identifier VALUES(5639,'Can Atilla','2343618',1,1,'2018-01-09 06:44:37.746000',0);
INSERT INTO portunes_identifier VALUES(5640,'Halime Tugay','1912062',0,2,'2018-01-11 11:08:50.576000',0);
INSERT INTO portunes_identifier VALUES(5641,'Can Atilla İkinci','1912067',1,1,'2018-01-15 09:10:12.926000',0);
INSERT INTO portunes_identifier VALUES(5642,'Mustafa Hoca','1912100',1,2,'2018-01-15 13:35:33.888000',0);
INSERT INTO portunes_identifier VALUES(5643,'Ahmetbasaran','1912126',1,1,'2018-01-16 07:05:42.189000',0);
INSERT INTO portunes_identifier VALUES(5644,'Tanımsız kart','111111',0,2,'2018-02-01 09:03:28.552000',1);
INSERT INTO portunes_identifier VALUES(5645,'Tanımsız kart','15386530',0,2,'2018-02-01 09:03:28.629000',1);
INSERT INTO portunes_identifier VALUES(5646,'Tanımsız kart','9426361',0,2,'2018-02-01 09:06:43.652000',1);
INSERT INTO portunes_identifier VALUES(5647,'Tanımsız kart','2071260',0,2,'2018-02-01 09:06:43.881000',1);
INSERT INTO portunes_identifier VALUES(5648,'Tanımsız kart','555555',0,2,'2018-02-01 10:45:37.028000',1);
INSERT INTO portunes_identifier VALUES(5649,'avnihoca','2343857',0,1,'2018-02-05 12:26:40.928000',0);
INSERT INTO portunes_identifier VALUES(5650,'MehmetBozdoğan','2075569',0,1,'2018-02-06 17:41:44.825000',0);
INSERT INTO portunes_identifier VALUES(5651,'Melike Kaya','2075562',1,1,'2018-02-07 10:33:24.534000',0);
INSERT INTO portunes_identifier VALUES(5652,'Tanımsız kart','777777',0,2,'2018-02-07 10:51:27.501000',1);
INSERT INTO portunes_identifier VALUES(5653,'Tanımsız kart','333333',0,2,'2018-02-12 06:22:24.695000',1);
INSERT INTO portunes_identifier VALUES(5654,'Tanımsız kart','11916741',0,2,'2018-02-12 15:43:49.224000',1);
INSERT INTO portunes_identifier VALUES(5655,'Tanımsız kart','2590497',0,2,'2018-02-13 09:42:41.501000',1);
INSERT INTO portunes_identifier VALUES(5656,'Tanımsız kart','666666',0,2,'2018-02-14 07:01:25.022000',1);
INSERT INTO portunes_identifier VALUES(5657,'Tanımsız kart','2152464',0,2,'2018-02-14 10:18:40.857000',1);
INSERT INTO portunes_identifier VALUES(5658,'Tanımsız kart','6800062',0,2,'2018-02-15 15:50:05.442000',1);
INSERT INTO portunes_identifier VALUES(5659,'Tanımsız kart','11664798',0,2,'2018-02-16 09:52:55.303000',1);
INSERT INTO portunes_identifier VALUES(5660,'P02 - Burak Koç','2343850',1,1,'2018-03-13 15:21:40.805000',0);
INSERT INTO portunes_identifier VALUES(5661,'Sinan Çelik','2298550',1,1,'2018-03-19 13:53:31.951000',0);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_permission` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `start_date` datetime NULL, `end_date` datetime NULL, `created_date` datetime NOT NULL, `door_id` integer NULL REFERENCES `portunes_door` (`id`), `personnel_id` integer NULL REFERENCES `auth_user` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `procurement_tender` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(64) NOT NULL, `approximate_price` real NULL, `apply_date` datetime NULL, `auction_date` date NULL, `auction_price` real NULL, `auction_no` varchar(32) NULL, `contract_date` date NULL, `notes` text NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL, `currency_id` integer NULL REFERENCES `procurement_currency` (`id`), `supplier_id` integer NULL REFERENCES `procurement_supplier` (`id`), `tender_status_id` integer NULL REFERENCES `procurement_tenderstatus` (`id`), `tender_type_id` integer NULL REFERENCES `procurement_tendertype` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`), `auction_time` time NULL, `no` varchar(32) NULL);
INSERT INTO procurement_tender VALUES(250,`Rf Dalga kılavuzu Tutturucu Destek Aparatı İmalatı Hizmeti, Faraday Kafesi imalatı hizmeti`,54300.0,NULL,NULL,57348.0,``,NULL,``,`2018-03-10 09:21:56.794243`,0,8,86,7,12,NULL,NULL,`TARLA-2017TSHZ0001`);
INSERT INTO procurement_tender VALUES(251,'41 kalem malzeme',51038.0,NULL,NULL,0.0,'',NULL,'Alımın İçeriği

1. Şerit metre  (10 adet)
2. Oluklu levye   (3 adet)
3. Boru anahtarı   (3 adet)
4. Manivella   (3 adet)
5. Plastik tokmak  (2 adet)
6. Boya tabancası   (2 adet)
7. Vidalama uç seti    (5 adet)
8. Kerpeten   (2 adet)
9. Karbon çeliği panç seti (1 adet)
10. Kızak yağı    (10 kg)
11. Metal boyası      (30 kg)
12. Sentetik tiner  (16 lt)
13. Selülozik tiner   (16 kg)
14. Metal astar boyası   (30 kg)
15. HSS DIN 338 silindirik saplı matkap ucu seti, haddeli   (4 seri)
16. HSS DIN 338 silindirik saplı matkap ucu seti, taşlanmış   (3 seri)
17. HSS DIN 338 silindirik saplı matkap ucu seti, gümüş seri   (2 seri)
18. HSS DIN 338 silindirik saplı matkap ucu seti, altın seri   (2 seri)
19. HSS DIN 338 silindirik saplı matkap ucu seti, tin kaplamalı  (1 seri)
20. 400x600x230mm Plastik Kasa     (75 adet)
21. 400x600x170mm Plastik Kasa     (50 adet)
22. 400x600x200mm Plastik Kasa     (70 adet)
23. 295x505x235mm Plastik Kasa     (25 adet)
24. 295x505x180mm Plastik Kasa     (110 adet)
25. 256x505x165mm Plastik Kasa     (35 adet)
26. 356*185mm Plastik Kasa Seperatörü    (500 adet)
27. 556*185mm Plastik Kasa Seperatörü    (500 adet)
28. DIN933 A270 M6 X 35       (3.000 adet)
29. DIN933 A270 M6 X 40       (500 adet)
30. DIN933 A270 M6 X 45       (500 adet)
31. DIN933 A270 M8 X 40       (200 adet)
32. DIN933 A270 M8 X 45       (3500 adet)
33. DIN933 A270 M8 X 50       (2000 adet)
34. DIN933 A270 M8 X 55       (1500 adet)
35. DIN975 A270 M8 X tij (1 m )      (20 adet)
36. DIN934 A270 M6 - somum       (5000 adet)
37. DIN934 A270 M8 - somun       (7200 adet)
38. DIN125 A270 M6 - pul       (10000 adet)
39. DIN125 A270 M8 - pul       (14400 adet)
40. DIN127 A270 M8 - rondela       (7500 adet)
41. Korozyon, yapışma ve soğuk kaynaklamaya karşı civata pastası  (5 Adet)','2018-03-10 09:21:56.818403',0,8,87,7,13,NULL,NULL,'TARLA-2017TSRF001');
INSERT INTO procurement_tender VALUES(252,'Barkod Yazıcısı alımı',12150.0,NULL,NULL,11800.0,'',NULL,'','2018-03-10 09:21:56.830646',0,8,88,7,14,NULL,NULL,'TARLA-2017TSDN001');
INSERT INTO procurement_tender VALUES(253,'Baskı Devre Makinası',115650.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:56.842022',0,NULL,89,8,14,NULL,NULL,'TARLA-2016TSDN023');
INSERT INTO procurement_tender VALUES(254,'Seksiyonel Kapı İmalat ve Kurulum Hizmet',53000.0,NULL,NULL,56286.0,'121460',NULL,'','2018-03-10 09:21:56.852766',0,8,90,7,12,NULL,NULL,'TARLA-2017TSHZ003');
INSERT INTO procurement_tender VALUES(255,'Hızlandırıcı Kontrol Sistemi Danışmanlık Hizmeti (cosylab)',55000.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:56.862627',0,10,91,9,12,NULL,NULL,'TARLA-2017TSHZ006');
INSERT INTO procurement_tender VALUES(256,'3 kalem donanım alımı (Projeksiyon cihazı Tip1,Zayıf İstemci bilg.ve Projeksiyon cihazı Tip2)',29985.0,NULL,NULL,30550.0,'121574',NULL,'Alımın İçeriği

1. Zayıf İstemci Bilgisayar
2. Projeksiyon Cihazı Tip 1
3. Projeksiyon Cihazı Tip 2','2018-03-10 09:21:56.872614',0,8,92,10,14,NULL,NULL,'TARLA-2017TSDN004');
INSERT INTO procurement_tender VALUES(257,'Temiz Oda Kurulum Hizmeti',6675000.0,NULL,NULL,3140000.0,'',NULL,'','2018-03-10 09:21:56.882457',0,8,93,9,12,NULL,NULL,'TARLA-2017TSHZ005');
INSERT INTO procurement_tender VALUES(258,'Vakum Pompaları Bakım Onarım (İyon Pompası, Yağlı Pompa,Turbo Pompa, Leak Dedektörü)',52800.0,NULL,NULL,53100.0,'121463',NULL,'','2018-03-10 09:21:56.892487',0,8,94,7,15,NULL,NULL,'TARLA-2017TSBO001');
INSERT INTO procurement_tender VALUES(259,'26 kalem malzeme',54824.0,NULL,NULL,50551.0,'121589',NULL,'Alımın İçeriği 
1. Freze koordinat sehpası(1 adet)
2. Parmak freze seti (2 adet)
3. Mandren malafası (1 adet)
4. Yatay dikey döner tabla (1 adet)
5. Dört ayaklı torna ayna (1 adet)
6. Üç ayaklı torna ayna (1 adet)
7. Torna döner punta (1 adet)
8. Gres basma avadanlığı (1 adet)
9. Mandren (5 adet)
10. Kalıp bağlama takımı (1 adet)
11. Yüzey kopya freze aparatı (2 adet)
12. Freze tarafma kafası (2 adet)
13. Karbür kesici uç takımı (10 kutu)
14. Seramik kesici uç takımı (10 kutu)
15. Delik büyütme kiti (1 adet)
16. Pens seti (1 adet)
17. Torna kater seti (5 set)
18. Torna kalem seti (3 set)
19. Yağdanlık (3 adet)
20. Hava tabancası (3 adet)
21. Punta matkabı ucu (10 adet)
22. Somun adaptörü seti (5 seri)
23. Klavuz seti (2 seri)
24. Klavuz kesme yağı (2 adet)
25. Paslanmaz Mig-Mag kaynak teli (1 adet)
26. Paslanmaz kaynak elektrodu (10 adet)','2018-03-10 09:21:56.902808',0,8,95,7,13,NULL,NULL,'TARLA-2017TSRF002');
INSERT INTO procurement_tender VALUES(260,'İdari Bina Elektrik Tesisatı Bakım ve Kablolama ve Etiketlendirme Hizmeti',57850.0,NULL,NULL,61006.0,'122318',NULL,'','2018-03-10 09:21:56.913179',0,8,96,10,12,NULL,NULL,'TARLA-2017TSHZ001');
INSERT INTO procurement_tender VALUES(261,'LLRF Tasarım Hizmeti',0.0,NULL,NULL,1400000.0,'',NULL,'','2018-03-10 09:21:56.923343',0,8,97,11,12,NULL,NULL,'TARLA-2017TSHZ008');
INSERT INTO procurement_tender VALUES(262,'Demet Görüntüleme Sistemi Tutucusu İmalatı Hizmeti',21000.0,NULL,NULL,11800.0,'121592',NULL,'','2018-03-10 09:21:56.932679',0,8,98,12,12,NULL,NULL,'TARLA-2017TSHZ010');
INSERT INTO procurement_tender VALUES(263,'28 kalem sarf  malzeme alımı',29760.0,NULL,NULL,43542.0,'122315',NULL,'Alımın İçeriği

1 300x40x1,50 mm kablo kanalı 350 Adet 
2 Kablo kanalı ek parçası (H=40) 300 Adet 
3 Kablo tavası U destek L=2400 mm 50 Adet 
4 Kablo tavası U konsol L=325 mm 700 Adet 
5 M8 tava civatası 3000 Adet
6 M8 flanşlı somun 3000 Adet 
7 M6 tava civatası 5000 Adet 
8 M6 flanşlı somun 5000 Adet 
9 M8 tij (2 metre) 50 Adet 
10 Kablo tavası 300 mm 90 derece dönüş 200 Adet 
11 Kablo tavası 300 mm T bağlantı 50 Adet 
12 Kablo tavası 300 mm dörtlü kavşak (delikli tip) 25 Adet
13 Kablo tavası 300 mm için dikey T elemanı 50 Adet
14 Kablo tavası 300 mm dikey dönüş (ayarlanabilir, standart delikli) 200 Adet
15 Priz montaj elemanı 10 Adet 
16 200x40x1,50 mm kablo kanalı 150 Adet 
17 Kablo tavası U konsol L=225 mm 200 Adet 
18 Kablo tavası 200 mm 90 derece dönüş 30 Adet 
19 Kablo tavası 200 mm T bağlantı 10 Adet 
20 Kablo tavası 200 mm için dikey T elemanı 25 Adet 
21 Kablo tavası 200 mm dikey dönüş (ayarlanabilir, standart delikli) 50 adet
22 100x40x1,50 mm kablo kanalı 50 Adet 
23 Kablo tavası U konsol L=125 mm 50 Adet 
24 Kablo tavası 100 mm 90 derece dönüş 30 Adet 
25 Kablo tavası 100 mm T bağlantı 10 Adet 
26 Kablo tavası 100 mm için dikey T elemanı 15 Adet 
27 Kablo tavası 100 mm dikey dönüş (ayarlanabilir, standart delikli) 10 Adet 
28 M8 tij (2 metre) 50 Adet','2018-03-10 09:21:56.942202',0,8,99,13,13,NULL,NULL,'TARLA-2017TSRF004');
INSERT INTO procurement_tender VALUES(264,'Tarla Tesisi Misafirhane ve Laboratuvar Mekanları Mutfak tadilat ve Kurulum Hizmeti',107783.0,NULL,NULL,88500.0,'121871',NULL,'','2018-03-10 09:21:56.951633',0,NULL,100,14,12,NULL,NULL,'TARLA-2017TSHZ004');
INSERT INTO procurement_tender VALUES(265,'Havalandırma Sistemi ve Kazan Brulör Bakım ve Tadilatı Hizmeti',54000.0,NULL,NULL,56640.0,'121577',NULL,'','2018-03-10 09:21:56.961466',0,8,101,7,12,NULL,NULL,'TARLA-2017TSHZ007');
INSERT INTO procurement_tender VALUES(266,'RF Sinyal Üreteci',184118.0,NULL,NULL,113900.0,'122914',NULL,'','2018-03-10 09:21:56.971237',0,8,102,15,14,NULL,NULL,'TARLA-2017TSDN002');
INSERT INTO procurement_tender VALUES(267,'4 kalem Optik Donanım Listesi',64410.0,NULL,NULL,56050.0,'122324',NULL,'Alımın İçeriği

1. 1(bir) adet Optik masa sehpası
2. 1(bir) adet 300mm doğrusal kızak (Motor Dahil)
3. 5(beş) adet fotodiode detektör
4. 5(beş) adet fototüp detektör','2018-03-10 09:21:56.981185',0,8,103,10,14,NULL,NULL,'TARLA-2017TSDN003');
INSERT INTO procurement_tender VALUES(268,'Azot Transfer Hattı İmalat Hizmeti',152650.0,NULL,NULL,114330.0,'122704',NULL,'','2018-03-10 09:21:56.991046',0,8,98,10,12,NULL,NULL,'TARLA-2017TSHZ011');
INSERT INTO procurement_tender VALUES(269,'3 Kalem İmalat Hizmeti',0.0,NULL,NULL,123900.0,'121868',NULL,'Alımın İçeriği

6 Adet Solenoid Magnet İmalat Hizmeti
2 Adet Enjektör Dipole Magnet İmalat Hizmeti
2 Adet Enjektör Spekrtrometre İmalat Hizm','2018-03-10 09:21:57.000835',0,8,104,16,12,NULL,NULL,'TARLA-2017TSHZ012');
INSERT INTO procurement_tender VALUES(270,'Güçmetre',54499.0,NULL,NULL,59000.0,'121595',NULL,'','2018-03-10 09:21:57.010418',0,8,105,13,14,NULL,NULL,'TARLA-2017TSDN006');
INSERT INTO procurement_tender VALUES(271,'250 keV Normal İletken Hızlandırıcı Yüksek Gerilim Hattının Elektrik Altyapısı',52100.0,NULL,NULL,48380.0,'121601',NULL,'','2018-03-10 09:21:57.020374',0,8,94,13,12,NULL,NULL,'TARLA-2017TSHZ015');
INSERT INTO procurement_tender VALUES(272,'Mekanik Tasarım Destek Hizmeti',52150.0,NULL,NULL,40710.0,'121598',NULL,'','2018-03-10 09:21:57.029998',0,8,104,13,12,NULL,NULL,'TARLA-2017TSHZ013');
INSERT INTO procurement_tender VALUES(273,'Kişisel Doz Takip Sistemi Yazılım Hizmeti',54000.0,NULL,NULL,33984.0,'122018',NULL,'','2018-03-10 09:21:57.039659',0,8,98,7,12,NULL,NULL,'TARLA-2017TSHZ014');
INSERT INTO procurement_tender VALUES(274,'Özel Elektronik Devre Tasarım Destek Hizmeti',52200.0,NULL,NULL,56640.0,'122021',NULL,'','2018-03-10 09:21:57.050156',0,8,106,7,12,NULL,NULL,'TARLA-2017TSHZ016');
INSERT INTO procurement_tender VALUES(275,'10 Kalem Malzeme Alımı',0.0,'2017-05-08 21:00:00',NULL,16107.0,'121721',NULL,'<p>Alımın İ&ccedil;eriği Avu&ccedil; İ&ccedil;i Taşlama Makinası(2 adet) B&uuml;y&uuml;k Taşlama Makinası (2 adet) Ak&uuml;l&uuml; Darbeli Matkap Vidalama Aleti (2 adet) Pah kırma makinası (1 adet)(Mengene ve 3 a&ccedil;ılı freze mengenesi) Hassas mengene (1 adet) Plastik Boru Kaynak Makinası(1 adet) &Ccedil;anta tipi oksijen kaynağı seti 6lt (1 adet) Takım Arabası (2 adet) Takım Arabası (1 adet) Test ve &Ouml;l&ccedil;&uuml;m Cihazı Taşıma Arabası (1 adet)</p>','2018-03-10 09:21:57.059162',0,8,107,7,14,1,'00:15:00','TARLA-2017TSDN005');
INSERT INTO procurement_tender VALUES(276,'Monitör Askı Aparatı',0.0,NULL,NULL,17110.0,'121724',NULL,'Alımın İçeriği

1. Masa Tipi Tek Kollu Monitör Askı Aparatı
2. Masa Tipi Çift Kollu Monitör Askı Aparatı
3. Duvar Tipi Tek Kollu Monitör Askı Aparatı
4. Profil Tipi Tek Kollu Monitör Askı Aparatı','2018-03-10 09:21:57.067713',0,NULL,92,7,14,NULL,NULL,'TARLA-2017TSDN009');
INSERT INTO procurement_tender VALUES(277,'30 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,44250.0,'121610',NULL,'Alımın İçeriği

22x1mm bakır boru (boy)20Adet
28x1 mm bakır boru (boy)20Adet
22mm bakır manşon50Adet
28 mm bakır manşon50Adet
15 mm bakır manşon50Adet
22 mm bakır dirsek50Adet
28 mm bakır dirsek 50Adet
15 mm bakır dirsek50Adet
22 mm bakır Tel50Adet
28 mm bakır Tel50Adet
15 mm bakır Tel50Adet
22x15x22 mm bakır inegal Tel20Adet
28x15x28 mm bakır inegal Tel20Adet
15x12 mm bakır redüksyon20Adet
15 mm kaynaklı küresel vana10Adet
Rotherm 2000 bakır boru lehim makinası kömürü (çift)5Adet
3 mm lehim teli5Adet
Gri lehim pastası6Adet
DIN EN 1044 2 mm bakır kaynak teli3paket
DIN EN 1044 1 mm %30 Gümüş kaynak teli3paket
asetilen 6Kg
oksijen gazı18lt
monoetilen 1Ton
LPG (12 lt tüp)3Adet
Argon gazı 150lt
Helyum gazı250lt
Balık sırtı alimimyum kablo kanalı 100boy
Balık Sırtı alimimyum kablo kanalı düz bağlantı30Adet
Balık Sırtı alimimyum kablo kanalı dirsek bağlantı30Adet
Su ve hava tesissat koruma kasisi (1m)20Adet','2018-03-10 09:21:57.075825',0,NULL,101,7,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(278,'14 Kalem Yazılım Malzeme Alımı',0.0,NULL,NULL,17700.0,'121613',NULL,'Alımın İçeriği
E-draw1Adet
ASME Section IX Kaynak Sertifikası1Adet
ASME B31.3: Borulama Proses Sertifikası1Adet
ISO 15614-1 Standart1Adet
ISO 14644-1:2015 Standart1Adet
ISO 14644-2:2015 Standart1Adet
ISO 14644-4:2001 Standart1Adet
ISO 14644-9:2012 Standart1Adet
ISO/FDIS 14644-13 Standart1Adet
ISO 11625:2007 Standart1Adet
IEC EN 61511-1 Standart1Adet
IEC EN 61511-2 Standart1Adet
IEC EN 61511-3 Standart1Adet
E-plan1Adet','2018-03-10 09:21:57.084158',0,NULL,108,14,16,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(279,'Rogar Kapağı Tadilat Hizmeti',0.0,NULL,NULL,57230.0,'121754',NULL,'','2018-03-10 09:21:57.092651',0,NULL,109,13,12,NULL,NULL,'TARLA-2017TSHZ017');
INSERT INTO procurement_tender VALUES(280,'Dizel  Jeneratörler için Dizel Yakıt Alımı',0.0,NULL,NULL,34220.0,'121586',NULL,'','2018-03-10 09:21:57.101367',0,8,110,7,13,NULL,NULL,'TARLA-2017TSRF003');
INSERT INTO procurement_tender VALUES(281,'32 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,51861.0,'121736',NULL,'Alımın İçeriği

Parelel set (1 adet)
Rutil elektrot (10 kutu)
Elmas eğe seti (1 adet)
Karbür kalıpçı freze seti (1 adet)
T kanal freze çakısı (22 adet)
Çok amaçlı pas sökücü (10 adet)
Kademeli matkap ucu (6 adet)
İnşaat spatulası (2 adet)
Taşlama taşı (6 adet)
Kesme taşı (20 kutu)
Flap disk zımpara (5 kutu)
3D tester (1 adet)
Kombine gaz taşı (20 adet)
Su zımparası (20 adet)
Elmas çanak taş (2 adet)
Süngerli su zımparası (5 adet)
Taş düzeltme elması (2 adet)
Freze tarama kafası (5 adet)
Freze şaftlı tarama kafası (10 adet)
Makine rayba seti (2 adet)
Seramik kesici uç takımı (20 adet)
Karbür kesici uç takımı (20 adet)
Parmak freze seti (3 adet)
Bahçe testeresi (2 adet)
Budama makası küçük (2 adet)
Budama makası büyük (2 adet)
Tırmık (3 adet)
Kürek (3 adet)
Bel (3 adet)
Kazma (3 adet)
Sarhoş tekerlek tip 1 (2 adet)
Düz ray tekerlek tip 1 (4 adet)','2018-03-10 09:21:57.110245',0,NULL,95,13,13,NULL,NULL,'TARLA-2017TSRF004');
INSERT INTO procurement_tender VALUES(282,'11 Kalem Sarf Malzeme Alımı (Temiz Oda Sarfları)',0.0,NULL,NULL,20156.0,'121730',NULL,'','2018-03-10 09:21:57.118412',0,NULL,111,7,13,NULL,NULL,'TARLA-2017TSRF007');
INSERT INTO procurement_tender VALUES(283,'Etiket Makinası',0.0,NULL,NULL,15930.0,'121733',NULL,'','2018-03-10 09:21:57.126684',0,NULL,112,7,14,NULL,NULL,'TARLA-2017TSDN010');
INSERT INTO procurement_tender VALUES(284,'Baca Gazı İyonize Hava Monitor Sistemi Tasarım Hizmeti',81000.0,NULL,NULL,65256.0,'',NULL,'','2018-03-10 09:21:57.135146',0,8,113,11,12,NULL,NULL,'TARLA-2017TSHZ018');
INSERT INTO procurement_tender VALUES(285,'3 Kalem Optik Masa',257204.0,NULL,NULL,330900.0,'122913',NULL,'Alımın İçeriği:
Malzemenin Cinsi MiktarıÖlçü Birimi
Optik Masa Tip 1   1Adet
Optik Masa Tip 2   1Adet
Optik Masa Tip 3       1Adet','2018-03-10 09:21:57.143609',0,8,103,15,14,NULL,NULL,'TARLA-2017TSDN011');
INSERT INTO procurement_tender VALUES(286,'Frekans Kontrollü AC Motor Sürücü Alımı',0.0,NULL,NULL,11505.0,'122024',NULL,'','2018-03-10 09:21:57.152002',0,NULL,114,13,14,NULL,NULL,'TARLA-2017TSDN012');
INSERT INTO procurement_tender VALUES(287,'Vakum sensörü',0.0,NULL,NULL,0.0,'121727',NULL,'','2018-03-10 09:21:57.160902',0,NULL,115,7,14,NULL,NULL,'TARLA-2017TSDN013');
INSERT INTO procurement_tender VALUES(288,'Master Osilatör',310000.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.169412',0,8,116,17,14,NULL,NULL,'TARLA-2017TSDN007');
INSERT INTO procurement_tender VALUES(289,'Nano Boyutlu FTIR Spektroskopi Sistemi',2700000.0,NULL,NULL,2700000.0,'',NULL,'','2018-03-10 09:21:57.177905',0,8,117,17,14,NULL,NULL,'TARLA-2017TSDN008');
INSERT INTO procurement_tender VALUES(290,'170 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,218450.0,'122703',NULL,'','2018-03-10 09:21:57.186194',0,8,118,15,13,NULL,NULL,'TARLA-2017TSRF014');
INSERT INTO procurement_tender VALUES(292,'Elemental Analiz Spektrometresi',0.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.203675',0,8,119,17,14,NULL,NULL,'TARLA-2017TSDN014');
INSERT INTO procurement_tender VALUES(293,'Çözünmüş Oksijen sensörü',57415.0,NULL,NULL,60355.0,'122033',NULL,'','2018-03-10 09:21:57.212556',0,8,120,19,14,NULL,NULL,'TARLA-2017TSDN015');
INSERT INTO procurement_tender VALUES(294,'İnternet Kenar Anahtar',86799.0,NULL,NULL,102422.0,'',NULL,'DMO’dan alındı.Avans olarak alındı','2018-03-10 09:21:57.221141',0,8,121,7,14,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(295,'Kontrol odası tasarım üretim ve kurulum hizmeti',57850.0,NULL,NULL,57525.0,'122030',NULL,'','2018-03-10 09:21:57.229810',0,8,122,12,12,NULL,NULL,'TARLA-2017TSHZ019');
INSERT INTO procurement_tender VALUES(296,'Seminer Salonu Tadilatı ve Onarımı Hizmeti',57500.0,NULL,NULL,46964.0,'122027',NULL,'','2018-03-10 09:21:57.238768',0,8,123,15,12,NULL,NULL,'TARLA-2017TSHZ020');
INSERT INTO procurement_tender VALUES(297,'23 Kalem Sarf Malzeme Elektrik Alımı',36444.64,NULL,NULL,33000.0,'122477',NULL,'Alımın İçeriği   1Termik manyetik koruma, 3 kutuplu , 32 A Termik Manyetik Şalter (tam takım halinde, düşük gerilim bobini kapama bobini)10Adet
2Termik manyetik koruma, 3 kutuplu , 63 A Motorlu Termik Manyetik Şalter (tam takım halinde, düşük gerilim bobini kapama bobini)10Adet
3Termik manyetik koruma, 3 kutuplu , 80 A Termik Manyetik Şalter (tam takım halinde, düşük gerilim bobini kapama bobini)5Adet
4Termik manyetik koruma, 3 kutuplu , 125 A Termik Manyetik Şalter (tam takım halinde, düşük gerilim bobini kapama bobini)5Adet
5Termik manyetik koruma, 3 kutuplu , 250 A Termik Manyetik Şalter (tam takım halinde, düşük gerilim bobini kapama bobini)3Adet
6Termik manyetik koruma, 3 kutuplu , 400 A Termik Manyetik Şalter (tam takım halinde, düşük gerilim bobini kapama bobini)2Adet
7Pano tipi enerji analizörleri15Adet
8Şeffaf makaron tip13Adet
9Şeffaf makaron tip23Adet
10Şeffaf makaron tip33Adet
11Şeffaf makaron tip43Adet
12Kaçak akım rölesi 4x25 mA 10Adet
13Kaçak akım rölesi 4x32 mA 10Adet
14Kaçak akım rölesi 4x50 mA 5Adet
15Kaçak akım rölesi 4x63 mA 5Adet
16Darbe akım anahtarı (kanal tipi)50Adet
17Darbe akım rölesi (24 VDC)20Adet
18Darbe akım rölesi (220 VAC)20Adet
19Çift taraflı köpük bant50Adet
20Astronomik zamanlayıcı2Adet
21Sigorta tipi faz baraları (2 metre)10Adet
224000 A Bus-Bar için Akım alma kutusu(63 A)3Adet
234000 A Bus-Bar için Akım alma kutusu(160 A) 3Adet','2018-03-10 09:21:57.247938',0,8,124,20,13,NULL,NULL,'TARLA-2017TSRF005');
INSERT INTO procurement_tender VALUES(298,'Femto Saniye Lazer Yükselteç Sistemi',0.0,NULL,NULL,798900.0,'',NULL,'','2018-03-10 09:21:57.257218',0,8,125,11,14,NULL,NULL,'TARLA-2017TSDN016');
INSERT INTO procurement_tender VALUES(299,'Trafo Bakım Onarım İşleri',18900.0,NULL,NULL,19765.0,'122480',NULL,'','2018-03-10 09:21:57.265498',0,8,126,15,15,NULL,NULL,'TARLA-2017TSBO002');
INSERT INTO procurement_tender VALUES(300,'2 adet dijital veri toplama kartı',9300.0,NULL,NULL,0.0,'122327',NULL,'','2018-03-10 09:21:57.273879',0,8,89,21,13,NULL,NULL,'TARLA-2017TSRF006');
INSERT INTO procurement_tender VALUES(301,'Muhtelif Kimyasal Sıvı ve Gazlar(Helyum=25 adet)',24000.0,NULL,NULL,23411.0,'122057',NULL,'','2018-03-10 09:21:57.282425',0,8,127,7,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(302,'10 Kalem Malzeme Alımı (Step Motor Tip 1 ve Tip2)',32000.0,NULL,NULL,33040.0,'122330',NULL,'','2018-03-10 09:21:57.292031',0,8,128,22,13,NULL,NULL,'TARLA-2017TSRF008');
INSERT INTO procurement_tender VALUES(303,'Kompanzasyon Bakım Onarım İşleri',14000.0,'2017-07-11 21:00:00',NULL,13924.0,'122483',NULL,'','2018-03-10 09:21:57.302080',0,8,129,15,15,NULL,'14:30:00','TARLA-2017TSBO003');
INSERT INTO procurement_tender VALUES(304,'2 Kalem Kontrol Donanım Alımı (Endüstriyel Sunucu ve Endüstriyel Medya Çevirici)',31630.0,NULL,NULL,0.0,'122333',NULL,'','2018-03-10 09:21:57.311847',0,8,89,21,14,NULL,NULL,'TARLA-2017TSDN018');
INSERT INTO procurement_tender VALUES(305,'30 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,198000.0,'122790',NULL,'Alımın İçeriği

UHV elektrik feedthrough tip 2 (30 adet)
UHV elektrik izolator tip 1 (8 adet)
UHV elektrik izolator tip 2 (4 adet)
DN63-DN63 UHV elektrik izolator (5 adet)
DN63 UHV köşe kaynaklı körük (5 adet)
DN40 UHV köşe kaynaklı körük (5 adet)
DN63 UHV bükme körük tip 1 (6 adet)
DN63 UHV bükme körük tip 2 (6 adet)
Zirkonia Allen Basli civata M3x15 (25 adet)
Zirkonia Allen Basli civata M3x20 (50 adet)
Zirkonia Allen Basli civata M3x25 (10 adet)
Zirkonia Allen Basli civata M4x15 (10 adet)
Zirkonia Allen Basli civata M4x20 (10 adet)
Zirkonia Allen Basli civata M4x25 (10 adet)
Zirkonia M3 pull (100 adet)
Zirkonia M4 pull (50 adet)
Zirkonia M3 somun (50 adet)
Zirkonia M4 somun (50 adet)
Sermik Elektrik izaolatör ayıraç (standoff) tip 1 (15 adet)
Sermik izaolatör ayıraç (standoff) tip 1 (15 adet)
Aluminyum nitrat levha tip 1 (5 adet)
Aluminyum nitrat levha tip 2 (5 adet)
Aluminyum nitrat levha tip 3 (5 adet)
OFHC Bakır rot tip 1 (1,8m) (1 adet)
S 316 L çelik rot tip 1 (2 adet)
S 316 L çelik rot tip 2 (2 adet)
S 316 L çelik rot tip 3 (2 adet)
Aluminyum blok tip 1 (100 adet)
Aluminyum blok tip 2 (100 adet)
Aluminyum blok tip 3 (100 adet)','2018-03-10 09:21:57.321244',0,8,118,15,13,NULL,NULL,'TARLA-2017TSRF009');
INSERT INTO procurement_tender VALUES(306,'Güçmetre',57950.0,NULL,NULL,0.0,'122486',NULL,'','2018-03-10 09:21:57.330829',0,8,105,20,14,NULL,NULL,'TARLA-2017TSDN019');
INSERT INTO procurement_tender VALUES(307,'Muhtelif Kimyasal Sıvı ve Gazlar(Helyum=70 adet)',56000.0,NULL,NULL,64428.0,'122351',NULL,'','2018-03-10 09:21:57.340666',0,8,127,13,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(308,'Güvenlik Giriş Kapısı ve Çevre Düzenlemesi Kurulum Hizmeti',585000.0,NULL,NULL,545000.0,'122850',NULL,'','2018-03-10 09:21:57.350094',0,8,130,15,12,NULL,NULL,'TARLA-2017TSHZ021');
INSERT INTO procurement_tender VALUES(309,'TARLA Tesisi Misafirhane Tadilat Hizmeti',57800.0,NULL,NULL,50622.0,'122489',NULL,'','2018-03-10 09:21:57.359639',0,8,131,13,12,NULL,NULL,'TARLA-2017TSHZ022');
INSERT INTO procurement_tender VALUES(310,'4 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,200000.0,'',NULL,'Alımın İçeriği

1. 8 adet Bidireksiyonel Kuplör
2. 2 adet 3 kademeli RF empedans ayarlayıcı (3stub_tuner) tip 1
3. 2 adet 3 kademeli RF empedans ayarlayıcı (3stub_tuner) tip 2
4. 4 adet Yüksek güç RF yük','2018-03-10 09:21:57.369298',0,NULL,132,15,13,NULL,NULL,'TARLA-2017TSRF010');
INSERT INTO procurement_tender VALUES(311,'53 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,0.0,'',NULL,'DN40CF/DN40KF adaptör15adet
DN100CF/DN40CF adaptör10adet
ISO100/DN40KF adaptör10adet
ISO100/DN100CF adaptör5adet
ISO63/DN40KF adaptör5adet
ISO63/DN50KF adaptör8adet
ISO100/ISO63 adaptör4adet
ISO100/DN25KF adaptör6adet
ISO63/DN25KF adaptör6adet
DN16CF/DN25KF adaptör6adet
DN40KF/DN25KF adaptör10adet
DN25KF T-cross4adet
DN25KF 4-cross4adet
DN40KF T-cross6adet
DN40KF 4-cross6adet
DN50KF T-cross6adet
DN50KF 4-cross4adet
DN50KF 900 dirsek8adet
DN40KF esnek bağlantı 1m10adet
DN25KF esnek bağlantı 1m10adet
DN25KF esnek bağlantı 0.5m10adet
DN50KF esnek bağlantı 0.5m3adet
DN50KF esnek bağlantı 0.75m3adet
ISO100 merkezleme halkası20adet
ISO100 kör flanş10adet
ISO100 o-ring, tip150adet
ISO100 o-ring, tip250adet
ISO63 merkezleme halkası20adet
ISO63 kör flanş10adet
ISO63 o-ring, tip150adet
ISO63 o-ring, tip250adet
DN40KF merkezleme halkası25adet
DN40KF kör flanş20adet
DN40KF o-ring75adet
DN50KF merkezleme halkası20adet
DN50KF kör flanş10adet
DN50KF o-ring, tip150adet
DN50KF o-ring, tip250adet
DN25KF merkezleme halkası20adet
DN25KF kör flanş10adet
DN25KF o-ring, tip150adet
DN25KF o-ring, tip250adet
DN25KF clamp25adet
DN40KF clamp25adet
DN50KF clamp25adet
ISO-K clamp (63-100)150adet
ISO-F clamp (63-100)100adet
DN63CF 90 dirsek4adet
DN16CF bakır gasket25adet
DN25CF bakır gasket10adet
DN40CF bakır gasket100adet
DN63CF bakır gasket50adet
DN100CF bakır gasket25adet','2018-03-10 09:21:57.379098',0,8,89,8,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(312,'Sirkülatör Tip 1,Sirkülatör Tip 2',0.0,NULL,NULL,130000.0,'',NULL,'','2018-03-10 09:21:57.388999',0,8,133,23,13,NULL,NULL,'TARLA-2017TSRF011');
INSERT INTO procurement_tender VALUES(313,'3 Kalem Hizmet Alımı',271400.0,NULL,NULL,0.0,'122791',NULL,'Alımın İçeriği                                   KF25/ISO100 Dönüştürücü Port İmalatı 2 Adet 
 Vakum Kazanı İmalatı Tip1 2 Adet 
 Vakum Kazanı İmalatı Tip2 2 Adet','2018-03-10 09:21:57.399224',0,8,118,15,12,NULL,NULL,'TARLA-2017TSHZ023');
INSERT INTO procurement_tender VALUES(314,'Ayarlanabilir Yüksek Gerilim Güç Kaynağı Tip 1',33937.0,NULL,NULL,31000.0,'122650',NULL,'','2018-03-10 09:21:57.408946',0,8,134,15,14,NULL,NULL,'TARLA-2017TSDN017');
INSERT INTO procurement_tender VALUES(315,'118 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,2278695.0,'',NULL,'NoGiderin AçıklamasıMiktarıÖlçü Birimi
1Adaptör 1-5/8 to N female20-10adet
2Adaptör  7/8 to N male10adet
37/8 to 1-5/8 düşürücü dönüştürücü10adet
4SMA male to N female dönüştürücü50adet
5SMA male to N male dönüştürücü50adet
6SMA female to N female dönüştürücü50adet
7SMA female to N male dönüştürücü50adet
8N male to N male dönüştürücü50adet
9N male to N male 90 deg dönüştürücü20adet
10N female to N female 90 deg dönüştürücü20adet
117/16 DIN male to N female 50adet
127/16 DIN male to N male50adet
137/16 DIN female to N female50adet
147/16 DIN female to N male50adet
15Kıvrımlı RF kablo tipi 90 deg N male konnector sıkıştırmalı tip (1/2 inç kablo için)100-15adet
16Kıvrımlı RF kablo tipi N female konnector sıkıştırmalı tip (1/2 inç kablo için)100adet
17Kıvrımlı RF kablo tipi 7/16 DIN male konnector sıkıştırmalı tip (7/8 inç kablo için)100-50adet
18Kıvrımlı RF kablo tipi N male konnector sıkıştırmalı tip (7/8 inç kablo için)100adet
19Kıvrımlı RF kablo tipi N female konnector sıkıştırmalı tip (7/8 inç kablo için)100-25adet
20Kıvrımlı RF kablo tipi N female konnector lehimsiz sıkıştırmalı tip (7/8 inç kablo için)100adet
21Zayıflatıcı 1 dB 10 Watt10adet
22Zayıflatıcı 2 dB  10 Watt10adet
23Zayıflatıcı 3 dB  10 Watt10adet
24Zayıflatıcı 4 dB  2 Watt10adet
25Zayıflatıcı 6 dB  10 Watt10adet
26Zayıflatıcı 9 dB 2 Watt10adet
27Zayıflatıcı 10 dB  10 Watt10adet
28Zayıflatıcı 12 dB  2 Watt10adet
29Zayıflatıcı 18 dB  2 Watt10adet
30Zayıflatıcı 20 dB  10 Watt10adet
31Zayıflatıcı 30 dB  10 Watt10adet
32Zayıflatıcı 1 dB 25 Watt10adet
33Zayıflatıcı 2 dB  25 Watt10adet
34Zayıflatıcı 3 dB  25 Watt10adet
35Zayıflatıcı 6 dB  25 Watt10adet
36Zayıflatıcı 10 dB  25 Watt10adet
37Zayıflatıcı 20 dB  25 Watt10adet
38Zayıflatıcı 30 dB  25 Watt10adet
39Zayıflatıcı 2 dB  50 Watt5adet
40Zayıflatıcı 3 dB  50 Watt5adet
41Zayıflatıcı 6 dB  50 Watt5adet
42Zayıflatıcı 10 dB  50 Watt5adet
43Zayıflatıcı 20 dB  50 Watt5adet
44Zayıflatıcı 30 dB  50 Watt5adet
45Zayıflatıcı Direnç Serisi (0-50 dB)14adet
46Zayıflatıcı Direnç Serisi (0-90 dB)14adet
47Yüksek güç zayıflatıcı (100W) 3dB15adet
48Yüksek güç zayıflatıcı (100W) 6dB15adet
49Yüksek güç zayıflatıcı (100W) 10dB15adet
50Yüksek güç zayıflatıcı (100W) 20dB15adet
51Yüksek güç zayıflatıcı (100W) 30dB15adet
52Yüksek güç zayıflatıcı (100W) 40dB15adet
53Yüksek güç zayıflatıcı (200W) 3dB2adet
54Yüksek güç zayıflatıcı (200W) 6dB2adet
55Yüksek güç zayıflatıcı (200W) 10dB2adet
56Yüksek güç zayıflatıcı (200W) 20dB2adet
57Yüksek güç zayıflatıcı (200W) 30dB2adet
58Yüksek güç zayıflatıcı (300W) 3dB2adet
59Yüksek güç zayıflatıcı (300W) 6dB2adet
60Yüksek güç zayıflatıcı (300W) 10dB2adet
61Yüksek güç zayıflatıcı (300W) 20dB2adet
62Yüksek güç zayıflatıcı (300W) 30dB2adet
63RF yük 8adet
64Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 1  2-1adet
65Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 22-1adet
66Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 328-1adet
67Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 428-1adet
68Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 512-1adet
69Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 612-1adet
70Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 72-1adet
71Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 82-1adet
72Düşük Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 92-1adet
73Yüksek Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 1  2-1adet
74Yüksek Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 2  2-1adet
75Yüksek Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 3  2-1adet
76Yüksek Güç Düşük Sönüm Hafif RF koaksiyel kablo tip 4  2-1adet
77Kıvrımlı RF kablo tipi N male konnektor lehimsiz sıkıştırmalı tip (1/2 inç kablo için)100Adet
78Kıvrımlı RF kablo tipi N female konnektor lehimsiz sıkıştırmalı tip (1/2 inç kablo için)100Adet
79Kablo Konnektör Hazırlama Malzemeleri Tip 420Adet
80Kıvrımlı RF kablo tipi 7/16 DIN male 90 deg konnektor sıkıştırmalı tip (7/8 inç kablo için)15Adet
81Kıvrımlı RF kablo tipi N female konnektor sıkıştırmalı tip (3/8 inç kablo için)250-200Adet
82Kablo Konnektör Hazırlama Malzemeleri Tip 120Adet
83Kablo Konnektör Hazırlama Malzemeleri Tip 220Adet
84Kablo Konnektör Hazırlama Malzemeleri Tip 320Adet
85N female to N female dönüştürücü75Adet
86N male to N female250Adet
87Kıvrımlı RF kablo tipi N male konnector sıkıştırmalı tip (1/2 inç kablo için)400Adet
88Kıvrımlı RF kablo tipi N male konnektor sıkıştırmalı tip (3/8 inç kablo için)500Adet
89Kıvrımlı RF kablo tipi N male 90 deg konnektor sıkıştırmalı tip (3/8 inç kablo için)100Adet
90Kıvrımlı RF kablo tipi N male konnektor sıkıştırmalı tip (1/4 inç kablo için)200Adet
91Kıvrımlı RF kablo tipi N female konnektor sıkıştırmalı tip (1/4 inç kablo için)100Adet
92Kıvrımlı RF kablo tipi N male 90 deg konnektor sıkıştırmalı tip (1/4 inç kablo için)50Adet
93Kıvrımlı RF kablo tipi 7/8 EIA konnektor sıkıştırmalı tip (7/8 inç kablo için)75Adet
94N  Konnektor için tork anahtarı4Adet
957/16  Konnektor için tork anahtarı4Adet
96Terminatör 6 W N( f)2Adet
97Terminatör 6 W N( m)2Adet
98Terminatör 10 W N( f)2Adet
99Terminatör 10 W N( m)2Adet
100Terminatör 15 W N( f)2Adet
101Terminatör 15 W N( m)2Adet
102Terminatör 25 W N( f)2Adet
103Terminatör 60 W N( f)2Adet
104Terminatör 60 W N( m)2Adet
105Direksiyonel Kuplör 6 dB2Adet
106Direksiyonel Kuplör 10 dB2Adet
107Direksiyonel Kuplör 20 dB2Adet
108Direksiyonel Kuplör 30 dB2Adet
109Bidireksiyonel Kuplör 40 dB2Adet
110Bidireksiyonel Kuplör 50 dB Tip12Adet
111Bidireksiyonel Kuplör 50 dB Tip22Adet
112Faz kilitli tespitleyici  entegre tip 12Adet
113Faz kilitli tespitleyici entegre tip 210Adet
114Faz kaydırıcı2Adet
115RF üreteç entegre tip 12Adet
116RF üreteç entegre tip 210Adet
1171-5/8 to 7/8 düşürücü dönüştürücü10adet','2018-03-10 09:21:57.418145',0,8,135,15,13,NULL,NULL,'TARLA-2017TSRF012');
INSERT INTO procurement_tender VALUES(316,'Dizel Jeneratörler İçin Dizel Yakıt Alımı',57900.0,NULL,NULL,68322.0,'122653',NULL,'','2018-03-10 09:21:57.427923',0,8,136,12,13,NULL,NULL,'TARLA-2017TSRF013');
INSERT INTO procurement_tender VALUES(317,'Leak Dedektörü Bakım Onarım ve Kalibrasyonu',57200.0,'2017-09-17 21:00:00',NULL,0.0,'122677',NULL,'','2018-03-10 09:21:57.437495',0,8,94,20,15,NULL,'15:00:00','TARLA-2017TSBO004');
INSERT INTO procurement_tender VALUES(318,'Muhtelif Hizmet Alımı 1',56240.0,NULL,NULL,48500.0,'122679',NULL,'Alımın İçeriği:
su soğutma sisteminin sürekli operasyonda düzenli çalışabilirliği için hizmet alımına ihtiyaç duyulmaktadır','2018-03-10 09:21:57.446878',0,8,94,20,12,NULL,NULL,'TARLA-2017TSHZ024');
INSERT INTO procurement_tender VALUES(319,'Yaka tipi oksijen dedektörü (3 adet) ve Duvar tipi oksijen dedektörü (5 adet)',57800.0,NULL,NULL,40000.0,'122680',NULL,'','2018-03-10 09:21:57.463477',0,8,94,20,14,NULL,NULL,'TARLA-2017TSDN020');
INSERT INTO procurement_tender VALUES(320,'Demet Taşınım Hattı Sehpası İmalat Hizmeti',57600.0,NULL,NULL,50000.0,'122695',NULL,'','2018-03-10 09:21:57.476230',0,8,86,20,12,NULL,NULL,'TARLA-2017TSHZ027');
INSERT INTO procurement_tender VALUES(321,'Yük Asansörleri İmalatı ve Kurulum Hizmeti',315000.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.487985',0,8,89,24,12,NULL,NULL,'TARLA-2017TSHZ029');
INSERT INTO procurement_tender VALUES(322,'Mekanik İmalat ve Montaj Destek Hizmeti',48900.0,NULL,NULL,42300.0,'122705',NULL,'','2018-03-10 09:21:57.501052',0,8,118,10,12,NULL,NULL,'TARLA-2017TSHZ025');
INSERT INTO procurement_tender VALUES(323,'Demet Hattı Elemanları İmalatı Hizmeti',50200.0,NULL,NULL,44000.0,'122701',NULL,'','2018-03-10 09:21:57.513261',0,8,118,15,12,NULL,NULL,'TARLA-2017TSHZ028');
INSERT INTO procurement_tender VALUES(324,'Diagnostik Donanımları İmalatı Hizmeti',47500.0,NULL,NULL,35000.0,'122707',NULL,'','2018-03-10 09:21:57.526112',0,8,137,15,12,NULL,NULL,'TARLA-2017TSHZ031');
INSERT INTO procurement_tender VALUES(325,'33 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,0.0,'122808',NULL,'No\'Malzemenin Cinsi          Miktarı               Ölçü Birimi
13x6 Düşük gerilim kablosu (NYY- J BK )100Metre
21x6 Düşük gerilim kablosu (NYY BK )100Metre
3"3x2.5 Düşük gerilim kablosu (NYY-J BK )"100Metre
41x16 Düşük gerilim kablosu (NYY BK )100Metre
5"3x1.5 Düşük gerilim kablosu (NYY-J BK )"140Metre
6"4x25 Düşük gerilim kablosu (NYY-J BK )"100Metre
75x6 Düşük gerilim kablosu (NYY- J BK )100Metre
8"3x0.75 Kontrol kablosu (JZ-500  GY G)"460Metre
95x1 Kontrol kablosu (JZ-500 GY G)260Metre
103x1 Kontrol kablosu (JZ-500 GY G)360Metre
1110x1 Kontrol kablosu (JZ-500 GY G)100Metre
1220x2x0.8 Elektronik kablo (JE-Y (St)Y)450Metre
132x0.8 Elektronik kablo (JE-Y(St) Y)650Metre
142x2x0.8 Elektronik kablo (JE-Y (St)Y)2000Metre
154x2x0.8 Elektronik kablo (JE-Y (St)Y)1200Metre
168x2x0.8 Elektronik kablo (JE-Y (St)Y)100Metre
17"12x0.75 Elektronik kablo (TRONIC-CY / LİY-CY)"   100Metre
182x0.75 Kontrol kablosu (F-CY- OZ)(LiY-CY)100Metre
192x1 Kontrol kablosu (F-CY-OZ) (LiY-CY)100Metre
203x0.75 Kontrol kablosu (H05VV5- F  GY G)130Metre
217x0.75 Kontrol kablosu (H05VV5- F GY G)100Metre
224x0.5 Kontrol kablosu (H05VV5-F GY G)100Metre
23PATCH2 FL CAT 6 kablo36Adet
24PATCH15 FL CAT 6 kablo3Adet
252x1.5 Hoparlör kablosu380Metre
26Fiber optik kablo (AT-VYY Multimode 2G62.5/125)100Metre
27"4x16 Düşük gerilim kablosu (2YSLCYK-J)"100Metre
28"4x1.5 Düşük gerilim kablosu (2YSLCYK-J)"100Metre
29"4x4 Düşük gerilim kablosu (2YSLCYK-J)"100Metre
30"5x1.5 Düşük gerilim kablosu (YSLYCY-JZ/-JB/-OZ/-OB)"300Metre
31"7x1.5 Düşük gerilim kablosu (YSLY-JZ/-JB/-OZ/-OB)" 100Metre
321x6 H07 RN-F Kablo500Metre
33CAT 7 Kablo (24 AWG)1400Metre','2018-03-10 09:21:57.538082',0,8,138,20,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(326,'Helyum Odası Sıcak Hava Tahliye Sistemi Kurulumu Hizmeti',11250.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.551287',0,8,89,25,12,NULL,NULL,'TARLA-2017TSHZ026');
INSERT INTO procurement_tender VALUES(327,'Seminer Salonu Tadilatı ve Onarımı Hizmeti',57200.0,NULL,NULL,38850.0,'122805',NULL,'','2018-03-10 09:21:57.563704',0,8,122,15,12,NULL,NULL,'TARLA-2017TSHZ030');
INSERT INTO procurement_tender VALUES(328,'Kontrol Sistemi Donanımları (Ağ Anahtarları, Server, Endüstriyel PC, İş İstasyonları, Bilgisayarlar, ADC vb)',50818.0,NULL,NULL,45620.0,'122806',NULL,'','2018-03-10 09:21:57.576461',0,8,92,20,14,NULL,NULL,'TARLA-2017TSDN021');
INSERT INTO procurement_tender VALUES(329,'Radyasyon Ölçüm Cihazları ve Ekipmanları',220000.0,NULL,NULL,0.0,'',NULL,'Alımın İçeriği

1. 1 adet dozimetre elektrometresi
2. 2 adet İyon Odası tip 1
3. 6 adet İyon Odası tip 2','2018-03-10 09:21:57.588833',0,8,89,24,14,NULL,NULL,'TARLA-2017TSDN022');
INSERT INTO procurement_tender VALUES(330,'20 Kalem Sarf Malzeme',297360.0,NULL,NULL,0.0,'',NULL,'Malzemenin CinsiMiktarıÖlçü Birimi
mantar buton seti, tip11 Adet
acil durum düğmesi, tip1 8 Adet
limit anahtarı tip 120 Adet
limit anahtarı tip 23 Adet
acil durum düğmesi, tip25 Adet
mekanik kilitli elektriksel anahtar, tip1     3 Adet
mekanik kilitli elektriksel anahtar, tip 2   7 Adet
hava damper motoru 22Adet
3 yollu vana motoru1Adet
kanal tipi sıcaklık sensörü, tip16 Adet
diferansiyel basınç sensörü, tip14 Adet
kanal tipi sıcaklık sensörü, tip25 Adet
donma koruma ünites i3 Adet
boru tipi sıcaklık sensörü 4 Adet
limit anahtarı, tip4  5 Adet
mantar buton seti, tip25 Adet
acil durum düğmesi, tip3 5 Adet
limit anahtarı, tip 55 Adet
pnomatik basınç anahtarı5 Adet
hidrolik basınç anahtarı2 Adet','2018-03-10 09:21:57.600602',0,8,89,24,13,NULL,NULL,'TARLA-2017TSRF015');
INSERT INTO procurement_tender VALUES(331,'Yüksek Voltaj Dirençleri',0.0,NULL,NULL,0.0,'',NULL,'Alımın İçeriği                                                                               1 Yüksek Voltaj Dirençleri  Tip1 30 Adet
2 Yüksek Voltaj Dirençleri  Tip2 20 Adet
3 Yüksek Voltaj Dirençleri  Tip3 30 Adet
4 Yüksek Voltaj Dirençleri  Tip4 30 Adet','2018-03-10 09:21:57.613065',0,8,89,24,13,NULL,NULL,'TARLA-2017TSRF016');
INSERT INTO procurement_tender VALUES(332,'Üyelik Aidatı',0.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.624727',0,8,89,26,12,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(333,'Muhtelif Hizmet Alımı 1',58000.0,NULL,NULL,44650.0,'122807',NULL,'Almıın İçeriği:
Kapı Değişimi ve Onarımı','2018-03-10 09:21:57.637568',0,8,122,20,12,NULL,NULL,'TARLA-2017TSHZ032');
INSERT INTO procurement_tender VALUES(334,'Radyasyon Donanımları',1126440.0,NULL,NULL,815000.0,'',NULL,'Alımın İçeriği

Malzemenin Cinsi     Miktarı Ölçü Birimi
duvar tipi geiger-muller sayacı  10 Adet
duvar tipi iyon odası5 Adet
duvar tipi veri toplama ünitesi  8 Adet
portatif gama dedektörü1 Adet
portatif kontaminasyon dedektörü1 Adet
Duvar Tipi Geiger-Muller Sayacı 2 Adet
Duvar Tipi Veri Toplama Ünitesi 2 Adet
Kişisel Kontaminasyon Dedektörü  2 Adet
Duvar Tipi Veri Toplama Ünitesi1 Adet
Duvar Tipi İyon Odası2 Adet
Duvar Tipi Geiger Müller Sayacı 1 Adet','2018-03-10 09:21:57.649093',0,8,139,15,14,NULL,NULL,'TARLA-2017TSDN024');
INSERT INTO procurement_tender VALUES(335,'Elektrik Altyapı Otomasyon Bakım Hizmeti',572500.0,NULL,NULL,0.0,'122849',NULL,'','2018-03-10 09:21:57.661795',0,8,89,21,12,NULL,NULL,'TARLA-2017TSHZ033');
INSERT INTO procurement_tender VALUES(336,'Muhtelif Hizmet Alımı1',48000.0,NULL,NULL,40000.0,'122804',NULL,'Alımın İçeriği:                                                   temiz oda sistemi dahilindeki filtre kaçaklarının ölçümü ve vakum ısıtıcılarının testleri,temiz oda hava kalitesi analizi...vs','2018-03-10 09:21:57.673833',0,8,108,20,12,NULL,NULL,'TARLA-2017TSHZ034');
INSERT INTO procurement_tender VALUES(337,'7 Kalem Sarf Malzeme Alımı',51550.0,NULL,NULL,0.0,'122809',NULL,'Alımın İçeriği 
Malzemenin Cinsi    Miktarı Ölçü Birimi
Teflon Sprey50 Adet
M6 Bakır Somun     2000Adet
M8 Bakır Somun     2000Adet
M6 Gümüş Kaplama Somun  500 Adet
M8 Gümüş Kaplama Somun  500 Adet
M6 x 20 Gümüş Kaplı Cıvata 1500 Adet
M8 x 25 Gümüş Kaplı Cıvata 500  Adet','2018-03-10 09:21:57.685252',0,8,108,20,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(338,'Kesintisiz Güç Kaynağı Sistemi',1290000.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.695830',0,8,89,24,14,NULL,NULL,'TARLA-2017TSDN025');
INSERT INTO procurement_tender VALUES(339,'Kütle Spektrometresi',0.0,NULL,NULL,438383.0,'',NULL,'','2018-03-10 09:21:57.708023',0,8,140,15,14,NULL,NULL,'TARLA-2017TSDN023');
INSERT INTO procurement_tender VALUES(340,'CNC torna tezgahı',215000.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.719816',0,8,89,24,14,NULL,NULL,'TARLA-2017TSDN026');
INSERT INTO procurement_tender VALUES(341,'UniGraphics NX',0.0,NULL,NULL,35000.0,'122865',NULL,'','2018-03-10 09:21:57.730876',0,8,141,10,16,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(342,'36 Kalem Sarf Malzeme Alımı',56270.0,NULL,NULL,0.0,'122867',NULL,'Alımın İçeriği
Malzemenin Cinsi MiktarıÖlçü Birimi
Zemin Tipi Kablo Koruma Kanalı 20 Boy
Nitril Eldiven (pudrasız ve latexsiz)100Adet
2 yollu 304 Paslanmaz Çelik Küresel Vana, 10mm OD Tüp Swagelok Tip Vana10Adet
2 yollu 304 Paslanmaz Çelik Küresel Vana, 8mm OD Tüp Swagelok Tip Vana10Adet
Paslanmaz Çelik 304, Hızlı Bağlantı Elemanı Adaptörü, Tüp OD 10”, DN16KF10Adet
Paslanmaz Çelik 304, Hızlı Bağlantı Elemanı Adaptörü, Tüp OD 8”, DN16KF10Adet
304 Paslanmaz Çelik Tüp 10mm OD 2Boy
304 Paslanmaz Çelik Tüp 8mm OD 2Boy
304 Paslanmaz Çelik Tüp OD 1/4"2Boy
EN 10305-4 Standartlarında E235 Dikişsiz  Çelik Boru Çap 16mm Et Kalınlığı 2mm 10Boy
EN 10305-4 Standartlarında E235 Dikişsiz  Çelik Boru Çap 18mm Et Kalınlığı 2mm  10Boy
EN 10305-4 Standartlarında E235 Dikişsiz Çelik Boru Çap 20mm Et Kalınlığı 2mm  10Boy
90 Derece Yüksüklü Dirsek Bağlantı Elemanı Boru Çapı 16mm15Adet
90 Derece Yüksüklü Dirsek Bağlantı Elemanı Boru Çapı 18mm15Adet
90 derece Yüksüklü Dirsek Bağlantı Elemanı Boru Çapı 20mm15Adet
Yüksüklü TEE  Bağlantı Elemanı Boru Çapı 16mm15Adet
Yüksüklü TEE  Bağlantı Elemanı Boru Çapı 18mm15Adet
Yüksüklü TEE  Bağlantı Elemanı Boru Çapı 20mm15Adet
Yüksüklü Ekleme Nipeli Bağlantı Elemanı Boru Çapı 16mm10Adet
Yüksüklü Ekleme Nipeli Bağlantı Elemanı Boru Çapı 18mm10Adet
Yüksüklü Ekleme Nipeli Bağlantı Elemanı Boru Çapı 20mm10Adet
Yüksüklü Nipel Redüksiyon Bağlantı Elemanı 16mmx18mm5Adet
Yüksüklü Nipel Redüksiyon Bağlantı Elemanı 16mmx20mm5Adet
Yüksüklü Nipel Redüksiyon Bağlantı Elemanı 18mmx20mm5Adet
Çelik Boru Kelepçesi Boru Çap 16mm50Adet
Çelik Boru Kelepçesi Boru Çap 18mm50Adet
Çelik Boru Kelepçesi Boru Çap 20mm50Adet
Flex Cryogenics Hortum Tip 12Adet
Flex Cryogenics Hortum Tip 22Adet
Vakum Macunu Tip110Adet
Vakum Macunu Tip210Adet
Boru Tipi Süperyalıtım Tabakası 100Metretül
Elektronik Test Bandı 30Adet
Pnömatik Solenoid 3 yollu vana3Adet
Zaman roleli pnömatik vana2Adet
Pencere Sinekliği24Adet','2018-03-10 09:21:57.742003',0,8,108,15,13,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(343,'8 Kalem Donanım Alımı',9982.0,NULL,NULL,11092.0,'122869',NULL,'Alımın İçeriği:
Malzemenin Cinsi MiktarıÖlçü Birimi
1 ton Taşıma Kapasiteli Endüstriyel Kabinet Taşıma Arabası 1 Adet
Mikrometre Tip12 Adet
Mikrometre Tip25 Adet
Mikrometre Tip32 Adet
3 Basamaklı Pyramid Tipi Merdiven2  Adet
2 Basamaklı Pyramid Tipi Merdiven2 Adet
Kapsül Tip Düşük Basınç Ölçer3 Adet
Tekerlekli Yer Tipi Dispenser Mobil Metal Ayaklı Dispenser Çöp Torbalı 2 Adet','2018-03-10 09:21:57.752906',0,8,108,15,14,NULL,NULL,'TARLA-2017TSDN027');
INSERT INTO procurement_tender VALUES(344,'Network Analizör ve Spektrum Analizör',0.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.764430',0,8,142,15,14,NULL,NULL,'TARLA-2017TSDN028');
INSERT INTO procurement_tender VALUES(345,'Test Ölçüm ve Bağlantı Sistemleri',58500.0,NULL,NULL,53500.0,'122871',NULL,'','2018-03-10 09:21:57.774363',0,8,143,20,14,NULL,NULL,'TARLA-2017TSDN029');
INSERT INTO procurement_tender VALUES(346,'7 Kalem Donanım Alımı',35910.0,NULL,NULL,32250.0,'122872',NULL,'Alımın İçeriği:
Malzemenin Cinsi MiktarıÖlçü Birimi
Motorlu Havalandırma Damperi Tip 13 Adet
Motorlu Havalandırma Damperi Tip 21 Adet
Motorlu Havalandırma Damperi Tip 32 Adet
Motorlu Havalandırma Damperi Tip 42 Adet
Motorlu Havalandırma Damperi Tip 52 Adet
Motorlu Havalandırma Damperi Tip 61 Adet
Motorlu Havalandırma Damperi Tip 73 Adet','2018-03-10 09:21:57.783097',0,8,144,20,14,NULL,NULL,'TARLA-2017TSDN030');
INSERT INTO procurement_tender VALUES(347,'Dipole Magnet Üretim Hizmeti',57770.0,NULL,NULL,54850.0,'122889',NULL,'','2018-03-10 09:21:57.791350',0,8,137,15,12,NULL,NULL,'TARLA-2017TSHZ035');
INSERT INTO procurement_tender VALUES(348,'Solenoid Magnet Üretim Hizmeti',57600.0,NULL,NULL,55084.0,'122887',NULL,'','2018-03-10 09:21:57.799734',0,8,137,15,12,NULL,NULL,'TARLA-2017TSHZ037');
INSERT INTO procurement_tender VALUES(349,'Muhtelif İş Güvenliği Ekipmanları ve Güvenlik Uyarı Levhaları',19935.0,NULL,NULL,16500.0,'122916',NULL,'','2018-03-10 09:21:57.808893',0,8,145,15,13,NULL,NULL,'TARLA-2017TSRF017');
INSERT INTO procurement_tender VALUES(350,'Enjektör Spektrometre İmalat Hizmeti',58242.0,NULL,NULL,56500.0,'122885',NULL,'','2018-03-10 09:21:57.818956',0,8,137,15,12,NULL,NULL,'TARLA-2017TSHZ039');
INSERT INTO procurement_tender VALUES(351,'Mekanik İmalat İşleri- Korkuluk',57950.0,NULL,NULL,55100.0,'122918',NULL,'','2018-03-10 09:21:57.827390',0,8,146,15,12,NULL,NULL,'TARLA-2017TSHZ036');
INSERT INTO procurement_tender VALUES(352,'ANSYS',58500.0,NULL,NULL,51694.0,'122888',NULL,'','2018-03-10 09:21:57.835851',0,8,147,20,16,NULL,NULL,'TARLA-2017TSYZ002');
INSERT INTO procurement_tender VALUES(353,'Fiber Optik Fusion Cihazı',28350.0,NULL,NULL,25423.0,'122886',NULL,'','2018-03-10 09:21:57.844481',0,8,103,20,14,NULL,NULL,'TARLA-2017TSDN031');
INSERT INTO procurement_tender VALUES(354,'Muhtelif Hizmet Alımı1',52500.0,NULL,NULL,47450.0,'122917',NULL,'Alımın İçeriği

1. Soğutma Kulesi ıslak mod sirkülasyon tankı kurulumu
2. Helyum ve RF by-pass ve debimetre kesici vanalarının değişimi
3. 1 adet duvar tipi 9000btu fancoil montajı
4. Beamdump bağlantı noktalarının MSS tipA tipi flanş ile değiştirilmesi
5. FEL ve hızlandırıcı odalarına birer adet beamdump hattı çıkışı eklenmesi
6. Brems. Odasındaki beamdump hattına MSS tipA tipi by-pass hattı kurulması
7. Ana MCP panosu pompa TMŞ’lerinin ayrılması
8. Helyum kollektörü duvar konsollarının sağlamlaştırılması ve kollektör üzerindeki pas lekelerinin temizlenmesi
9. Helyum odasındaki kırık taşların tamiri
10. Helyum kollektörü üzerine tahliye vanaları konması
11. BL ve BD hattı tünellere tahliye kovaları yapılması
12. Hava purjorlerinin değiştirilmesi
13. CB1 esnek bağlantısının boyunun uzatılması
14. Helyum hattı debimetresinin revizyonu
15. Beamline ve beamdump buffer tanklarına harici ısıtıcı rezistansların montajı
16. Sistem genelinde ızgaralı pislik tutucuların ızgaralarının değişimi
17. D001 logar pompalarının tamiratı','2018-03-10 09:21:57.852998',0,8,148,27,12,NULL,NULL,'TARLA-2017TSHZ038');
INSERT INTO procurement_tender VALUES(355,'16 Kalem Sarf Malzeme Alımı',30155.0,NULL,NULL,0.0,'122915',NULL,'Alımın İçeriği:Malzeme CinsiBirimMiktarı
100x40x1,5 mm pregalvaniz 2,4 m boy kablo kanalıAdet20
200x40x1,5 mm pregalvaniz 2,4 m boy kablo kanalıAdet100
300x40x1,5 mm pregalvaniz 2,4 m boy kablo kanalıAdet100
H40 ekleme parçasıAdet1000
100 mm pregalvaniz standart 90° H40 dönüşAdet30
200 mm pregalvaniz standart 90° H40 dönüşAdet30
300 mm pregalvaniz standart 90° H40 dönüşAdet30
U destek , L = 2400 t=2,0 mm.Adet100
U Konsol 125 mm.Adet50
U Konsol 225 mm.Adet200
U Konsol 325 mm.Adet200
M8 * 15 mm.b.b.civata+flanşlı somunAdet1000
M6 * 15 mm.b.b.civata+flanşlı somunAdet1000
Yüksek gerilim topraklama ıstakasıAdet2
54 W floüresan armatür, elektronik balastlı takım halindeAdet40
Kombine priz (en az 2xelektrik, 2xethernet hattı üstünde)Adet20','2018-03-10 09:21:57.861957',0,8,149,20,13,NULL,NULL,'TARLA-2017TSRF018');
INSERT INTO procurement_tender VALUES(356,'7 Kalem Sarf Malzeme Alımı',58299.0,NULL,NULL,0.0,'122973',NULL,'Alımın İçeriği:

Malzemenin Cinsi MiktarıÖlçü Birimi
PLC işlemcisi2 Adet
PLC analog modül   10 Adet
PLC dijital modül11Adet
PLC haberleşme modülü4 Adet
PLC analog röle5 Adet
PLC dijital röle5 Adet
HMI 2 Adet','2018-03-10 09:21:57.870445',0,8,150,9,13,NULL,NULL,'TARLA-2017TSRF023');
INSERT INTO procurement_tender VALUES(357,'1000 lt Tekerlekli Sıvı Helyum Taşıma Saklama Tankı',220422.0,NULL,NULL,197156.0,'',NULL,'','2018-03-10 09:21:57.879926',0,8,151,9,14,NULL,NULL,'TARLA-2017TSDN033');
INSERT INTO procurement_tender VALUES(358,'Yazılım Destek Hizmeti',57500.0,NULL,NULL,50700.0,'122933',NULL,'','2018-03-10 09:21:57.890763',0,8,152,15,12,NULL,NULL,'TARLA-2017TSHZ041');
INSERT INTO procurement_tender VALUES(359,'74 Kalem Sarf Malzeme Alımı',455373.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.900108',0,8,89,24,13,NULL,NULL,'TARLA-2017TSRF019');
INSERT INTO procurement_tender VALUES(360,'KGS Kontrol Panoları',0.0,NULL,NULL,959528.0,'',NULL,'','2018-03-10 09:21:57.908988',0,8,113,15,14,NULL,NULL,'TARLA-2017TSDN034');
INSERT INTO procurement_tender VALUES(361,'Dozimetre doğrulama ve kalibrasyon hizmeti',34026.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.917025',0,8,89,24,12,NULL,NULL,'TARLA-2017TSHZ040');
INSERT INTO procurement_tender VALUES(362,'8 Kalem Sarf Malzeme Alımı',55552.0,NULL,NULL,52000.0,'122932',NULL,'Alımın İçeriği
CAT7 Kablo3500 Metre
300 VOLT izolasyon seviyeli,6 core, blendajlı ve zırhlı data kablosu 50Metre
300 VOLT izolasyon seviyeli,25 core, blendajlı ve zırhlı data kablosu GENEX CABLING G40425 50Metre
RS232 düşük kapasiteli bilgisayar kablosu200Metre
RG11 triaksiyal kablo600Metre
RG-58 koaksiyel kablo600Metre
K-Tipi termokupl kablosu600Metre
2x0,75 mm2 zırhlı bükülmüş çift kablo1000Metre','2018-03-10 09:21:57.925263',0,8,153,27,13,NULL,NULL,'TARLA-2017TSRF020');
INSERT INTO procurement_tender VALUES(363,'19 Kalem Sarf Malzeme Alımı',58211.0,NULL,NULL,55000.0,'122970',NULL,'Malzemenin Cinsi MiktarıÖlçü Birimi
Basınçlı Tesisat Sarf Malzemeleri  ( Borular, Fittingler, vb 7 Adet
Muhtelif Mekanik Sarf Malzemeler (Civata, Çelik, Alüminyum, Teflon Sarf Malzemeleri)  7Adet
Kaynak camı30Adet
Şeffaf Sıvı silikon20Adet
Beyaz sıvı silikon20Adet
Çekomastik silikon20Adet
Parmak rulo50Adet
Rulo5Adet
3 kg çelik macun3Adet
Gazaltı kaynak torcu1Adet
Gazaltı kaynak torç başlığı10Adet
Gazaltı kaynak kontak memesi50Adet
Kaynak Torcu2Adet
Tig Kaynak-Tungsten Uc30Adet
Tig Kaynak Teli20kutu
Mig-Mag Kaynak Meme Tutucu50Adet
45x45 Sigma Profil15Adet
30x30x3 Köşebent18Adet
Paslanmaz Çelik Makine Ayağı60Adet','2018-03-10 09:21:57.933778',0,8,95,15,13,NULL,NULL,'TARLA-2017TSRF024');
INSERT INTO procurement_tender VALUES(364,'Vakum Fırın',55780.0,NULL,NULL,0.0,'122934',NULL,'','2018-03-10 09:21:57.942182',0,8,89,28,14,NULL,NULL,'TARLA-2017TSDN035');
INSERT INTO procurement_tender VALUES(365,'Solvent Kabini',46610.0,NULL,NULL,0.0,'122935',NULL,'','2018-03-10 09:21:57.950926',0,8,89,28,14,NULL,NULL,'TARLA-2017TSDN037');
INSERT INTO procurement_tender VALUES(366,'10 Kalem Sarf Malzeme Alımı',45400.0,NULL,NULL,40000.0,'122931',NULL,'','2018-03-10 09:21:57.959868',0,8,153,15,13,NULL,NULL,'TARLA-2017TSRF022');
INSERT INTO procurement_tender VALUES(367,'Solvent Uçurma Amaçlı Vakum Pompası',58310.0,NULL,NULL,0.0,'122936',NULL,'','2018-03-10 09:21:57.968298',0,8,89,28,14,NULL,NULL,'TARLA-2017TSDN039');
INSERT INTO procurement_tender VALUES(368,'Dozimetre Okuyucuları(Dozimetre Okuyucu Tip1, Dozimetre Okuyucu Tip2',0.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:57.977072',0,8,89,24,14,NULL,NULL,'TARLA-2017TSDN036');
INSERT INTO procurement_tender VALUES(369,'Azot Tankı Tip1',250800.0,NULL,NULL,175000.0,'122939',NULL,'','2018-03-10 09:21:57.985606',0,8,154,15,14,NULL,NULL,'TARLA-2017TSDN032');
INSERT INTO procurement_tender VALUES(370,'Araç Kiralama Hizmeti',40800.0,NULL,NULL,33600.0,'122972',NULL,'','2018-03-10 09:21:57.993914',0,8,155,15,12,NULL,NULL,'TARLA-2017TSHZ042');
INSERT INTO procurement_tender VALUES(371,'Konferans Salonu Sandalyesi',44604.0,NULL,NULL,0.0,'',NULL,'','2018-03-10 09:21:58.002801',0,8,89,29,14,NULL,NULL,'');
INSERT INTO procurement_tender VALUES(372,'33 Kalem Sarf Malzeme Alımı',0.0,NULL,NULL,0.0,'122971',NULL,'Malzemenin Cinsi MiktarıÖlçü Birimi
CAT 7 Erkek RJ45 Konnektor100Adet
CAT 7 Erkek RJ45 Konnektor150Adet
SMB erkek-SMB erkek konnektörlü 50Ohm RG142 kablo (1metre)  40   Adet
BNC erkek-SMA erkek konnektörlü 50Ohm RG316 kablo (2 metre)  40  Adet
BNC erkek-SMA erkek konnektörlü 50Ohm RG316 kablo (3 metre)  40  Adet
BNC erkek-SMB erkek konnektörlü 50Ohm RG142 kablo (3 metre)   20  Adet
BNC erkek-SMB erkek konnektörlü 50Ohm RG58 kablo (3 metre)     40   Adet
BNC erkek-SMB erkek konnektörlü 50Ohm RG316 kablo (3 metre)   30   Adet
AD7711 ADC Entegresi35Adet
BNC erkek-BNC erkek konnektörlü 50Ohm RG 316 kablo 5 metre    20   Adet
BNC erkek-SMA erkek konnektörlü 50Ohm RG 58 kablo  20 metre  5          Adet
BNC erkek-SMA erkek konnektörlü 50Ohm RG 316 kablo 20 metre   5  Adet
N erkek-BNC erkek konnektörlü  50Ohm RG 58 kablo 20 metre5Adet
N erkek-BNC erkek konnektörlü
50Ohm RG 316 kablo 20 metre5 Adet
Dijital Ayarli Havya3Adet
Breadboard10Adet
SMA Dişi 90 derece PCB Tipi50Adet
RG316/174 SMA Erkek Gold Konnektör 50 Adet
RG316 Dişi BNC Kablo Tipi Konnektör 20Adet
RG142 Kablo Konnektörü50Adet
RG142 Kablo100Metre
RG316 Kablo100Metre
SMA Erkek Crimp RG58 Kablo İçin Konnektör60Adet
SMB Erkek Sıkmalı Konnektör20Adet
434 MHZ Alici Verici Modül5Adet
Lantronix Seri-Ethernet dönüştürücü modülü 20Adet
ZFL-1000LN+ Düşük gürültülü yükselteç4 Adet
ZHL-1217MLN Düşük gürültülü yükselteç  2 Adet
74LVCC 3245 8 bit çift kaynaklı voltaj arayüzü alıcıvericisi 200 Adet
74LVC 1T45 çift kaynaklıvoltaj arayüzü alıcıvericisi 200 Adet
Aşırı Gerilim Koruyucusu (Surge Protector)200Adet
PCA9555A düşük voltaj I2C bus giriş çıkış portu100Adet
INA219 I2C arayüzlü çift yönlü akım/güç monitörü  20Adet','2018-03-10 09:21:58.011714',0,8,156,15,13,NULL,NULL,'');
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `personnel_personnel_type` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL, `slug` varchar(30) NOT NULL, `icon` varchar(20) NOT NULL, `color` varchar(20) NOT NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL, `total` integer NOT NULL);
INSERT INTO personnel_personnel_type VALUES(1,`Personel`,`personel`,`fa-users`,`bg-yellow`,`2018-03-02 11:09:00`,0,3);
INSERT INTO personnel_personnel_type VALUES(3,'Ziyaretçi','guest','fa-car','bg-maroon','2018-03-02 11:54:00',0,0);
INSERT INTO personnel_personnel_type VALUES(5,'Firma','company','fa-industry','bg-blue','2018-03-08 16:32:24.197818',0,2);
INSERT INTO personnel_personnel_type VALUES(6,'Stajyer','intern','fa-graduation-cap','bg-orange','2018-03-08 19:04:54.931426',0,0);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `portunes_action` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `created_date` datetime NOT NULL, `deleted` bool NOT NULL, `action_type_id` integer NULL REFERENCES `portunes_action_type` (`id`), `door_id` integer NULL REFERENCES `portunes_door` (`id`), `identifier_id` integer NULL REFERENCES `portunes_identifier` (`id`), `user_id` integer NULL REFERENCES `auth_user` (`id`));
INSERT INTO portunes_action VALUES(1,`2018-03-21 13:50:00`,0,1,4,13,46);
INSERT INTO portunes_action VALUES(2,'2018-03-21 13:51:00',0,4,3,3,62);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `generic_positions_objectposition` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `object_id` integer unsigned NOT NULL, `position` integer unsigned NULL, `content_type_id` integer NOT NULL REFERENCES `django_content_type` (`id`));
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `user_media_usermediaimage` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `object_id` integer unsigned NULL, `thumb_x` integer unsigned NULL, `thumb_x2` integer unsigned NULL, `thumb_y` integer unsigned NULL, `thumb_y2` integer unsigned NULL, `thumb_w` integer unsigned NULL, `thumb_h` integer unsigned NULL, `content_type_id` integer NULL REFERENCES `django_content_type` (`id`), `user_id` integer NOT NULL REFERENCES `auth_user` (`id`), `image` varchar(100) NULL);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `django_site` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(50) NOT NULL, `domain` varchar(100) NOT NULL UNIQUE);
INSERT INTO django_site VALUES(1,`example.com`,`example.com`);
DROP TABLE IF EXISTS ;
CREATE TABLE IF NOT EXISTS ``IF NOT EXISTS `personnel_personnel` (`id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT AUTOINCREMENT, `name` varchar(30) NOT NULL, `surname` varchar(30) NOT NULL, `country` varchar(2) NULL, `nat_id` varchar(12) NOT NULL UNIQUE, `gender` integer NOT NULL, `birth_date` date NULL, `department` varchar(30) NULL, `title` varchar(30) NULL, `job` varchar(30) NULL, `phone_number1` varchar(30) NULL, `phone_number2` varchar(30) NULL, `email` varchar(30) NULL, `address` text NULL, `marital_status` integer NOT NULL, `drive_licence` integer NOT NULL, `health_status` varchar(100) NULL, `profile_picture` varchar(100) NULL, `notes` text NULL, `cv` text NULL, `total_workday` integer NOT NULL, `total_workhour` integer NOT NULL, `total_dose` integer NOT NULL, `created_date` datetime NOT NULL, `deleted` bool NOT NULL, `personnel_type_id` integer NULL REFERENCES `personnel_personnel_type` (`id`), `user_id` integer NULL UNIQUE REFERENCES `auth_user` (`id`), `user_file` varchar(100) NULL);
INSERT INTO personnel_personnel VALUES(3,`Creworker`,`Software`,`TR`,`777`,3,`1990-05-03`,`Elektronik`,`Mühendis`,`Yazılım Mühendisi`,`+905058897974`,`+903124335643`,`bilaltonga@gmail.com`,`Bademler mah. no:2 Urla İzmir`,2,1,``,`profile_pictures/777.jpg`,`Python yazılımcısı yağız çocuk`,`<ol>
	<li>
	<p><strong>Family name: </strong>TONGA <strong> </strong></p>
	</li>
	<li>
	<p><strong>First names: </strong>Bilal<strong> </strong></p>
	</li>
	<li>
	<p><strong>Date of birth: </strong>05.03.1990</p>
	</li>
	<li>
	<p><strong>Nationality: </strong>Turkish<strong> </strong></p>
	</li>
	<li>
	<p><strong>Civil status: </strong>Married</p>
	</li>
</ol>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>Education: </strong></p>
	</li>
</ol>

<p>&nbsp;</p>

<table cellpadding=`9` cellspacing=`1` style=`width:616px`>
	<tbody>
		<tr>
			<td>
			<p>Institution</p>

			<p>[ Date from - Date to ]</p>
			</td>
			<td>
			<p>Degree(s) or Diploma(s) obtained:</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2011 &ndash; to date</p>
			</td>
			<td>
			<p>Ankara University, Faculty of Engineering, Department of Electrical and Electronics Engineering</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2010 &ndash; to date</p>
			</td>
			<td>
			<p>Anadolu University, Faculty of Economics, Department of Economics</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2008 &ndash; 2010</p>
			</td>
			<td>
			<p>Hacettepe University Faculty ofVocational School of Higher Education, Department of Industrial Electronics</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2004 &ndash; 2008</p>
			</td>
			<td>
			<p>Ulus Anatolian Vocational High School</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>Language skills:</strong> Indicate competence on a scale of 1 to 5 (1 - excellent; 5 - basic)</p>
	</li>
</ol>

<p>&nbsp;</p>

<table cellpadding=`8` cellspacing=`1` style=`width:470px`>
	<tbody>
		<tr>
			<td>
			<p>Language</p>
			</td>
			<td>
			<p>Reading</p>
			</td>
			<td>
			<p>Speaking</p>
			</td>
			<td>
			<p>Writing</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Turkish</p>
			</td>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>English</p>
			</td>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>1</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>Membership of professional bodies:</strong></p>
	</li>
</ol>

<p>&nbsp;</p>

<table cellpadding=`8` cellspacing=`1` style=`width:571px`>
	<tbody>
		<tr>
			<td>
			<p>Date from &ndash; Date to</p>
			</td>
			<td>
			<p>Society</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2014- 2016</p>
			</td>
			<td>
			<p>Ankara University Robotics and Science Society</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2011-2013</p>
			</td>
			<td>
			<p>Ankara University Mountaineering Society</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2007 - 2012</p>
			</td>
			<td>
			<p>TEMA foundation</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>Other skills:</strong> (e.g. Computer literacy, etc.)</p>

	<p>&nbsp;</p>
	</li>
</ol>

<ul>
	<li>
	<p>MS Office Applications (Word, Excel, PowerPoint)</p>
	</li>
	<li>
	<p>Microsoft Windows Desktop/Server installation and Management</p>
	</li>
	<li>
	<p>GNU/Linux Server installation and management</p>
	</li>
	<li>
	<p>MySQL Database installation and management</p>
	</li>
	<li>
	<p>Mechanics Design software: Solid works</p>
	</li>
	<li>
	<p>Electronics Design software: Proteus, Eagle, Kicad</p>
	</li>
</ul>`,0,0,0,`2018-03-05 10:09:00`,0,5,1,`personnel_pdf/EngCV-_Bilal_Tonga.pdf`);
INSERT INTO personnel_personnel VALUES(10,'mahmut','loker',NULL,'123143',1,NULL,NULL,NULL,NULL,'','',NULL,'',1,1,'','profile_pictures/profile.png','','',0,0,0,'2018-03-08 20:47:44.371226',1,6,NULL,'');
INSERT INTO personnel_personnel VALUES(11,'','',NULL,'',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-08 22:10:09.970615',1,NULL,36,'');
INSERT INTO personnel_personnel VALUES(12,'Mustafa','Dogan',NULL,'37',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.150576',0,NULL,37,'');
INSERT INTO personnel_personnel VALUES(13,'Akif','Gürer',NULL,'38',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.271943',0,NULL,38,'');
INSERT INTO personnel_personnel VALUES(14,'Melike','KAYA',NULL,'39',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.379677',0,NULL,39,'');
INSERT INTO personnel_personnel VALUES(15,'Denizhan','Erenler',NULL,'40',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.486800',0,NULL,40,'');
INSERT INTO personnel_personnel VALUES(16,'Bülent','Yılmaz',NULL,'41',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.594880',0,NULL,41,'');
INSERT INTO personnel_personnel VALUES(17,'Can','Atilla',NULL,'42',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.703523',0,NULL,42,'');
INSERT INTO personnel_personnel VALUES(18,'İbrahim','Şara',NULL,'43',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','ibrahim.sara@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.810855',0,NULL,43,'');
INSERT INTO personnel_personnel VALUES(19,'Burak','Çetindaş',NULL,'44',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','burak.cetindas@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:33.918128',0,NULL,44,'');
INSERT INTO personnel_personnel VALUES(20,'Cemile','Fidan Murat',NULL,'45',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','cemile.fidan@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.025429',0,NULL,45,'');
INSERT INTO personnel_personnel VALUES(21,'Avni','Aksoy',NULL,'46',1,NULL,NULL,NULL,NULL,'','','avni.aksoy@tarla.org.tr','',1,1,'','profile_pictures/profile.png','','',0,0,0,'2018-03-10 10:15:34.134394',0,1,46,'');
INSERT INTO personnel_personnel VALUES(22,'Sayyora','Artikova',NULL,'47',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','sayyora.artikova@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.241397',0,NULL,47,'');
INSERT INTO personnel_personnel VALUES(23,'Hatice','Duran Yıldız',NULL,'48',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','hatice.yildiz@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.348992',0,NULL,48,'');
INSERT INTO personnel_personnel VALUES(24,'Ahmet','Başaran',NULL,'49',1,NULL,NULL,NULL,NULL,NULL,NULL,'ahmet.basaran@tarla.org.tr','',1,1,'','profile_pictures/profile.png','','',0,0,0,'2018-03-10 10:15:34.456604',0,1,49,'');
INSERT INTO personnel_personnel VALUES(25,'Mehmet','Yıldız',NULL,'50',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','mehmet.yildiz@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.564168',0,NULL,50,'');
INSERT INTO personnel_personnel VALUES(26,'Hüseyin','Yıldız',NULL,'51',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','huseyin.yildiz@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.672154',0,NULL,51,'');
INSERT INTO personnel_personnel VALUES(27,'Ali','Ekber Kılınç',NULL,'52',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','aliekber.kilinc@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.780895',0,NULL,52,'');
INSERT INTO personnel_personnel VALUES(28,'Hatice','Yılmaz Alan',NULL,'53',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.887750',0,NULL,53,'');
INSERT INTO personnel_personnel VALUES(29,'Kadir','Evirgen',NULL,'54',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:34.995186',0,NULL,54,'');
INSERT INTO personnel_personnel VALUES(30,'Çağlar','Kaya',NULL,'55',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','caglar.kaya@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.103071',0,NULL,55,'');
INSERT INTO personnel_personnel VALUES(31,'Emre','Kazancı',NULL,'56',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','emre.kazanci@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.211651',0,NULL,56,'');
INSERT INTO personnel_personnel VALUES(32,'Özlem','Karslı',NULL,'57',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','ozlem.karsli@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.320554',0,NULL,57,'');
INSERT INTO personnel_personnel VALUES(33,'Mehmet','Bozdoğan',NULL,'58',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','mehmet.bozdogan@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.429561',0,NULL,58,'');
INSERT INTO personnel_personnel VALUES(34,'Burak','Koç',NULL,'59',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','burak.koc@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.536890',0,NULL,59,'');
INSERT INTO personnel_personnel VALUES(35,'Ayhan','Aydın',NULL,'60',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','ayhan.aydin@tarla.org.tr','',1,1,'','profile_pictures/profile.png','','',0,0,0,'2018-03-10 10:15:35.644577',0,1,60,'');
INSERT INTO personnel_personnel VALUES(36,'Ömer Faruk','Elçim',NULL,'61',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','omer.faruk.elcim@tarla.org.tr',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.752625',0,NULL,61,'');
INSERT INTO personnel_personnel VALUES(37,'Bilal','Tonga',NULL,'242723568322',1,NULL,NULL,NULL,NULL,NULL,NULL,'bilal.tonga@tarla.org.tr','',2,1,'health_status/242723568322.pdf','profile_pictures/242723568322.jpg','','',0,0,0,'2018-03-10 10:15:35.860363',0,5,62,'personnel_cv/242723568322.pdf');
INSERT INTO personnel_personnel VALUES(38,'System','Administrator',NULL,'63',1,NULL,NULL,NULL,NULL,'+NoneNone','+NoneNone','',NULL,1,1,'','profile_pictures/profile.png',NULL,NULL,0,0,0,'2018-03-10 10:15:35.967701',0,NULL,63,'');
CREATE INDEX `auth_group_permissions_group_id_b120cbf9` ON `auth_group_permissions` (`group_id`);
CREATE INDEX `auth_group_permissions_permission_id_84c5c92e` ON `auth_group_permissions` (`permission_id`);
CREATE INDEX `auth_user_groups_user_id_6a12ed8b` ON `auth_user_groups` (`user_id`);
CREATE INDEX `auth_user_groups_group_id_97559544` ON `auth_user_groups` (`group_id`);
CREATE INDEX `auth_user_user_permissions_user_id_a95ead1b` ON `auth_user_user_permissions` (`user_id`);
CREATE INDEX `auth_user_user_permissions_permission_id_1fbb5f2c` ON `auth_user_user_permissions` (`permission_id`);
CREATE INDEX `django_admin_log_content_type_id_c4bce8eb` ON `django_admin_log` (`content_type_id`);
CREATE INDEX `django_admin_log_user_id_c564eba6` ON `django_admin_log` (`user_id`);
CREATE INDEX `auth_permission_content_type_id_2f476e4b` ON `auth_permission` (`content_type_id`);
CREATE INDEX `easy_thumbnails_source_storage_hash_946cbcc9` ON `easy_thumbnails_source` (`storage_hash`);
CREATE INDEX `easy_thumbnails_source_name_5fe0edc6` ON `easy_thumbnails_source` (`name`);
CREATE INDEX `easy_thumbnails_thumbnail_storage_hash_f1435f49` ON `easy_thumbnails_thumbnail` (`storage_hash`);
CREATE INDEX `easy_thumbnails_thumbnail_name_b5882c31` ON `easy_thumbnails_thumbnail` (`name`);
CREATE INDEX `easy_thumbnails_thumbnail_source_id_5b57bc77` ON `easy_thumbnails_thumbnail` (`source_id`);
CREATE INDEX `django_session_expire_date_a5c62663` ON `django_session` (`expire_date`);
CREATE INDEX `menu_menu_slug_98939c4e` ON `menu_menu` (`slug`);
CREATE INDEX `menu_menuitem_menu_id_f466b139` ON `menu_menuitem` (`menu_id`);
CREATE INDEX `django_mailbox_message_mailbox_id_d60c2b04` ON `django_mailbox_message` (`mailbox_id`);
CREATE INDEX `django_mailbox_message_in_reply_to_id_296753b5` ON `django_mailbox_message` (`in_reply_to_id`);
CREATE INDEX `django_mailbox_messageattachment_message_id_3f4d2dee` ON `django_mailbox_messageattachment` (`message_id`);
CREATE INDEX `homepage_menu_item_top_menu_id_7f997b46` ON `homepage_menu_item` (`top_menu_id`);
CREATE INDEX `homepage_post_category_id_1f24ecf2` ON `homepage_post` (`category_id`);
CREATE INDEX `homepage_post_owner_id_3237d2a6` ON `homepage_post` (`owner_id`);
CREATE INDEX `inventory_category_top_category_id_5b59f995` ON `inventory_category` (`top_category_id`);
CREATE INDEX `inventory_log_item_id_5eb0c958` ON `inventory_log` (`item_id`);
CREATE INDEX `inventory_log_user_id_2cc066ab` ON `inventory_log` (`user_id`);
CREATE INDEX `inventory_item_category_id_44f2108d` ON `inventory_item` (`category_id`);
CREATE INDEX `inventory_item_inventory_id_acdc8abd` ON `inventory_item` (`inventory_id`);
CREATE INDEX `inventory_item_item_type_id_a3d5d01c` ON `inventory_item` (`item_type_id`);
CREATE INDEX `inventory_item_user_id_f563f0c1` ON `inventory_item` (`user_id`);
CREATE INDEX `inventory_inventory_location_id_a8a0866e` ON `inventory_inventory` (`location_id`);
CREATE INDEX `projectManager_project_group_id_4365078c` ON `projectManager_project` (`group_id`);
CREATE INDEX `projectManager_project_owner_id_e1dab8e9` ON `projectManager_project` (`owner_id`);
CREATE INDEX `projectManager_project_top_project_id_4a16e535` ON `projectManager_project` (`top_project_id`);
CREATE INDEX `projectManager_task_group_id_6c9eb15c` ON `projectManager_task` (`group_id`);
CREATE INDEX `projectManager_task_owner_id_341d37dd` ON `projectManager_task` (`owner_id`);
CREATE INDEX `projectManager_task_project_id_f8cfc46e` ON `projectManager_task` (`project_id`);
CREATE INDEX `projectManager_task_status_id_6bd3ee35` ON `projectManager_task` (`status_id`);
CREATE INDEX `projectManager_task_task_type_id_6cfe4452` ON `projectManager_task` (`task_type_id`);
CREATE INDEX `projectManager_task_top_task_id_07b40fec` ON `projectManager_task` (`top_task_id`);
CREATE INDEX `projectManager_comment_task_id_fde5e868` ON `projectManager_comment` (`task_id`);
CREATE INDEX `projectManager_comment_user_id_51dcecad` ON `projectManager_comment` (`user_id`);
CREATE INDEX `tarlaguard_door_entrance_id_16fb50e0` ON `tarlaguard_door` (`entrance_id`);
CREATE INDEX `tarlaguard_door_group_doors_door_group_id_823b58c7` ON `tarlaguard_door_group_doors` (`door_group_id`);
CREATE INDEX `tarlaguard_door_group_doors_door_id_997b45f8` ON `tarlaguard_door_group_doors` (`door_id`);
CREATE INDEX `tarlaguard_permission_door_id_2cb9b250` ON `tarlaguard_permission` (`door_id`);
CREATE INDEX `tarlaguard_permission_personnel_id_091a50a2` ON `tarlaguard_permission` (`personnel_id`);
CREATE INDEX `tarlaguard_action_action_type_id_621eb666` ON `tarlaguard_action` (`action_type_id`);
CREATE INDEX `tarlaguard_action_door_id_705571a3` ON `tarlaguard_action` (`door_id`);
CREATE INDEX `tarlaguard_action_identifier_id_b6fd0287` ON `tarlaguard_action` (`identifier_id`);
CREATE INDEX `tarlaguard_action_user_id_98238c36` ON `tarlaguard_action` (`user_id`);
CREATE INDEX `actionslog_logaction_object_id_a6f64b23` ON `actionslog_logaction` (`object_id`);
CREATE INDEX `actionslog_logaction_object_pk_081fbc0f` ON `actionslog_logaction` (`object_pk`);
CREATE INDEX `actionslog_logaction_content_type_id_e0f63c56` ON `actionslog_logaction` (`content_type_id`);
CREATE INDEX `actionslog_logaction_user_id_e0d85aa3` ON `actionslog_logaction` (`user_id`);
CREATE INDEX `actionslog_logaction_created_at_8609cb7b` ON `actionslog_logaction` (`created_at`);
CREATE INDEX `activity_logger_entry_location_id_970eef1e` ON `activity_logger_entry` (`location_id`);
CREATE INDEX `activity_logger_entry_path_id_88f983fd` ON `activity_logger_entry` (`path_id`);
CREATE INDEX `activity_logger_entry_user_id_5fda19b4` ON `activity_logger_entry` (`user_id`);
CREATE INDEX `auditlog_logentry_object_id_09c2eee8` ON `auditlog_logentry` (`object_id`);
CREATE INDEX `auditlog_logentry_actor_id_959271d2` ON `auditlog_logentry` (`actor_id`);
CREATE INDEX `auditlog_logentry_content_type_id_75830218` ON `auditlog_logentry` (`content_type_id`);
CREATE INDEX `auditlog_logentry_object_pk_6e3219c0` ON `auditlog_logentry` (`object_pk`);
CREATE INDEX `procurement_log_item_id_f884b78a` ON `procurement_log` (`item_id`);
CREATE INDEX `procurement_log_user_id_480380be` ON `procurement_log` (`user_id`);
CREATE INDEX `procurement_tender_end_date_tender_id_de39f1ae` ON `procurement_tender_end_date` (`tender_id`);
CREATE INDEX `testapp_invoice_customer_id_03081d62` ON `testapp_invoice` (`customer_id`);
CREATE INDEX `testapp_line_invoice_id_fd2dda01` ON `testapp_line` (`invoice_id`);
CREATE INDEX `testapp_addresses_autor_id_df8d6173` ON `testapp_addresses` (`autor_id`);
CREATE INDEX `csvimport_importmodel_csvimport_id_5a422b1c` ON `csvimport_importmodel` (`csvimport_id`);
CREATE INDEX `portunes_door_entrance_id_e6f996c6` ON `portunes_door` (`entrance_id`);
CREATE INDEX `portunes_door_group_doors_door_group_id_2c70b534` ON `portunes_door_group_doors` (`door_group_id`);
CREATE INDEX `portunes_door_group_doors_door_id_71479360` ON `portunes_door_group_doors` (`door_id`);
CREATE INDEX `portunes_permission_door_id_f883294e` ON `portunes_permission` (`door_id`);
CREATE INDEX `portunes_permission_personnel_id_1dd80209` ON `portunes_permission` (`personnel_id`);
CREATE INDEX `procurement_tender_currency_id_e985b5e8` ON `procurement_tender` (`currency_id`);
CREATE INDEX `procurement_tender_supplier_id_a44c2269` ON `procurement_tender` (`supplier_id`);
CREATE INDEX `procurement_tender_tender_status_id_38bc49e1` ON `procurement_tender` (`tender_status_id`);
CREATE INDEX `procurement_tender_tender_type_id_34a462ee` ON `procurement_tender` (`tender_type_id`);
CREATE INDEX `procurement_tender_user_id_b4693a46` ON `procurement_tender` (`user_id`);
CREATE INDEX `portunes_action_action_type_id_22364aef` ON `portunes_action` (`action_type_id`);
CREATE INDEX `portunes_action_door_id_59b65ff3` ON `portunes_action` (`door_id`);
CREATE INDEX `portunes_action_identifier_id_9566fdd6` ON `portunes_action` (`identifier_id`);
CREATE INDEX `portunes_action_user_id_05cb8e74` ON `portunes_action` (`user_id`);
CREATE INDEX `generic_positions_objectposition_content_type_id_a7f1fa19` ON `generic_positions_objectposition` (`content_type_id`);
CREATE INDEX `user_media_usermediaimage_content_type_id_4b9a6251` ON `user_media_usermediaimage` (`content_type_id`);
CREATE INDEX `user_media_usermediaimage_user_id_66e93923` ON `user_media_usermediaimage` (`user_id`);
CREATE INDEX `personnel_personnel_personnel_type_id_ceb935ac` ON `personnel_personnel` (`personnel_type_id`);
