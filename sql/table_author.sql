
CREATE TABLE IF NOT EXISTS author (
    author_id INT NOT NULL,
    name TEXT NOT NULL,
	created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    PRIMARY KEY (author_id)
);

COMMENT ON COLUMN author.author_id IS 'Код автора';
COMMENT ON COLUMN author.name IS 'Имя автора';
COMMENT ON COLUMN author.created_at IS 'Дата создания';
COMMENT ON COLUMN author.updated_at IS 'Дата изменения';