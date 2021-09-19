-- create the tables
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  country TEXT NOT NULL
);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

-- insert the values
INSERT INTO countries VALUES (1, 'Sweden');
INSERT INTO countries VALUES (2, 'England');
INSERT INTO countries VALUES (3, 'Germany');
INSERT INTO countries VALUES (4, 'Greece');

INSERT INTO users VALUES (1, 'user1', '1');
INSERT INTO users VALUES (2, 'user2', '2');
INSERT INTO users VALUES (3, 'user3', '3');
INSERT INTO users VALUES (4, 'user4', '4');
INSERT INTO users VALUES (5, 'user5', '1');
INSERT INTO users VALUES (6, 'user6', '2');

-- the query
SELECT c.id, c.name AS country, COUNT(*) AS user_count
FROM users u JOIN countries c ON c.id = u.country
GROUP BY u.country, c.name;