create table books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title varchar(50) not null,
    book_author varchar(50) not null,
    book_category VARCHAR(50) not null,
    book_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    
    );


    insert into books (book_title,book_author,book_category) VALUES 
    ("The Litte Prince","Antoine","Fiction"),
    ("Pride and Prejudice","Collins","Fiction"),
    ("The Alchemist","Paulo","Fiction");


create table borrow(
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_borrow_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id) REFERENCES books(book_id)

);

    insert into borrow (student_id,book_id) VALUES (1,2), (2,1), (3,3);

select
    br.borrow_id,
    s.student_id,
    CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
    ) as student_name,
    s.student_course,

    b.book_title,
    b.book_author,
    b.book_category,

    br.borrow_date
FROM borrow br
JOIN students s ON
    br.student_id = s.student_id
JOIN books b ON
    br.book_id = b.book_id

WHERE br.borrow_return_date is NULL 
ORDER BY br.borrow_date DESC;



--Aug. 27, 2026

select
    br.borrow_id,
    
    CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
    ) as student_name,
    

    b.book_title,
    b.book_author,
    b.book_category,

    br.borrow_date,
    br.borrow_return_date
FROM borrow br
JOIN students s ON
    br.student_id = s.student_id
JOIN books b ON
    br.book_id = b.book_id

WHERE br.borrow_return_date is NULL 
ORDER BY br.borrow_date DESC;

--Set borrow id for the borrowed book you want to return
UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 5 AND borrow_return_date IS NULL;


select
    br.borrow_id,
    
    CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
    ) as student_name,
    

    b.book_title,
    b.book_author,
    b.book_category,

    br.borrow_date,
    br.borrow_return_date
FROM borrow br
JOIN students s ON
    br.student_id = s.student_id
JOIN books b ON
    br.book_id = b.book_id

WHERE br.borrow_return_date IS NOT NULL 
ORDER BY br.borrow_date DESC;