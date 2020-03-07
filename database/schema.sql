DROP DATABASE IF EXISTS Wevent;
CREATE DATABASE Wevent;
USE Wevent;
CREATE TABLE users (
	user_id int NOT NULL AUTO_INCREMENT UNIQUE,
	display_name varchar(255) NOT NULL UNIQUE,
	password_hash varchar(255) NOT NULL,
	location_state varchar(255) NOT NULL,
	location_city varchar(255) NOT NULL,
	PRIMARY KEY (user_id)
);
CREATE TABLE events (
	event_id int NOT NULL AUTO_INCREMENT unique,
	host_id int NOT NULL,
	title varchar(255) NOT NULL,
	description TEXT NOT NULL,
	date DATE NOT NULL,
	time TIME NOT NULL,
	price FLOAT,
	private BOOLEAN NOT NULL,
	address_1 varchar(255) NOT NULL,
	address_2 varchar(255) NOT NULL,
	city varchar(255) NOT NULL,
	state varchar(255) NOT NULL,
	zipcode int(5) NOT NULL,
	attendance_max int,
	attendance_current int,
	PRIMARY KEY (event_id)
);
CREATE TABLE categories (
	category_id int NOT NULL AUTO_INCREMENT UNIQUE,
	category_name varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (category_id)
);
CREATE TABLE states (
	state_id int NOT NULL AUTO_INCREMENT,
	state_name varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (state_id)
);
CREATE TABLE users_events_attending (
	user_id int NOT NULL,
	event_id int NOT NULL,
	pending BOOLEAN NOT NULL
);
CREATE TABLE events_categories (
	event_id int NOT NULL,
	category_id int NOT NULL
);

ALTER TABLE events ADD CONSTRAINT events_fk0 FOREIGN KEY (host_id) REFERENCES users(user_id);
ALTER TABLE users_events_attending ADD CONSTRAINT users_events_attending_fk0 FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE users_events_attending ADD CONSTRAINT users_events_attending_fk1 FOREIGN KEY (event_id) REFERENCES events(event_id);
ALTER TABLE events_categories ADD CONSTRAINT events_categories_fk0 FOREIGN KEY (event_id) REFERENCES events(event_id);
ALTER TABLE events_categories ADD CONSTRAINT events_categories_fk1 FOREIGN KEY (category_id) REFERENCES categories(category_id);

