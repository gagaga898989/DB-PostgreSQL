SELECT
    id,
    name,
    level,
    buff,
    '要調査 / 問題なし' AS "不正の疑い" -- 定数値のカラム
FROM
    s_characters