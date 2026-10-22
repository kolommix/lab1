CREATE TABLE readers (
    reader_id SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    birth_date DATE NOT NULL,
    passport_data VARCHAR(11) NOT NULL UNIQUE,
    address TEXT NOT NULL,
    phone VARCHAR(20) NOT NULL
);


CREATE TABLE fines (
    reader_id INT NOT NULL,
    return_date DATE NOT NULL,
    book_condition VARCHAR(50) NOT NULL,
    book_lost BOOLEAN NOT NULL DEFAULT FALSE,
    fine_amount NUMERIC(10, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (reader_id, return_date),
    FOREIGN KEY (reader_id) REFERENCES readers (reader_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
