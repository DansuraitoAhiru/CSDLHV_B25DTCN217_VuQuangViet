(2, 'cong vien thieu nhi', '100 nguyen thai hoc', 'can tho', 200, '1994-05-08', 2, 1),
(3, 'hoi cho nong nghiep', 'bai cat', 'vinh long', 1000, '1994-06-10', 1, 1),
(4, 'truong mg mang non', '48 cm thang 8', 'can tho', 30, '1994-07-10', 3, 3),
(5, 'khoa trong trot dhct', 'khu ii dhct', 'can tho', 3000, '1994-06-19', 4, 3),
(6, 'van phong bitis', '25 phan dinh phung', 'ha noi', 40, '1994-05-10', 5, 3),
(7, 'nha rieng 1', '124/5 nguyen trai', 'tp hcm', 65, '1994-11-15', 6, 2),
(8, 'nha rieng 2', '76 chau van liem', 'ha noi', 200, '1994-06-09', 7, 4);

INSERT INTO design (building_id, architect_id, benefit) VALUES
(1, 1, 25),
(1, 5, 12),
(2, 4, 6),
(3, 3, 12),
(4, 2, 20),
(5, 5, 30),
(6, 2, 40),
(6, 5, 27),
(7, 1, 10),
(8, 2, 18);

INSERT INTO work (building_id, worker_id, date, total) VALUES
(1, 1, '1994-12-15', 5),
(1, 3, '1994-12-18', 6),
(1, 6, '1994-09-14', 7),
(2, 1, '1994-05-08', 20),
(2, 4, '1994-05-10', 10),
(2, 5, '1994-12-16', 5),
(3, 4, '1994-10-06', 10),
(3, 7, '1994-10-06', 18),
(4, 1, '1994-09-07', 20),
(4, 6, '1994-05-12', 7);

SELECT *
FROM architect;

SELECT name, sex
FROM architect;

SELECT DISTINCT birthday
FROM architect;

SELECT name, birthday
FROM architect
ORDER BY birthday ASC;

SELECT name, birthday
FROM architect
ORDER BY birthday DESC;

SELECT *
FROM building
ORDER BY cost ASC, city ASC;

SELECT *
FROM architect
WHERE name = 'le thanh tung';

SELECT name, birthday
FROM worker
WHERE skill = 'han'
OR skill = 'dien';

SELECT name, birthday
FROM worker
WHERE (skill = 'han' OR skill = 'dien')
AND birthday > 1948;

SELECT *
FROM worker
WHERE birthday + 20 > year;

SELECT *
FROM worker
WHERE birthday = 1945
OR birthday = 1940
OR birthday = 1948;

SELECT *
FROM worker
WHERE birthday IN (1945, 1940, 1948);

SELECT *
FROM building
WHERE cost >= 200
AND cost <= 500;

SELECT *
FROM building
WHERE cost BETWEEN 200 AND 500;

SELECT *
FROM architect
WHERE name LIKE 'nguyen%';

SELECT *
FROM architect
WHERE name LIKE '% anh %';

SELECT *
FROM architect
WHERE name LIKE '% th_';

SELECT *
FROM contractor
WHERE phone IS NULL;
