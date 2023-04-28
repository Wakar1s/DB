CREATE TABLE IF NOT EXISTS genre (
    genre_id INT NOT NULL,
    name TEXT NOT NULL,
	created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    PRIMARY KEY (genre_id)
);

COMMENT ON COLUMN genre.genre_id IS 'Код жанра';
COMMENT ON COLUMN genre.name IS 'Название жанра';
COMMENT ON COLUMN genre.created_at IS 'Дата создания';
COMMENT ON COLUMN genre.updated_at IS 'Дата изменения';


/*
DROP TRIGGER IF EXISTS set_timestamp ON airports;
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON airports
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();
*/


