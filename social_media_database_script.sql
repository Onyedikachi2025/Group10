CREATE TABLE users (
 user_id INT PRIMARY KEY,
 user_name VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE posts(
 post_id INT PRIMARY KEY,
 user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
 date_published DATE,
 tags  VARCHAR (100)
);
CREATE TABLE likes(
 user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
 post_id INT REFERENCES posts(post_id) ON DELETE CASCADE,
 date_liked DATE,
 PRIMARY KEY (user_id, post_id)
);
CREATE TABLE stories(
 story_id INT PRIMARY KEY,
 user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
 date_posted DATE,
 tags VARCHAR (100)
);
INSERT INTO users (user_id, user_name, email) VALUES
(1, 'Elena Martinez', 'elena.martinez@gmail.com'),
(2, 'Marcus Chen', 'marcus.chen@gamil.com'),
(3, 'Zara Thompson', 'zara.thompson@yahoo.com'),
(4, 'Marco Rossi', 'marco.rossi@gmail.com'),
(5, 'Sofia Arens', 'sofia.arens@outlook.com'),
(6, 'Eric Martinez', 'eric.martinez@gmail.com'),
(7, 'James Maddison', 'james.maddison@yahoo.com'),
(8, 'Joe Milner', 'joe.milner@outlook.com');
INSERT INTO stories (story_id, user_id, date_posted, tags) VALUES
(1, 1, '2024-07-18', '#fitness'),
(2, 1, '2025-03-09', '#tech'),
(3, 2, '2023-11-22', '#music'),
(4, 3, '2026-05-14', '#music'),
(5, 3, '2022-09-30', '#nature'),
(6, 3, '2025-02-14', '#lifestyle'),
(7, 4, '2023-06-10', '#food'),
(8, 5, '2026-01-05', '#fitness'),
(9, 5, '2024-08-19', '#gym'),
(10, 6, '2025-04-22', '#coding'),
(11, 6, '2023-03-17', '#tech'),
(12, 6, '2024-11-30', '#cinema'),
(13, 7, '2025-07-08', '#nature'),
(14, 7, '2024-02-28', '#pets'),
(15, 8, '2023-10-15', '#coding'),
(16, 8, '2026-05-01', '#sports');
INSERT INTO posts (post_id, user_id, date_published, tags) VALUES
(1, 1, '2023-04-12', '#tech'),
(2, 1, '2025-09-27', '#music'),
(3, 1, '2024-01-08', '#lifestyle'),
(4, 2, '2026-01-19', '#music'),
(5, 3, '2022-11-03', '#nature'),
(6, 3, '2025-02-14', '#nature'),
(7, 3, '2023-06-20', '#food'),
(8, 4, '2024-09-05', '#fitness'),
(9, 4, '2025-03-11', '#gym'),
(10, 5, '2023-07-22', '#coding'),
(11, 5, '2024-12-01', '#tech'),
(12, 6, '2023-04-18', '#cinema'),
(13, 6, '2025-08-30', '#fitness'),
(14, 6, '2024-02-07', '#pets'),
(15, 7, '2025-05-19', '#coding'),
(16, 8, '2023-10-03', '#sports'),
(17, 8, '2026-01-27', '#fitness'),
(18, 8, '2024-07-14', '#nature');
INSERT INTO likes (user_id, post_id, date_liked) VALUES
(1, 4, '2026-01-29'),
(1, 5, '2022-11-10'),
(1, 6, '2025-02-15'),
(1, 9, '2025-03-20'),
(1, 15, '2025-05-25'),
(2, 1, '2023-04-13'),
(2, 8, '2024-09-10'),
(3, 1, '2023-04-14'),
(3, 2, '2025-09-28'),
(3, 4, '2026-01-20'),
(3, 16, '2023-10-10'),
(4, 2, '2025-10-01'),
(4, 5, '2022-11-12'),
(4, 11, '2024-12-08'),
(4, 18, '2024-07-20'),
(5, 3, '2024-02-01'),
(5, 12, '2023-04-25'),
(6, 1, '2023-04-16'),
(6, 6, '2025-02-20'),
(6, 9, '2025-03-25'),
(6, 10, '2023-07-25'),
(6, 15, '2025-05-28'),
(6, 17, '2026-01-30'),
(7, 2, '2025-10-05'),
(7, 4, '2026-02-01'),
(7, 6, '2025-02-22'),
(7, 10, '2023-07-28'),
(7, 12, '2023-04-28'),
(7, 14, '2024-02-15'),
(8, 3, '2024-02-05'),
(8, 16, '2023-10-12');