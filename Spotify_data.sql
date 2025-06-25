USE spotify;

INSERT INTO Customer (customer_id, full_name, address, email)
VALUES ('01', 'Lamin Ann', '456 Elm St', 'lamin@example.com');

INSERT INTO Customer (customer_id, full_name, address, email)
VALUES ('02', 'Buba Cham', '457 Elm St', 'buba@example.com');

INSERT INTO Customer (customer_id, full_name, address, email)
VALUES ('03', 'Fatou Tua', '576', 'fatou@example.com');

INSERT INTO Customer (customer_id, full_name, address, email)
VALUES ('04', 'Leo Frenandez', '577 A1', 'leo@example.com');

INSERT INTO Customer (customer_id, full_name, address, email)
VALUES ('05', 'Fabio Gam', '578 A2', 'fabio@example.com');



INSERT INTO SubscriptionPlan (subscription_id, plan_name, price)
VALUES (01,'Basic Plan', 50);

INSERT INTO SubscriptionPlan (subscription_id, plan_name, price)
VALUES (02,'Premeium Plan', 100);



INSERT INTO playlist (Playlist_id, title, date_created) VALUES (1, 'SummerJam', '2023-06-01');

INSERT INTO playlist (Playlist_id, title, date_created) VALUES (2, 'Throwback Hits', '2023-04-15');

INSERT INTO playlist (Playlist_id, title, date_created) VALUES (3, 'Afro Beats', '2023-03-10');

INSERT INTO playlist (Playlist_id, title, date_created) VALUES (4, 'Workout vibz', '2022-05-20');

INSERT INTO playlist (Playlist_id, title, date_created) VALUES (5, 'RNB', '2022-06-20');



INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(1, 'God DID ', '2023-04-01', 4, 1);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(2, 'Congragulation', '2023-03-01', 3, 1);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(3, 'Monalisa', '2023-04-06', 4, 3);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(4, 'Man down', '2023-02-04', 2, 5);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(5, 'skelelu', '2022-01-02', 4, 3);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(6, 'Energy', '2023-07-01', 4, 4);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(7, 'Littl Birds', '2023-04-01', 3, 2);

INSERT INTO Content (content_id, content_title, release_date, rating, playlist_id)
VALUES(8, 'Pull UP', '2023-02-03', 4, 5);



INSERT INTO  Owned (set_price , customer_id, content_id, release_date, content_title) VALUES (6.0, '01', 1, '2023-04-01', 'God DID ');

INSERT INTO  Owned (set_price , customer_id, content_id, release_date, content_title) VALUES (7.2, '02', 6, '2023-07-01', 'Energy');

INSERT INTO  Owned (set_price , customer_id, content_id, release_date, content_title) VALUES (9, '05', 3, '2023-04-06', 'Monalisa');

INSERT INTO  Owned (set_price , customer_id, content_id, release_date, content_title) VALUES (8, '02', 4, '2023-02-04', 'Man down');

INSERT INTO  Owned (set_price , customer_id, content_id, release_date, content_title) VALUES (8.5, '04', 7, '2023-04-01', 'Littl Birds');

INSERT INTO  Owned (set_price , customer_id, content_id, release_date, content_title) VALUES (5, '03', 2, '2023-03-01', 'Congragulation');


INSERT INTO rated (customer_id, content_id, user_rating ,release_data) VALUES ('01', 1, 5, '2023-04-01');

INSERT INTO rated (customer_id, content_id, user_rating ,release_data) VALUES ('02', 3, 4, '2023-04-06');

INSERT INTO rated (customer_id, content_id, user_rating ,release_data) VALUES ('03', 2, 4, '2023-03-01');

INSERT INTO rated (customer_id, content_id, user_rating ,release_data) VALUES ('04', 8, 3, '2023-02-03');

INSERT INTO rated (customer_id, content_id, user_rating ,release_data) VALUES ('05', 8, 3, '2023-02-03');



INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (01, 1,'00:25:43', 'Mobile','2023-04-01', 'God DID ');

INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (02, 1,'00:20:41', 'MP3','2023-04-01', 'God DID ');

INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (04, 2,'00:23:43', 'Laptop','2023-03-01', 'Congragulation');

INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (05, 6,'00:23:43', 'Laptop','2023-07-01', 'Energy');

INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (03, 6,'00:23:43', 'MP3','2023-07-01', 'Energy');

INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (01, 7,'00:23:43', 'Laptop','2023-04-01', 'Littl Birds');

INSERT INTO listen_to (customer_id, content_id, time_listened ,device_use, release_date, content_title) VALUES   (01, 8,'00:23:43', 'Mobile','2023-02-03', 'Pull UP');



INSERT INTO subscribe (customer_id, subscription_id, plan_name, start_date, end_date) VALUES (01, 01,'Basic Plan', '2023-01-01', '2023-01-31');

INSERT INTO subscribe (customer_id, subscription_id, plan_name, start_date, end_date) VALUES (02, 02,'Premeium Plan', '2023-01-01', '2023-03-31');

INSERT INTO subscribe (customer_id, subscription_id, plan_name, start_date, end_date) VALUES (03, 02,'Premeium Plan', '2023-02-01', '2023-03-31');

INSERT INTO subscribe (customer_id, subscription_id, plan_name, start_date, end_date) VALUES (01, 02,'Premeium Plan', '2023-03-01', '2023-03-31');

