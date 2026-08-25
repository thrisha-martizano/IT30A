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