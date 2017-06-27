CREATE TABLE todo (id SERIAL PRIMARY KEY,
                   title VARCHAR(255) NOT NULL,
                   details TEXT NULL,
                   priority INT NOT NULL DEFAULT 1,
                   created_at TIMESTAMP NOT NULL,
                   completed_at TIMESTAMP NULL);

INSERT INTO todo (title, created_at, completed_at) VALUES ('Do the dishes', '2017-06-27 09:30:00', '2017-06-27 09:40:00');
INSERT INTO todo (title, created_at, priority) VALUES ('Clean room', '2017-06-27 14:45:00', 3);
INSERT INTO todo (title, details, created_at, priority) VALUES ('Level up in Final Fantasy 14', 'The new expansion came out recently, need to level up a class in it so I can get further in the expansion. Low priority.', '2017-06-28 16:30:00', 5);
INSERT INTO todo (title, created_at) VALUES ('Learn how to become a junior developer', '2017-05-22 09:00:00');
INSERT INTO todo (title, details, created_at, completed_at) VALUES ('Pay rent', 'Take the rent check to the landlord during lunch.', '2017-06-01 10:00:00', '2017-06-02 12:30:00');

SELECT * FROM todo WHERE todo.completed_at IS NULL;

SELECT * FROM todo WHERE todo.priority > 1;

UPDATE todo SET completed_at = '2017-06-27 16:00:00' WHERE todo.id = 2;

DELETE FROM todo WHERE todo.completed_at IS NOT NULL;
