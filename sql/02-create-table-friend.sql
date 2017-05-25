DROP TABLE IF EXISTS friends;

CREATE TABLE friend (
  id1 integer REFERENCES student(id),
  id2 INTEGER REFERENCES student(id)
);
