ALTER TABLE developers ADD COLUMN salary INTEGER;
UPDATE developers SET salary = 2000 WHERE id_developers in (1, 3, 11);
UPDATE developers SET salary = 3000 WHERE id_developers in (5, 9, 10, 15);
UPDATE developers SET salary = 5000 WHERE id_developers in (2, 6, 8, 13, 14);
UPDATE developers SET salary = 4000 WHERE id_developers in (4, 7, 12);