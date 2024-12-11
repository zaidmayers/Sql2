SELECT 
    CASE 
        WHEN MOD(id, 2) != 0 AND id != cnt THEN id + 1
        WHEN MOD(id, 2) = 0 THEN id - 1
        ELSE id
    END AS id, 
    student 
FROM seat, (SELECT COUNT(*) AS cnt FROM seat) AS seat_counts 
ORDER BY id;
