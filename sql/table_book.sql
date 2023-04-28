CREATE TABLE IF NOT EXISTS book (
    book_id INT NOT NULL,
	title TEXT NOT NULL,
	author_id INT NOT NULL,
	genre_id INT NOT NULL,
	price DECIMAL NOT NULL,
	amount INT NOT NULL,
	created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    PRIMARY KEY (book_id)
);

COMMENT ON COLUMN book.book_id IS 'Код книги';
COMMENT ON COLUMN book.title IS 'Название книги';
COMMENT ON COLUMN book.author_id IS 'Код автора';
COMMENT ON COLUMN book.genre_id IS 'Код жанра';
COMMENT ON COLUMN book.price IS 'Цена';
COMMENT ON COLUMN book.amount IS 'Количество';
COMMENT ON COLUMN book.created_at IS 'Дата создания';
COMMENT ON COLUMN book.updated_at IS 'Дата изменения';
