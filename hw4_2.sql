USE LibraryManagement;

INSERT INTO authors (author_name) VALUES
('Сергій Жадан'),
('Лариса Денисенко');

INSERT INTO genres (genre_name) VALUES
('Поезія'),
('Дитяча література');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Антена', 2021, 
 (SELECT author_id FROM authors WHERE author_name = 'Сергій Жадан'), 
 (SELECT genre_id FROM genres WHERE genre_name = 'Поезія')),
('Маленькі історії про важливе', 2015, 
 (SELECT author_id FROM authors WHERE author_name = 'Лариса Денисенко'), 
 (SELECT genre_id FROM genres WHERE genre_name = 'Дитяча література'));

INSERT INTO users (username, email) VALUES
('ivan_petrenko', 'ivan.petrenko@example.com'),
('olena_kotyk', 'olena.kotyk@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
((SELECT book_id FROM books WHERE title = 'Антена'), 
 (SELECT user_id FROM users WHERE username = 'ivan_petrenko'), '2023-09-01', '2023-10-01'),
((SELECT book_id FROM books WHERE title = 'Маленькі історії про важливе'), 
 (SELECT user_id FROM users WHERE username = 'olena_kotyk'), '2023-09-05', '2023-10-05');
