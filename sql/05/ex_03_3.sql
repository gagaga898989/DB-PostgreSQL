START TRANSACTION
SELECT
    *
FROM
    s_characters
WHERE
    guild = NULL;

ROLLBACK;