UPDATE readers SET reader_id = 100 WHERE reader_id = 1;
SELECT * FROM fines WHERE reader_id = 100;

DELETE FROM readers WHERE reader_id = 3;
SELECT * FROM fines WHERE reader_id = 3;

SELECT * FROM readers;
SELECT * FROM fines;
