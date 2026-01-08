SELECT
    item_id,
    SUM(qty)
FROM
    x_character_items
GROUP BY
    item_id
HAVING
    SUM(qty) >= 6
ORDER BY
    item_id