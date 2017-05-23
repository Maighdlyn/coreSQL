CREATE TABLE characters (id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
    );

CREATE TABLE parents (
    character_id INTEGER,
    mother_id INTEGER,
    father_id INTEGER
    );

INSERT INTO characters (first_name, last_name) VALUES ("Catelyn", "Stark");
INSERT INTO characters (first_name, last_name) VALUES ("Ned", "Stark");
INSERT INTO characters (first_name, last_name) VALUES ("Arya", "Stark");
INSERT INTO characters (first_name, last_name) VALUES ("Sansa", "Stark");
INSERT INTO characters (first_name, last_name) VALUES ("Bran", "Stark");
INSERT INTO characters (first_name, last_name) VALUES ("Daenerys", "Targaryen");
INSERT INTO characters (first_name, last_name) VALUES ("Viserys III", "Targaryen");
INSERT INTO characters (first_name, last_name) VALUES ("Rhaella", "Targaryen");
INSERT INTO characters (first_name, last_name) VALUES ("Aerys II", "Targaryen");
INSERT INTO characters (first_name, last_name) VALUES ("Rhaegar", "Targaryen");
INSERT INTO characters (first_name, last_name) VALUES ("Rob", "Stark");
INSERT INTO characters (first_name, last_name) VALUES ("Jon", "Snow");
INSERT INTO characters (first_name, last_name) VALUES ("Rickon", "Stark");

INSERT INTO parents (character_id, mother_id, father_id) VALUES (3, 1, 2);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (4, 1, 2);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (5, 1, 2);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (6, 8, 9);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (7, 8, 9);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (10, 8, 9);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (11, 1, 2);
INSERT INTO parents (character_id, father_id) VALUES (12, 2);
INSERT INTO parents (character_id, mother_id, father_id) VALUES (13, 1, 2);



SELECT first_name FROM characters WHERE last_name == "Stark";

SELECT child.first_name, child.last_name, mother.first_name, father.first_name
    FROM parents
    JOIN characters child
    ON child.id = parents.character_id
    OUTER LEFT JOIN characters mother
    ON mother.id = parents.mother_id
    JOIN characters father
    ON father.id = parents.father_id;
