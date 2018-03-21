DROP TABLE IF EXISTS readBooks;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(64) UNIQUE NOT NULL,
  passwd VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  imgName TEXT
);



CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    ISBN13 VARCHAR(13) UNIQUE NOT NULL,
    author VARCHAR(64),
    description TEXT,
    category VARCHAR(255)
);


CREATE TABLE readBooks (
    id SERIAL PRIMARY KEY,
    userID INT NOT NULL,
    bookID INT NOT NULL,
    rating INT NOT NULL,
    review TEXT,
    FOREIGN KEY (userID) REFERENCES users (id),
    FOREIGN KEY (bookID) REFERENCES books (id)
);
