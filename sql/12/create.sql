-- =========================
-- テーブル作成
-- =========================

CREATE TABLE table2 (
    id INT PRIMARY KEY,
    attr_a VARCHAR(50) NOT NULL
);

CREATE TABLE table3 (
    id INT PRIMARY KEY,
    attr_b VARCHAR(50) NOT NULL
);

CREATE TABLE table1 (
    id INT PRIMARY KEY,
    tbl2_id INT,
    tbl3_id INT,
    FOREIGN KEY (tbl2_id) REFERENCES table2(id),
    FOREIGN KEY (tbl3_id) REFERENCES table3(id)
);

-- =========================
-- データ挿入
-- =========================

INSERT INTO table2 (id, attr_a) VALUES
(1, 'hoge'),
(2, 'fuga'),
(3, 'piyo'),
(4, 'hogera');

INSERT INTO table3 (id, attr_b) VALUES
(1, 'foo'),
(2, 'bar'),
(3, 'baz'),
(4, 'qux'),
(5, 'quux');

INSERT INTO table1 (id, tbl2_id, tbl3_id) VALUES
(1, 2, 3),
(2, 4, NULL),
(3, 3, 5),
(4, NULL, 2),
(5, NULL, NULL),
(6, 4, 3);
