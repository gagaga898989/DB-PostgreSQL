DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
    character_id INTEGER PRIMARY KEY,
    name VARCHAR(16) NOT NULL UNIQUE,
    email VARCHAR(64) UNIQUE -- 一意性制約を設定
);

INSERT INTO
    p_characters (character_id, name, email)
VALUES
    (1, 'Alice', NULL), -- email に NULL を登録 
    (2, 'Bob', NULL);

-- email に NULL を登録
SELECT
    *
FROM
    p_characters;

ROLLBACK;