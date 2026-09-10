-- Book Query #1
SELECT * FROM books;

-- Book Query #2 - Select books order by id ASC
SELECT * FROM books
    ORDER BY book_id ASC;

-- Book Query #3 - Select books order by id DESC
SELECT * FROM books
    ORDER BY book_id DESC;

-- Book Query #4 - Select books order by book_title ASC
SELECT 
    book_title,
    book_author,
    book_category
    FROM books
    ORDER BY book_title ASC;

-- Book Query #5 - Select book order by book_title DESC
SELECT
    book_title,
    book_author,
    book_category
    FROM books
    ORDER BY book_title DESC;

-- Book Query #6 - Select books order by book_author ASC
SELECT 
    book_author,
    book_title,
    book_category
    FROM books
    ORDER BY book_author ASC;

-- Book Query #7 - Select books order by book_author DESC
SELECT 
    book_author,
    book_title,
    book_category
    FROM books
    ORDER BY book_author DESC;

-- Book Query #8 - Select book with specific id number
SELECT
    book_title,
    book_author,
    book_category
FROM books
WHERE book_id = 3
LIMIT 1;

-- Book Query #9 - Update book details book_title, book_author, book_category using specific id number
UPDATE books
SET
    book_title = 'A Tale of the Wicked Queen',
    book_author = 'Serena Valentino',
    book_category = 'fiction'
WHERE book_id = 3;


