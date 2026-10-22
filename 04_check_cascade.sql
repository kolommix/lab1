-- каскадное обновление: меняем код читателя, в fines он должен измениться сам
UPDATE readers SET reader_id = 100 WHERE reader_id = 1;
SELECT * FROM fines WHERE reader_id = 100;

-- каскадное удаление: удаляем читателя, его штрафы должны удалиться
DELETE FROM readers WHERE reader_id = 3;
SELECT * FROM fines WHERE reader_id = 3;

-- общая проверка
SELECT * FROM readers;
SELECT * FROM fines;
