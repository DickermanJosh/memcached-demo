DROP DATABASE IF EXISTS memcached; 
CREATE DATABASE memcached;
USE memcached;

CREATE TABLE users (
	id INT auto_increment primary key,
    name VARCHAR(24)
);

CREATE TABLE contents (
	content_id INT AUTO_INCREMENT PRIMARY KEY,
	id INT,
    content TEXT,
	FOREIGN KEY (id) REFERENCES users(id)
);

INSERT INTO users (name) VALUES ("John");
INSERT INTO users (name) VALUES ("Jane");
INSERT INTO users (name) VALUES ("Jack");
SELECT * FROM users;
SELECT COUNT(content_id)
FROM contents;

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "datawdawda4");
INSERT INTO contents (id, content) VALUES (1, "data5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "datawdawda8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "datawdawda4");
INSERT INTO contents (id, content) VALUES (1, "data5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "datawdawda8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "data2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "data4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "daawdawdta6");
INSERT INTO contents (id, content) VALUES (2, "data7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "dawdata2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "dawdawdata4");
INSERT INTO contents (id, content) VALUES (3, "data5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "datawdada7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "data4");
INSERT INTO contents (id, content) VALUES (1, "datawda5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "daawdawdta8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "datawdawda2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "dataawd4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "data6");
INSERT INTO contents (id, content) VALUES (2, "daawdta7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "data2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "daawdta4");
INSERT INTO contents (id, content) VALUES (3, "daawdawdta5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "data7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");
INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "datawdawda4");
INSERT INTO contents (id, content) VALUES (1, "data5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "datawdawda8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "data2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "data4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "daawdawdta6");
INSERT INTO contents (id, content) VALUES (2, "data7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "dawdata2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "dawdawdata4");
INSERT INTO contents (id, content) VALUES (3, "data5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "datawdada7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "data4");
INSERT INTO contents (id, content) VALUES (1, "datawda5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "daawdawdta8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "datawdawda2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "dataawd4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "data6");
INSERT INTO contents (id, content) VALUES (2, "daawdta7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "data2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "daawdta4");
INSERT INTO contents (id, content) VALUES (3, "daawdawdta5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "data7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");
INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "datawdawda4");
INSERT INTO contents (id, content) VALUES (1, "data5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "datawdawda8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "data2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "data4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "daawdawdta6");
INSERT INTO contents (id, content) VALUES (2, "data7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "dawdata2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "dawdawdata4");
INSERT INTO contents (id, content) VALUES (3, "data5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "datawdada7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "data4");
INSERT INTO contents (id, content) VALUES (1, "datawda5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "daawdawdta8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "datawdawda2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "dataawd4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "data6");
INSERT INTO contents (id, content) VALUES (2, "daawdta7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "data2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "daawdta4");
INSERT INTO contents (id, content) VALUES (3, "daawdawdta5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "data7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");
INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "datawdawda4");
INSERT INTO contents (id, content) VALUES (1, "data5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "datawdawda8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "data2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "data4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "daawdawdta6");
INSERT INTO contents (id, content) VALUES (2, "data7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "dawdata2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "dawdawdata4");
INSERT INTO contents (id, content) VALUES (3, "data5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "datawdada7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "data4");
INSERT INTO contents (id, content) VALUES (1, "datawda5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "daawdawdta8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "datawdawda2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "dataawd4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "data6");
INSERT INTO contents (id, content) VALUES (2, "daawdta7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "data2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "daawdta4");
INSERT INTO contents (id, content) VALUES (3, "daawdawdta5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "data7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");
INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "datawdawda4");
INSERT INTO contents (id, content) VALUES (1, "data5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "datawdawda8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "data2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "data4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "daawdawdta6");
INSERT INTO contents (id, content) VALUES (2, "data7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");

INSERT INTO contents (id, content) VALUES (3, "data0");
INSERT INTO contents (id, content) VALUES (3, "data1");
INSERT INTO contents (id, content) VALUES (3, "dawdata2");
INSERT INTO contents (id, content) VALUES (3, "data3");
INSERT INTO contents (id, content) VALUES (3, "dawdawdata4");
INSERT INTO contents (id, content) VALUES (3, "data5");
INSERT INTO contents (id, content) VALUES (3, "data6");
INSERT INTO contents (id, content) VALUES (3, "datawdada7");
INSERT INTO contents (id, content) VALUES (3, "data8");
INSERT INTO contents (id, content) VALUES (3, "data9");

INSERT INTO contents (id, content) VALUES (1, "data0");
INSERT INTO contents (id, content) VALUES (1, "data1");
INSERT INTO contents (id, content) VALUES (1, "data2");
INSERT INTO contents (id, content) VALUES (1, "data3");
INSERT INTO contents (id, content) VALUES (1, "data4");
INSERT INTO contents (id, content) VALUES (1, "datawda5");
INSERT INTO contents (id, content) VALUES (1, "data6");
INSERT INTO contents (id, content) VALUES (1, "data7");
INSERT INTO contents (id, content) VALUES (1, "daawdawdta8");
INSERT INTO contents (id, content) VALUES (1, "data9");

INSERT INTO contents (id, content) VALUES (2, "data0");
INSERT INTO contents (id, content) VALUES (2, "data1");
INSERT INTO contents (id, content) VALUES (2, "datawdawda2");
INSERT INTO contents (id, content) VALUES (2, "data3");
INSERT INTO contents (id, content) VALUES (2, "dataawd4");
INSERT INTO contents (id, content) VALUES (2, "data5");
INSERT INTO contents (id, content) VALUES (2, "data6");
INSERT INTO contents (id, content) VALUES (2, "daawdta7");
INSERT INTO contents (id, content) VALUES (2, "data8");
INSERT INTO contents (id, content) VALUES (2, "data9");
