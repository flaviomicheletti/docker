--
-- yourDatabase
--

CREATE TABLE languages (
    language_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created TIMESTAMP NOT NULL,
    last_update TIMESTAMP NOT NULL
);

INSERT INTO languages (name, created, last_update) VALUES
('English', '2023-03-01 12:00:00', '2023-03-01 12:00:00'),
('Spanish', '2023-03-02 12:00:00', '2023-03-02 12:00:00'),
('French', '2023-03-03 12:00:00', '2023-03-03 12:00:00'),
('German', '2023-03-04 12:00:00', '2023-03-04 12:00:00'),
('Italian', '2023-03-05 12:00:00', '2023-03-05 12:00:00');