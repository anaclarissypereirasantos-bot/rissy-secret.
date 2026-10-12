CREATE TABLE IF NOT EXISTS products (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL,
 category TEXT NOT NULL DEFAULT 'Conjuntos',
 price REAL NOT NULL DEFAULT 0,
 sizes TEXT NOT NULL DEFAULT '[]',
 description TEXT NOT NULL DEFAULT '',
 image TEXT NOT NULL DEFAULT '',
 color TEXT NOT NULL DEFAULT '',
 featured INTEGER NOT NULL DEFAULT 0,
 created_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS products_created_at_idx ON products(created_at DESC);