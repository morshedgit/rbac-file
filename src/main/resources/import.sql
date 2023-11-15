-- Create user_role table first as it is referenced by test_user
CREATE TABLE IF NOT EXISTS user_role (
    id SERIAL PRIMARY KEY,
    role VARCHAR(255)
);

-- Create test_user table with a foreign key reference to user_role
CREATE TABLE IF NOT EXISTS test_user (
  id SERIAL PRIMARY KEY, -- Assuming you want this to be auto-increment as well
  username VARCHAR(255),
  password VARCHAR(255),
  role_id INT, -- Foreign key reference to user_role.id
  FOREIGN KEY (role_id) REFERENCES user_role(id)
);

-- Insert roles into user_role table
INSERT INTO user_role (role) VALUES ('admin');
INSERT INTO user_role (role) VALUES ('user');

-- Get the IDs for the roles
-- Assuming 'admin' is ID 1 and 'user' is ID 2
-- Insert data into test_user table
INSERT INTO test_user (username, password, role_id) VALUES ('admin', 'admin', 1);
INSERT INTO test_user (username, password, role_id) VALUES ('user', 'user', 2);
