DROP TABLE IF EXISTS friends;

CREATE TABLE friend (
  id1 INTEGER REFERENCES student(id),
  id2 INTEGER REFERENCES student(id)
);
