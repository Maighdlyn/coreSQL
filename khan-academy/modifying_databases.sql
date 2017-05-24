CREATE TABLE to_do_list (id INTEGER PRIMARY KEY AUTOINCREMENT,
    list_item TEXT,
    priority INTEGER
);

INSERT INTO to_do_list (list_item, priority) VALUES
("complete goal specs", 1),
("do pushups", 2),
("read chapter of book", 3);

SELECT * FROM to_do_list;

UPDATE to_do_list SET list_item = "complete day2 goal specs" WHERE id = 1;

SELECT * FROM to_do_list;

DELETE FROM to_do_list WHERE priority = 3;

SELECT * FROM to_do_list;
