CREATE TABLE IF NOT EXISTS Personnel (
    id INTEGER PRIMARY KEY,
    "Имя" TEXT UNIQUE,
    "Фамилия" TEXT
);

CREATE TABLE IF NOT EXISTS Specialists (
    id INTEGER PRIMARY KEY,
    "Специальность" TEXT,
    "Врач" TEXT,
    FOREIGN KEY("Врач") REFERENCES Personnel("Фамилия")
);

CREATE TABLE IF NOT EXISTS Applies (
    id INTEGER PRIMARY KEY,
    "Врач" TEXT,
    "Начало приема" TEXT,
    "Конец приема" TEXT,
    FOREIGN KEY("Врач") REFERENCES Specialists("Врач")
);
