START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL OR
    DATE '2025-10-15' - CAST(last_login_at DATE) >= 60
    DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 60;
    -- 確認
SELECT
    id,
    name,
    last_login_at
FROM
    s_characters
ORDER BY
    last_login_at;

ROLLBACK;