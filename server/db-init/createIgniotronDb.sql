drop database if exists igniotron;
create database igniotron;

\c igniotron;

CREATE TABLE users
(
    user_id serial,
    user_name VARCHAR(255),

    PRIMARY KEY(user_id)
);

CREATE TABLE chat_history
(
    chat_history_id serial,
    user_id INT,
    chat_message VARCHAR(255),

    PRIMARY KEY(chat_history_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)

);

