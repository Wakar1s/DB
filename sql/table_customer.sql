CREATE TABLE IF NOT EXISTS customer (
    customer_id INT NOT NULL,
    name TEXT NOT NULL,
	cities_id SERIAL NOT NULL,
	email TEXT NOT NULL,	
	created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    PRIMARY KEY (customer_id)
);

COMMENT ON COLUMN customer.customer_id IS 'Код клиента';
COMMENT ON COLUMN customer.name IS 'Имя клиента';
COMMENT ON COLUMN customer.cities_id IS 'Код города';
COMMENT ON COLUMN customer.email IS 'Почта голубиная';
COMMENT ON COLUMN customer.created_at IS 'Дата создания';
COMMENT ON COLUMN customer.updated_at IS 'Дата изменения';
