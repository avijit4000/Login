CREATE TABLE IF NOT EXISTS usertable (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    joindate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_usertable_email ON usertable (email);
CREATE INDEX IF NOT EXISTS idx_usertable_phone ON usertable (phone);