INSERT INTO categories (category_name) values ("Arts and Culture"), ("Outdoors"), ("Fitness"),("Wellness and Health"),("Business"),("Food and Eating"),("Animals and Pets"),("Social"),("Sports"),("Religion");
INSERT INTO states (state_name) values ("AK"),("AL"),("AR"),("AZ"),("CA"),("CO"),("CT"),("DE"),("FL"),("GA"),("HI"),("IA"),("ID"),("IL"),("IN"),("KS"),("KY"),("LA"),("MA"),("MD"),("ME"),("MI"),("MN"),("MO"),("MS"),("MT"),("NC"),("ND"),("NE"),("NH"),("NJ"),("NM"),("NV"),("NY"),("OH"),("OK"),("OR"),("PA"),("RI"),("SC"),("SD"),("TN"),("TX"),("UT"),("VA"),("VT"),("WA"),("WI"),("WV"),("WY");
INSERT INTO users (display_name, password_hash, location_state, location_city) values ("Turner72","UzD808334mSrvti","TX","Austin"),("Abigail.Hilpert","aozif1frs28v1FO","TX","Austin"),("Madyson_Runolfsson","LDGu5t_cFUPFl_q","TX","Austin"),("Augusta7","qFsKOPhbfkvOmoF","TX","Austin"),("Chasity20","QPKfo8pjApHwo45","TX","Austin"),("Consuelo_Lubowitz17","QXKH3L78Ddhzo9m","TX","Austin"),("Kathlyn.Lind","mRFeGIWXfsNCnii","TX","Austin"),("Layla_Torp","vRbW4cwisYQlkZV","TX","Austin"),("Beryl37","hc29xnlKv_G9qBM","TX","Austin"),("Amely_Kertzmann","OyPFqte5t6LwFCA","TX","Austin"),("Maurine.Homenick62","QHlth72w1eYCtQh","TX","Austin"),("Kobe_Brekke9","7K1_YqaFp3Za5pw","TX","Austin"),("Cletus_Yundt","jprf8btn8RnC71E","TX","Austin"),("Eldon.Altenwerth83","f4DkqmS_7dNwHuM","TX","Austin"),("Kaitlin60","9aS5w9044Q8qKm9","TX","Austin"),("Lyla_Considine66","rv4kLemoEt0noZo","TX", "San Antonio"),("Hollie_Lockman51","AFz1mVVrQ3Ts20A","TX", "San Antonio"),("Johnathan_Purdy37","ZJWhNMmGqetxUgu","TX", "San Antonio"),("Carrie_DuBuque76","wkR8j0oo1j0C0Kh","TX", "San Antonio"),("Lea.Volkman67","xAYS2jmsx6chxdY","TX", "San Antonio");
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (11,"Tasty Soft Sausages","Ut et unde exercitationem. Architecto recusandae corrupti eos est non rem est qui id. Nemo eius laudantium dolorem cum. Unde autem sint iste sed non reiciendis. Dolorem delectus eos perspiciatis cum voluptatem dignissimos aut. Ut nemo atque et ut laborum omnis et est culpa.","2020-03-09","07:43:45","0.58",1,"582 Reva Well","Apt. 620","Austin","TX",08014,12,11);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (8,"Incredible Granite Ball","Voluptatem nihil impedit culpa aliquam amet et aut aut sed. Iure similique rerum esse. Quaerat facere quia et est sit voluptates id. Labore et quis error molestias placeat fugit fugit aspernatur.<br /><br />In temporibus labore aut non veritatis quia perferendis. Consequatur repellat enim esse et dolor. Odit porro ab et nihil ipsam ut.<br /><br />Veniam modi illo. Earum consequatur officia ratione itaque praesentium vero veritatis nemo. Perspiciatis dolor nisi voluptatem repellat eveniet assumenda odit qui. Aut aut fugiat itaque. Est assumenda quaerat aut praesentium dolores et. Illo ut et in et sequi officia fugiat.","2020-03-14","07:27:42","15.52",1,"91725 Victoria Roads","Apt. 089","Austin","TX",59279,10,5);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (19,"Small Wooden Ball","Est omnis debitis voluptate omnis aliquam eos quis. Ut qui est voluptatem. Voluptatem distinctio quibusdam possimus.<br /><br />Modi rerum commodi sed hic officia dolorem sapiente accusantium consequatur. In autem omnis excepturi provident delectus necessitatibus. Animi minima enim. Id pariatur voluptas. Velit laborum id.<br /><br />Blanditiis neque velit unde accusantium aut ut assumenda velit est. Omnis quis iure nostrum iure ut neque eligendi est. Totam vero quidem fuga accusantium. Et cumque et.<br /><br />Nostrum sunt accusamus necessitatibus delectus. Sit illo eum amet sit aut pariatur. Eligendi nisi pariatur praesentium accusamus quae et blanditiis. Aut voluptas eius eligendi veritatis recusandae doloribus voluptatem. Laboriosam harum eos consequatur ducimus autem ut neque dolores.<br /><br />Numquam est veniam. Recusandae qui quia voluptatem quis similique. Voluptatem voluptate vel numquam qui odit aliquam voluptas in. Nostrum qui inventore sit id repellat. Porro a unde alias voluptatem necessitatibus aliquid commodi qui asperiores.","2020-03-13","13:57:38","16.68",1,"9371 Pasquale Pass","Suite 513","Austin","TX",96418,10,5);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (10,"Refined Concrete Car","Facere tempora veniam nihil quos et vero cumque. Quo illo voluptatem natus suscipit quos voluptatibus. Tempore nihil voluptas ut unde.<br /><br />Nihil qui earum quasi quidem facilis provident. Occaecati dolores dignissimos molestias ut ut aut ea odit nobis. Repellendus explicabo reiciendis ipsa.<br /><br />Occaecati magni rerum autem. Harum eligendi nihil voluptatibus et. Neque veniam cupiditate nulla commodi. Cum sunt numquam illum accusamus ut placeat. Odit exercitationem quos quae.<br /><br />Et placeat dolorum eaque voluptas et unde veritatis. Ut dolores in qui illum esse. Autem reiciendis illo modi ipsam rerum illo et officiis molestiae. Ut magni qui omnis et assumenda quasi.","2020-03-23","20:10:41","17.83",1,"519 Erik Run","Suite 311","Austin","TX",54814,15,10);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (20,"Handmade Metal Pants","Omnis commodi ut voluptatibus laudantium. Voluptates aut dolorum autem eos assumenda saepe ex. Nostrum nesciunt corporis. Aut et dignissimos quis ipsum. Optio commodi veritatis esse libero rerum sint qui ullam ab.<br /><br />Est laboriosam laboriosam odit consequatur rem nesciunt vel autem et. Aut repellat culpa iure assumenda. Ducimus harum doloribus veniam enim nesciunt molestiae et et. Aut velit dignissimos incidunt aut rerum illum illum.","2020-03-30","14:48:27","5.84",1,"944 Thad Coves","Apt. 164","Austin","TX",90656,14,8);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (1,"Handmade Steel Towels","Odio recusandae accusantium. Non illum quo vitae consequatur est ut sit deserunt. Reiciendis aut neque eum fugit perferendis.","2020-03-17","08:47:07","0.47",1,"847 Kulas Rest","Apt. 437","Austin","TX",56088,10,10);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (17,"Rustic Steel Ball","Ea deserunt officia voluptas dolorem commodi. Et asperiores eaque est. Fugiat ut labore sit veritatis autem rem et laboriosam.<br /><br />Ducimus quia cum tenetur tempora. Cupiditate ab aut quo distinctio dolorem est voluptates. Libero omnis eum. Omnis inventore quia quasi tempora cum eveniet et et sequi. Quos aperiam sit beatae eius impedit incidunt ullam voluptas sed. At facilis a ea excepturi qui tempora et.<br /><br />Consequatur doloremque occaecati deserunt illo. Autem sit ratione quasi fugit velit et quos sint provident. Sequi ducimus quisquam possimus sapiente error. Quaerat quis mollitia quaerat. Enim sint suscipit. Ut commodi quas aspernatur soluta sed.<br /><br />Illum cumque sapiente sunt omnis et. Est qui sit minus dignissimos non repellendus sed praesentium. Eaque voluptatem sequi ut tenetur saepe quam explicabo porro quia. Consequatur accusantium aut animi. Tenetur et a excepturi.<br /><br />Sed ea sint. Quam voluptatem rerum maiores impedit voluptas dolor. Ullam sapiente pariatur cupiditate aperiam ipsam exercitationem et. Voluptas laudantium sit perspiciatis aperiam minus quia. Impedit id porro repudiandae sunt exercitationem nobis quam architecto quis.","2020-03-17","04:09:40","2.26",0,"25774 Rosanna Expressway","Suite 293","Austin","TX",63141,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (17,"Awesome Frozen Hat","Explicabo ut deserunt minus reprehenderit omnis voluptatem. Rerum distinctio dolore aut quam consequuntur nihil voluptas illum. Dignissimos nisi repellat. Sit et ea consequatur nam sed illum ducimus sed. Cupiditate sequi dolorum nisi molestiae et adipisci. Ducimus corporis rem nobis ut commodi reiciendis occaecati laboriosam.<br /><br />In accusamus earum rerum deserunt quisquam qui. Veritatis voluptatem fugit accusamus sit. Asperiores officia accusamus occaecati ut facilis. Quasi autem placeat quod eius corrupti voluptas.<br /><br />Veritatis aperiam asperiores ullam ut ratione voluptatem. Amet quis aliquid et sit sed ut. Non est quos. Dolor sint qui quas sequi rerum. Et vero qui ut tenetur eos voluptates. Architecto in et sunt omnis sed velit qui alias expedita.<br /><br />Non est quaerat. Doloremque vero asperiores unde adipisci repudiandae iusto enim. Velit est libero deserunt et delectus. Sint harum eum sed dolorem.","2020-03-11","17:40:38","5.42",0,"0189 Diana River","Suite 182","Austin","TX",74935,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (14,"Handcrafted Metal Shirt","Totam placeat nam consequatur quia possimus laboriosam consequatur praesentium. Quod sunt eum modi commodi velit ipsa voluptas. Quaerat vero pariatur aperiam exercitationem.<br /><br />Sint aliquid quod. Quis provident in rerum adipisci. Rerum modi corrupti aut.","2020-03-22","18:53:29","13.84",0,"64999 Feest Road","Apt. 802","Austin","TX",25444,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (17,"Fantastic Frozen Table","Culpa qui labore aliquid quaerat esse fuga similique quod in. Quaerat delectus unde reiciendis est voluptas quas. Ut voluptatibus dolorem sed. Animi aut nobis natus ullam. Nesciunt sit tenetur non neque quaerat voluptas doloribus.","2020-03-17","20:17:40","19.10",0,"140 Schaefer Viaduct","Suite 512","Austin","TX",28683,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (17,"Gorgeous Wooden Towels","Quibusdam sunt eius harum et adipisci facere odit. Aut sed expedita. Qui fuga sed nihil dolor ipsum et eum. Debitis omnis aliquam quo. Tempora non voluptatem ut laudantium quos deleniti. Tempora doloremque sed ut.<br /><br />Odit ipsum unde. Et minima itaque voluptatem ducimus fuga. Totam explicabo nemo et aut ea. Eum necessitatibus iusto qui tempora possimus porro dolorem. Nam qui esse dolor suscipit.<br /><br />Qui quos fugit rerum. Sit cumque et minus et quidem. Aut impedit asperiores.<br /><br />Soluta expedita rerum ea illum autem deleniti. Ducimus quis ea architecto dolores est. Porro sit consequatur delectus amet doloremque qui rerum. Omnis inventore ad saepe adipisci ut rerum dolores optio.<br /><br />Reiciendis error tempore voluptates nemo eos. Vel repellat est et numquam. Harum eaque nostrum voluptatum officia veritatis in. Illum ratione dolorem nihil alias est quam ea exercitationem. Odit voluptatem tempore quo voluptatibus voluptatem eum aut. Aperiam quae ipsam et vero voluptas exercitationem suscipit ipsum.","2020-03-14","02:21:17","0.70",0,"580 Broderick Squares","Suite 930","Austin","TX",11503,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (16,"Tasty Concrete Table","Deserunt libero autem voluptatem veritatis ducimus dicta ipsam. Cum esse quae est mollitia asperiores. Maiores occaecati blanditiis quia aliquam quis. Animi natus veritatis perspiciatis quasi ex et.<br /><br />Corporis dignissimos aperiam et officia sunt ab quas. Pariatur aut quia. Illo minus asperiores ut et. Porro est et voluptas tempora. Recusandae explicabo voluptatem et et nulla. Dolorem molestiae delectus reiciendis dignissimos et.<br /><br />Harum omnis ea atque. Adipisci expedita vel nisi dicta veniam ut ipsam. Eligendi omnis commodi. Maxime quos deserunt itaque hic consequuntur exercitationem earum eaque.<br /><br />Quo impedit hic quis aut. Quo aut assumenda id ut accusantium. Ab voluptatum voluptatibus dolore vel et est voluptas consequatur.<br /><br />Ut adipisci doloribus voluptas consequatur dolores autem est consequatur. Excepturi velit voluptate libero. Voluptates voluptatem repudiandae et voluptatem cum aut. Temporibus temporibus a recusandae officia et fugit.","2020-03-26","02:31:02","13.04",0,"0634 Trantow Station","Apt. 805","Austin","TX",48598,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (20,"Small Frozen Pants","Modi unde eaque officia quia sit iste non iste sed. Eum maxime iusto voluptatem enim ut. Cumque autem quidem deserunt. Error architecto omnis ipsa dolorem nesciunt quos non provident inventore. Eveniet quis eum repudiandae vel modi doloremque voluptates.<br /><br />Delectus consectetur alias modi saepe aut. Tempore aut laudantium alias cupiditate adipisci quia et. Est unde fugit atque iure aliquam.<br /><br />Ipsum nesciunt recusandae aut quas in omnis omnis aut. Rerum voluptatem voluptatem voluptatibus minima tempore nulla quis in ratione. Et harum repellat. Illum cumque vel ea. Fugit est enim quo et. Dolorem quisquam vel sed.","2020-03-28","17:37:28","2.25",1,"7270 Cortney Roads","Suite 473","San Antonio","TX",28184,16,12);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (9,"Refined Plastic Table","Nam quos vero praesentium id error reiciendis. Ea sapiente qui et id a et. Et doloremque est rem nulla facere asperiores repellendus ducimus sit.<br /><br />Omnis dolor illum quaerat. Optio cum voluptatibus. Quas labore dicta et laborum labore impedit id accusamus et.<br /><br />Et sint deleniti similique nemo alias est. Dolores cum et dicta amet amet. Eveniet occaecati sunt est porro labore nemo id placeat. Et maiores aspernatur qui autem atque id sunt dolores. Eligendi enim occaecati.<br /><br />Magnam culpa architecto magnam consequatur molestiae nobis provident placeat. Cupiditate ut facere est. Reprehenderit est eligendi aliquam. Fugiat provident adipisci aut sed distinctio ipsam est dolor soluta. Aspernatur voluptatem consectetur eligendi enim vitae rerum mollitia tempora.<br /><br />Rerum harum natus est totam molestiae non. Quos pariatur et nulla neque eligendi aut modi. Repudiandae laboriosam voluptatibus consequuntur dolor ut sed. Quisquam placeat et non. Rerum enim ut asperiores nisi. Excepturi eveniet vel et incidunt vel molestiae sunt repellendus.","2020-03-13","18:40:51","18.65",1,"766 Osinski Haven","Suite 107","San Antonio","TX",75153,3,3);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (6,"Unbranded Soft Bacon","Minus molestias in rem repellendus delectus dolorum itaque. Rem dolor adipisci possimus iure eum repudiandae inventore. Consequatur ipsum et maxime et qui est et aut iure. Doloremque nobis sequi eligendi qui.<br /><br />Voluptatem a maiores. Provident numquam illum quam blanditiis. Cum est corporis cum.<br /><br />Aut suscipit quae natus molestiae autem. Officiis maiores omnis in maiores et ea. Sequi ipsum aut quia perferendis sunt soluta. Est ab libero aperiam sint fugit. Sed exercitationem sint. Ad recusandae libero quis similique.<br /><br />Perferendis quos cupiditate similique voluptatem consectetur natus. Enim soluta fugiat et repudiandae quis impedit est et. Vel facilis accusamus sunt voluptas et. Ullam cum et ipsum quos ratione dolore voluptatem omnis. Fuga qui iste.<br /><br />Quas error adipisci. Iure nulla aut. Consequatur dolorem mollitia beatae. Dolores laborum est sunt aliquam.","2020-03-19","00:59:07","12.16",1,"1911 Kovacek Course","Suite 424","San Antonio","TX",02127,15,12);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (3,"Tasty Steel Pants","Reprehenderit mollitia incidunt consequatur deleniti illum sapiente ea. Necessitatibus sunt fuga eaque possimus quis veritatis id quia dolor. Culpa eos officia et debitis corrupti. Sunt non dolorem maxime ipsam magnam nihil pariatur sed vero. Corporis molestiae soluta. Neque quas alias et quo.","2020-03-12","00:18:19","16.46",0,"2774 Kautzer Haven","Suite 408","San Antonio","TX",82247,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (13,"Intelligent Rubber Keyboard","Quos ut ex quaerat soluta harum. Aut natus aut perferendis consectetur iste nostrum. Mollitia aliquid est. Nostrum rerum dolores autem molestiae placeat eaque dolor.<br /><br />Nisi odio blanditiis laudantium rerum. Sed nihil minus vitae reprehenderit doloremque nam eos doloremque. Impedit corporis et cum. Numquam cum dolore rerum omnis est quidem totam eum et.<br /><br />Ut culpa autem praesentium et at aperiam. Ea aliquid ea architecto quos illum. Sunt qui illo in velit quis recusandae non. Autem reiciendis ab.<br /><br />Aliquam totam aperiam libero et ducimus officiis fugit est aut. Hic odio nostrum. Eum aut et assumenda cumque dolore rerum illo officia.<br /><br />Autem aut qui harum. Aperiam occaecati pariatur illum. Et optio hic ipsum sint voluptatem consectetur provident sapiente quaerat. Minus velit corporis ut ratione sed. Necessitatibus et sunt voluptatem perspiciatis. Id dolor illo dolor qui voluptatem ad.","2020-03-12","14:50:38","5.25",0,"2086 Carroll Prairie","Apt. 089","San Antonio","TX",28599,NULL,NULL);
INSERT INTO events (host_id, title, description, date, time, price, private, address_1, address_2, city, state, zipcode, attendance_max, attendance_current) values (13,"Gorgeous Steel Keyboard","Suscipit at debitis. Et ut qui nobis. Reprehenderit fugit nesciunt consequatur beatae delectus non. Quasi deserunt vero.<br /><br />Fugit rerum officiis explicabo cupiditate rem temporibus in. Omnis nobis atque ad consequatur enim eum tenetur non qui. Occaecati in eligendi saepe sequi rerum asperiores. Deserunt ducimus sit rerum amet. Vel quis vel amet ea eum aliquam. Magnam dolores praesentium provident numquam.<br /><br />Esse quod facilis dolorum veritatis omnis. Officia eius tempore consequuntur. Iure et consequatur repudiandae. Aliquid culpa reprehenderit minima saepe minus. Sed et sint sed nihil. Ea quae explicabo sit illum nostrum ad.<br /><br />Alias libero et eum iste ut non dolores magni. Qui aut non ut iure nemo unde. Et aliquid qui et cupiditate distinctio nisi.<br /><br />Porro et ad autem aut itaque ducimus libero ex. Necessitatibus ut illum veniam. Delectus esse illum sint ut. Nostrum alias blanditiis possimus earum qui. Labore ipsam sunt et assumenda nisi expedita sed eaque qui. Maxime harum provident quod eos ut exercitationem.","2020-03-21","13:46:22","17.43",0,"28304 Justen Highway","Suite 509","San Antonio","TX",62444,NULL,NULL);
INSERT INTO events_categories (event_id, category_id) values (1, 3),(1, 9),(1, 7),(2, 1),(2, 10),(3, 2),(3, 10),(3, 9),(3, 3),(3, 6),(4, 2),(4, 5),(5, 3),(6, 9),(6, 5),(7, 8),(7, 10),(8, 5),(8, 8),(9, 1),(9, 9),(9, 2),(10, 3),(10, 6),(10, 2),(11, 2),(12, 6),(13, 7),(14, 2),(14, 10),(15, 4),(15, 1),(16, 5),(17, 6),(17, 5),(17, 7),(18, 1),(18, 2);
INSERT INTO users_events_attending (user_id, event_id, pending) values (12, 1, 0),(8, 1, 0),(6, 1, 0),(7, 1, 0),(5, 1, 0),(1, 1, 0),(9, 1, 0),(15, 1, 0),(14, 1, 0),(3, 1, 0),(17, 1, 0),(4, 1, 1),(19, 1, 1);
INSERT INTO users_events_attending (user_id, event_id, pending) values (11, 2, 0),(2, 2, 0),(7, 2, 0),(6, 2, 0),(4, 2, 0),(17, 2, 1);
INSERT INTO users_events_attending (user_id, event_id, pending) values (10, 3, 0),(3, 3, 0),(6, 3, 0),(8, 3, 0),(17, 3, 0),(11, 3, 1),(7, 3, 1),(18, 3, 1),(2, 3, 1),(9, 3, 1),(15, 3, 1);
INSERT INTO users_events_attending (user_id, event_id, pending) values (8, 4, 0),(2, 4, 0),(16, 4, 0),(5, 4, 0),(14, 4, 0),(9, 4, 0),(3, 4, 0),(12, 4, 0),(4, 4, 0),(13, 4, 0);
INSERT INTO users_events_attending (user_id, event_id, pending) values (5, 5, 0),(6, 5, 0),(10, 5, 0),(18, 5, 0),(4, 5, 0),(1, 5, 0),(2, 5, 0),(16, 5, 0),(19, 5, 1);
INSERT INTO users_events_attending (user_id, event_id, pending) values (3, 6, 0),(4, 6, 0),(2, 6, 0),(16, 6, 0),(17, 6, 0),(14, 6, 0),(5, 6, 0),(13, 6, 0),(7, 6, 0),(9, 6, 0);
INSERT INTO users_events_attending (user_id, event_id, pending) values (14, 13, 0),(6, 13, 0),(3, 13, 0),(18, 13, 0),(17, 13, 0),(5, 13, 0),(8, 13, 0),(1, 13, 0),(9, 13, 0),(7, 13, 0),(15, 13, 0),(4, 13, 0),(19, 13, 1),(10, 13, 1);
INSERT INTO users_events_attending (user_id, event_id, pending) values (3, 14, 0),(18, 14, 0),(12, 14, 0);
INSERT INTO users_events_attending (user_id, event_id, pending) values (7, 15, 0),(20, 15, 0),(17, 15, 0),(11, 15, 0),(3, 15, 0),(19, 15, 0),(5, 15, 0),(10, 15, 0),(12, 15, 0),(2, 15, 0),(16, 15, 0),(13, 15, 0),(14, 15, 1),(9, 15, 1);