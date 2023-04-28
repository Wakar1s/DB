CREATE TABLE IF NOT EXISTS cities (
    cities_id SERIAL NOT NULL,
    name TEXT NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    PRIMARY KEY (cities_id),
    UNIQUE (name)
);

COMMENT ON COLUMN cities.cities_id IS 'Идентификатор города';
COMMENT ON COLUMN cities.name IS 'Название города';
COMMENT ON COLUMN cities.created_at IS 'Дата создания';
COMMENT ON COLUMN cities.updated_at IS 'Дата изменения';

DROP TRIGGER IF EXISTS set_timestamp ON cities;
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON cities
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();
