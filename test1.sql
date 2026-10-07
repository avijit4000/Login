CREATE TABLE IF NOT EXISTS usertable (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    joindate TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_usertable_email ON usertable (email);
CREATE INDEX IF NOT EXISTS idx_usertable_phone ON usertable (phone);
