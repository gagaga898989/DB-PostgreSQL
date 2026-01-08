SELECT
    character_id,
    COUNT(*) AS "該当プレイヤーのアイテム所持種類数",
    SUM(qty) AS "該当プレイヤーの所持合計数"
FROM
    x_character_items
GROUP BY
    character_id
ORDER BY
    character_id
