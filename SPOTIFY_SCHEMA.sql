DROP DATABASE IF EXISTS spotify;

CREATE DATABASE spotify;

USE spotify;



CREATE TABLE Customer (
    customer_id INT PRIMARY KEY auto_increment NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    address VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE SubscriptionPlan (
    subscription_id INT PRIMARY KEY auto_increment NOT NULL,
    plan_name VARCHAR(255) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE playlist (
 Playlist_id INT PRIMARY KEY NOT NULL ,
 title VARCHAR(255) NOT NULL,
 date_created DATE NOT NULL
);


CREATE TABLE Content (
    content_id INT PRIMARY KEY,
    content_title VARCHAR(100),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    release_date DATE,
    playlist_id INT,
    FOREIGN KEY (playlist_id) REFERENCES Playlist(playlist_id)
);
CREATE TABLE rated (
    user_rating INT NOT NULL,
    release_data VARCHAR(255) NOT NULL,
    content_id INT NOT NULL,
    customer_id INT NOT NULL,
    CHECK (user_rating >= 1 AND user_rating <= 5),
    FOREIGN KEY (content_id) REFERENCES content(content_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    PRIMARY KEY (content_id, customer_id)
);

CREATE TABLE Owned (
    set_price INT NOT NULL,
    customer_id INT NOT NULL,
    content_id INT NOT NULL,
    content_title VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    PRIMARY KEY (content_id, customer_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id)
);

CREATE TABLE Listen_to (
    customer_id INT,
    content_id INT,
    content_title VARCHAR(100),
    release_date DATE,
    time_listened time NOT NULL,
    device_use VARCHAR(50),
    PRIMARY KEY (customer_id, content_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id)
);

CREATE TABLE Subscribe (
    customer_id INT NOT NULL auto_increment,
    subscription_id INT NOT NULL,
    plan_name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (customer_id, subscription_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (subscription_id) REFERENCES SubscriptionPlan(subscription_id)
);

CREATE TABLE createe (
    customer_id INT NOT NULL auto_increment,
    playlist_id INT PRIMARY KEY NOT NULL,
    playlist_title VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE content_type (
    id INT NOT NULL AUTO_INCREMENT,
    Type_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (Type_name)
);

CREATE TABLE content_to_type (    
    content_id INT NOT NULL,
    type_id INT NOT NULL,
    FOREIGN KEY (content_id) REFERENCES content(content_id),
    FOREIGN KEY (type_id) REFERENCES content_type(id)
);



CREATE TABLE content_genre (
    id INT NOT NULL AUTO_INCREMENT,
    Genre_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (Genre_name)
);

CREATE TABLE content_to_genre (    
    content_id INT NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN KEY (content_id) REFERENCES content(content_id),
    FOREIGN KEY (genre_id) REFERENCES content_genre(id)
);


CREATE TABLE Access_type (
    id INT NOT NULL AUTO_INCREMENT,
    Type_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (Type_name)
);

CREATE TABLE content_to_Access_type (    
    content_id INT NOT NULL,
    Type_id INT NOT NULL,
    FOREIGN KEY (content_id) REFERENCES content(content_id),
    FOREIGN KEY (Type_id) REFERENCES Access_type(id)
);

CREATE TABLE Playlist_privacy(
    id INT NOT NULL AUTO_INCREMENT,
    privacy_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (privacy_name)
);

CREATE TABLE  Playlist_to_playlist_privacy (    
    playlist_id INT NOT NULL,
    privacy_name_id INT NOT NULL,
    FOREIGN KEY( playlist_id) REFERENCES playlist(playlist_id),
    FOREIGN KEY (privacy_name_id ) REFERENCES Playlist_privacy(id)
);

CREATE TABLE PaymentMethod_type(
     id INT NOT NULL AUTO_INCREMENT,
   Paymentt_Method_type_name VARCHAR(255) NOT NULL,
     PRIMARY KEY (id),
     UNIQUE (Paymentt_Method_type_name)
 );
 
 CREATE TABLE  Subscription_to_payment_Method_type (    
    Subscription_id INT NOT NULL,
	Paymentt_Method_type_name_id INT NOT NULL,
    FOREIGN KEY(Subscription_id) REFERENCES subscriptionplan(Subscription_id),
    FOREIGN KEY (Paymentt_Method_type_name_id) REFERENCES PaymentMethod_type(id)
);

CREATE TABLE Plan_type(
     id INT NOT NULL AUTO_INCREMENT,
   Plan_type_name VARCHAR(255) NOT NULL,
     PRIMARY KEY (id),
     UNIQUE (Plan_type_name)
 );
 
CREATE TABLE Subscription_to_plan_type(    
    Subscription_id INT NOT NULL,
	 Plan_type_name_id INT NOT NULL,
    FOREIGN KEY(Subscription_id) REFERENCES subscriptionplan(Subscription_id),
    FOREIGN KEY (Plan_type_name_id) REFERENCES Plan_type(id)
); 