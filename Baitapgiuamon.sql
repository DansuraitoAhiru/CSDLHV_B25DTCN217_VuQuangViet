-- Tao database
CREATE DATABASE quanly_congtrinh;
USE quanly_congtrinh;

CREATE TABLE host(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
address VARCHAR(50)
);

CREATE TABLE contractor(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
address VARCHAR(50),
phone VARCHAR(20)
);

CREATE TABLE architect(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
sex INT,
birthday INT,
place VARCHAR(50),
address VARCHAR(50)
);


CREATE TABLE worker(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
birthday INT,
year INT,
skill VARCHAR(50)
);

CREATE TABLE building(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
cost FLOAT,
startDate DATE,
host_id INT,
contractor_id INT
);


CREATE TABLE design(
building_id INT,
architect_id INT,
benefit VARCHAR(50)
);

CREATE TABLE work(
building_id INT,
worker_id INT,
date DATE,
total VARCHAR(50)
);

-- Them khoa ngoai
ALTER TABLE building
ADD FOREIGN KEY(host_id)
REFERENCES host(id);

ALTER TABLE building
ADD FOREIGN KEY(contractor_id)
REFERENCES contractor(id);

ALTER TABLE design
ADD FOREIGN KEY(building_id)
REFERENCES building(id);

ALTER TABLE design
ADD FOREIGN KEY(architect_id)
REFERENCES architect(id);

ALTER TABLE work
ADD FOREIGN KEY(building_id)
REFERENCES building(id);

ALTER TABLE work
ADD FOREIGN KEY(worker_id)
REFERENCES worker(id);

-- Them du lieu
INSERT INTO host
VALUES
(1,'ABC','Ha Noi'),
(2,'XYZ','Hai Phong');


INSERT INTO contractor
VALUES
(1,'Minh','HN','0123'),
(2,'Long','HCM',NULL);

INSERT INTO architect
VALUES
(1,'nguyen anh tu',1,1980,'HN','HN'),
(2,'le thanh tung',1,1975,'HP','HP'),
(3,'tran thi hoa',0,1990,'DN','DN');

INSERT INTO worker
VALUES
(1,'A',1945,1960,'han'),
(2,'B',1948,1970,'dien'),
(3,'C',1950,1965,'xay');

INSERT INTO building
VALUES
(1,'CT1','HN','Ha Noi',300,'2024-01-01',1,1),
(2,'CT2','HP','Hai Phong',500,'2024-02-02',2,2);

-- Xem tat ca kien truc su
SELECT *
FROM architect;

-- Lay ten va gioi tinh
SELECT name,sex
FROM architect;

-- Lay nam sinh khong trung
SELECT DISTINCT birthday
FROM architect;

-- Sap xep tang dan
SELECT name,birthday
FROM architect
ORDER BY birthday;

-- Sap xep giam dan
SELECT name,birthday
FROM architect
ORDER BY birthday DESC;

-- Tim le thanh tung
SELECT *
FROM architect
WHERE name='le thanh tung';

-- Tim cong nhan han hoac dien
SELECT *
FROM worker
WHERE skill='han'
OR skill='dien';

-- Tim cong trinh 200 -> 500

SELECT *
FROM building
WHERE cost BETWEEN 200 AND 500;

-- Tim ho Nguyen
SELECT *
FROM architect
WHERE name LIKE 'nguyen%';

-- Tim khong co phone
SELECT *
FROM contractor
WHERE phone IS NULL;