INSERT INTO subscribe (customer_id, subscription_id, plan_name, start_date, end_date) VALUES (04, 02,'Basic Plan', '2023-04-01', '2023-04-30');



INSERT INTO createe (customer_id , playlist_id , playlist_title) VALUES (01,1, 'SummerJam');

INSERT INTO createe (customer_id , playlist_id , playlist_title) VALUES (01,2, 'Throwback Hits');

INSERT INTO createe (customer_id , playlist_id , playlist_title) VALUES (02,3,'Afro Beats');

INSERT INTO createe (customer_id , playlist_id , playlist_title) VALUES (05,4, 'Workout vibz');

INSERT INTO createe (customer_id , playlist_id , playlist_title) VALUES (03,5, 'RNB');


INSERT INTO content_type (id,type_name) VALUES (1,'Podcast');

INSERT INTO content_type (id,type_name) VALUES (2,'Audiobook');

INSERT INTO content_type (id,type_name) VALUES (3,'livestream');

INSERT INTO content_type (id,type_name) VALUES (4,'Radio');

INSERT INTO content_type (id,type_name) VALUES (5,'user-created audio tracks');

INSERT INTO content_type (id,type_name) VALUES (6,'Music');



INSERT INTO content_to_type (content_id,type_id) VALUES (1,1);

INSERT INTO content_to_type (content_id,type_id) VALUES (3,6);

INSERT INTO content_to_type (content_id,type_id) VALUES (8,1);

INSERT INTO content_to_type (content_id,type_id) VALUES (5,3);

INSERT INTO content_to_type (content_id,type_id) VALUES (2,4);

INSERT INTO content_to_type (content_id,type_id) VALUES (4,5);

INSERT INTO content_to_type (content_id,type_id) VALUES (6,2);



INSERT INTO content_genre (id,Genre_name) VALUES (1,'AFRO');

INSERT INTO content_genre (id,Genre_name) VALUES (2,'ROCK');

INSERT INTO content_genre (id,Genre_name) VALUES (3,'Hip Hop');

INSERT INTO content_genre (id,Genre_name) VALUES (4,'R&B');

INSERT INTO content_genre (id,Genre_name) VALUES (5,'AMPIANO');

INSERT INTO content_genre (id,Genre_name) VALUES (6,'NDAGA');

INSERT INTO content_genre (id,Genre_name) VALUES (7,'LATINO');


INSERT INTO content_to_genre (content_id, genre_id) VALUES (1,5);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (2,3);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (3,1);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (4,5);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (5,6);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (6,1);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (7,7);

INSERT INTO content_to_genre (content_id, genre_id) VALUES (8,4);



INSERT INTO access_type(id,Type_name) VALUES (1,'Free');
INSERT INTO access_type(id,Type_name) VALUES (2,'One time access');
INSERT INTO access_type(id,Type_name) VALUES (3,'subscription Based');


INSERT INTO content_to_access_type (content_id,Type_id) VALUES (1,1);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (2,3);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (3,2);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (4,3);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (5,3);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (6,1);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (7,2);

INSERT INTO content_to_access_type (content_id,Type_id) VALUES (8,1);



INSERT INTO playlist_privacy (id,privacy_name) VALUES (1,'Public');
INSERT INTO playlist_privacy(id,privacy_name) VALUES (2,'Private');


INSERT INTO playlist_to_playlist_privacy (playlist_id,privacy_name_id) VALUES (1,2);

INSERT INTO playlist_to_playlist_privacy (playlist_id,privacy_name_id) VALUES (2,2);

INSERT INTO playlist_to_playlist_privacy (playlist_id,privacy_name_id) VALUES (3,1);

INSERT INTO playlist_to_playlist_privacy (playlist_id,privacy_name_id) VALUES (4,2);

INSERT INTO playlist_to_playlist_privacy (playlist_id,privacy_name_id) VALUES (5,1);



INSERT INTO PaymentMethod_type (id,Paymentt_Method_type_name) VALUES (1,'Credit Card');
     
INSERT INTO PaymentMethod_type (id,Paymentt_Method_type_name) VALUES (2,'Debit Card');
    
INSERT INTO PaymentMethod_type (id,Paymentt_Method_type_name) VALUES (3,'Bank Transfer');


INSERT INTO subscription_to_payment_method_type (Subscription_id,Paymentt_Method_type_name_id) VALUES (02,2);


INSERT INTO subscription_to_payment_method_type (Subscription_id,Paymentt_Method_type_name_id) VALUES (02,1);

INSERT INTO subscription_to_payment_method_type (Subscription_id,Paymentt_Method_type_name_id) VALUES (01,3);


INSERT INTO plan_type (id,Plan_type_name) VALUES (1,'Individual');

INSERT INTO plan_type(id,Plan_type_name) VALUES (2,'Family');

INSERT INTO plan_type(id,Plan_type_name) VALUES (3,'Artist');



INSERT INTO subscription_to_plan_type (Subscription_id,Plan_type_name_id) VALUES (01, 1);

INSERT INTO subscription_to_plan_type (Subscription_id,Plan_type_name_id) VALUES (02, 2);

INSERT INTO subscription_to_plan_type (Subscription_id,Plan_type_name_id) VALUES (02, 3);







