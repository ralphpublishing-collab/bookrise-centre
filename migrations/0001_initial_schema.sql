CREATE TABLE enquiries (id INTEGER PRIMARY KEY AUTOINCREMENT, created_at TEXT NOT NULL, full_name TEXT NOT NULL, email TEXT NOT NULL, book_title TEXT, genre TEXT, service TEXT NOT NULL, project_stage TEXT, timeline TEXT, message TEXT NOT NULL, consent INTEGER NOT NULL DEFAULT 0, status TEXT NOT NULL DEFAULT 'new', source_ip_hash TEXT);

CREATE INDEX idx_enquiries_created_at ON enquiries(created_at);
