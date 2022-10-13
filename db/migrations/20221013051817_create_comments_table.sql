-- migrate:up
CREATE TABLE comments (
id INT PRIMARY KEY,
post_id INT NOT NULL,
user_id INT NOT NULL,
text VARCHAR(1000) NOT NULL,
updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP,
created_at DATETIME NOT NULL DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES users (id),
FOREIGN KEY (post_id) REFERENCES posts (id)
);

-- migrate:down
DROP TABLE comments;
