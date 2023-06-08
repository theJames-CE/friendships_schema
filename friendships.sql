-- Query #1: Create 6 new users
INSERT INTO users (first_name, last_name)
VALUES ('Amy', 'Giver'), ('Eli', 'Byers'), ('Big', 'Bird'), ('Kermit', 'The Frog'), ('Marky', 'Mark'), ('Ronald', 'McDonald');

-- Query #2: Have user 1 be friends with user 2, 4 and 6
INSERT INTO friendships (user_id, friend_id)
VALUES (1, 2), (1, 4), (1, 6);

-- Query #3: Have user 2 be friends with user 1, 3, and 5
INSERT INTO friendships (user_id, friend_id)
VALUES (2, 1), (2, 3), (2, 5);

-- Query #4: Have user 3 be friends with user 2 and 5
INSERT INTO friendships (user_id, friend_id)
VALUES (3, 2), (3, 5);

-- Query #5: Have user 4 be friends with user 3
INSERT INTO friendships (user_id, friend_id)
VALUES (4, 3);

-- Query #6: Have user 5 be friends with user 1 and 6
INSERT INTO friendships (user_id, friend_id)
VALUES (5, 1), (5, 6);

-- Query #7: Have user 6 be friends with user 2 and 3
INSERT INTO friendships (user_id, friend_id)
VALUES (6, 2), (6, 3);

-- Query #8: Display the relationships created as shown in the table in the above image
SELECT * FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id;

-- Ninja Query #1: Return all users who are friends with the first user, make sure their names are displayed in results.
SELECT * FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id
WHERE users.id = 1;

-- Ninja Query #2: Return the count of all friendships
SELECT COUNT(*) AS friendship_count
FROM friendships;

-- Ninja Query #3: Find out who has the most friends and return the count of their friends.
SELECT u1.*, COUNT(f.friend_id) AS friend_count
FROM users u1
LEFT JOIN friendships f ON u1.id = f.user_id OR u1.id = f.friend_id
GROUP BY u1.id
ORDER BY friend_count DESC
LIMIT 1;

-- Ninja Query #4: Return the friends of the third user in alphabetical order
SELECT u2.* FROM users u1
JOIN friendships f ON u1.id = f.user_id
LEFT JOIN users AS u2 ON f.friend_id = u2.id
WHERE u1.id = 3
ORDER BY u2.first_name, last_name ASC;











