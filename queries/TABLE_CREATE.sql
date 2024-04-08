CREATE TABLE IF NOT EXISTS Users (
    id INTEGER PRIMARY KEY,
    username TEXT UNIQUE,
    hashed_password TEXT,
    salt TEXT
);