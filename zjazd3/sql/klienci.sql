DROP TABLE IF EXISTS klienci;

CREATE TABLE klienci (
  id SERIAL PRIMARY KEY,
  imie VARCHAR,
  nazwisko VARCHAR,
  telefon INTEGER
);

INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Anna', 'Nowak', 788945216);
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Jan', 'Kowalski', 521658742);