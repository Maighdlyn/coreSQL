CREATE TABLE music_store (id INTEGER PRIMARY KEY, instrument TEXT, price INTEGER, stock INTEGER, category TEXT);

INSERT INTO music_store VALUES (1, "clarinet", 300, 5, "woodwind");
INSERT INTO music_store VALUES (2, "flute", 300, 5, "woodwind");
INSERT INTO music_store VALUES (3, "alto sax", 400, 4, "woodwind");
INSERT INTO music_store VALUES (4, "tenor sax", 500, 3, "woodwind");
INSERT INTO music_store VALUES (5, "oboe", 600, 2, "woodwind");
INSERT INTO music_store VALUES (6, "bassoon", 2000, 1, "woodwind");
INSERT INTO music_store VALUES (7, "clarinet reed", 2, 25, "woodwind accessory");
INSERT INTO music_store VALUES (8, "alto sax reed",3 , 25, "woodwind accessory");
INSERT INTO music_store VALUES (9, "bassoon reed", 20, 2, "woodwind accessory");
INSERT INTO music_store VALUES (10, "trumpet", 200, 5, "brass");
INSERT INTO music_store VALUES (11, "french horn", 1000, 2, "brass");
INSERT INTO music_store VALUES (12, "trombone", 500, 2, "brass");
INSERT INTO music_store VALUES (13, "baritone", 600, 1, "brass");
INSERT INTO music_store VALUES (14, "tuba", 800, 2, "brass");
INSERT INTO music_store VALUES (15, "drum sticks", 5, 15, "precussion");

SELECT * FROM music_store WHERE category == "woodwind" ORDER BY price;

SELECT * FROM music_store WHERE category == "brass" ORDER BY price;
