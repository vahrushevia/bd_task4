-- Вывести на экран, сколько машин каждого цвета  для машин марок BMW и LADA
SELECT mark AS 'Марка', color AS 'Цвет', COUNT(color) AS 'Колличество' 
FROM auto
WHERE mark = 'LADA'
GROUP BY color, mark 
UNION SELECT mark AS 'Марка', color AS 'Цвет', COUNT(color) AS 'Количество' 
FROM auto
WHERE mark = 'BMW'
GROUP BY color, mark;
-- Вывести на экран марку авто(количество) и количество авто не этой марки.
SELECT mark AS 'Марка', COUNT(*) AS 'Количество', (select COUNT(*) from auto a2 where a2.mark != a1.mark) AS 'Остальные' 
FROM auto a1
GROUP BY mark;
-- Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.
SELECT * FROM test_a
LEFT JOIN test_b ON test_a.id=test_b.id
WHERE test_b.id IS NULL;
