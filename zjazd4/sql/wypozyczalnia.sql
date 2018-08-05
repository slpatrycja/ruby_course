DROP TABLE IF EXISTS wypozyczenia;
DROP TABLE IF EXISTS karty_klientow;
DROP TABLE IF EXISTS naprawy;
DROP TABLE IF EXISTS samochody;
DROP TABLE IF EXISTS klienci;

CREATE TABLE samochody (
  id SERIAL PRIMARY KEY,
  marka VARCHAR,
  model VARCHAR,
  pojemnosc_silnika DECIMAL,
  rok_produkcji INTEGER,
  jest_sprawne BOOLEAN
);

INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Skoda', 'Fabia', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Ford', 'Focus', 1.8, 2013, false);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Volkswagen', 'Polo', 1.6, 2007, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Skoda', 'Octavia', 1.4, 2008, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Ford', 'Puma', 1.4, 2004, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Ford', 'Fiesta', 1.4, 2007, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Ford', 'Mondeo', 1.6, 2007, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Volksawgen', 'Passat', 1.6, 2008, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('BMW', 'E87', 1.6, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Citroen', 'Xsara', 1.6, 2008, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Renault', 'Megane', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Mazda', 'MX-3', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Volvo', 'C30', 1.4, 2010, false);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Opel', 'Tigra', 1.6, 2009, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Skoda', 'Fabia', 1.4, 2009, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika., rok_produkcji, jest_sprawne) VALUES ( 'Opel', 'Corsa', 1.4, 2004, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Volkswagen', 'Golf IV', 1.6, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Kia', 'Sephia', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Opel', 'Astra', 1.8, 2013, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Opel', 'Vectra', 1.8, 2013, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Audi', '800s', 1.8, 2009, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Renault', 'Laguna', 1.8, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Seat', 'Arosa', 1.4, 2012, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Mercedes', 'Benz', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Renault', 'Clio', 1.4, 2007, false);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ( 'Seat', 'Cordoba', 1.4, 2010, true);

CREATE TABLE klienci (
  id SERIAL PRIMARY KEY,
  imie VARCHAR,
  nazwisko VARCHAR,
  telefon VARCHAR
);

INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Bartosz', 'Figurski', '122-234-456');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Andrzej', 'Krzywy', '213-234-563');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Sabina', 'Czelny', '627-234-123');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Piotr', 'Piszczek', '147-423-643');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Sylwia', 'Kowal', '918-891-435');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Angelika', 'Bajor', '283-264-089');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Szymon', 'Królikowski', '864-123-234');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Stanisław', 'Okulicki', '135-633-643');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ('Witold', 'Michalski', '747-674-083');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Sebastian', 'Mąka', '147-004-081');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Mateusz', 'Rożek', '439-784-453');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Karolina', 'Sławińska', '620-234-653');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Anastazja', 'Topór', '537-785-214');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Henryk', 'Knot', '540-456-450');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Stefan', 'Wróbel', '455-245-234');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Miłosz', 'Bogucki', '644-678-108');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Emil', 'Kawa', '733-346-234');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Wiesław', 'Stec', '365-357-032');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Marcin', 'Podgórski', '226-354-497');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Andrzej', 'Wingert', '170-879-133');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Mateusz', 'Smoła', '830-087-333');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Karolina', 'Lepicka', '155-003-084');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Aleksander', 'Panek', '942-345-127');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Marek', 'Cybulski', '243-430-342');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Marek', 'Krasny', '333-243-340');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Jan', 'Okoń', '845-654-123');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Mateusz', 'Wilk', '455-343-453');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Tomasz', 'Pająk', '754-093-867');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Krystyna', 'Babiś', '562-005-130');
INSERT INTO klienci (imie, nazwisko, telefon) VALUES ( 'Mateusz', 'Skrzypowski', '673-209-004');

CREATE TABLE wypozyczenia (
  id SERIAL PRIMARY KEY,
  klient_id INTEGER,
  samochod_id INTEGER,
  data_wypozyczenia DATE,
  data_oddania DATE,
  czy_oplacono BOOLEAN,
  FOREIGN KEY (klient_id) REFERENCES klienci(id),
  FOREIGN KEY (samochod_id) REFERENCES samochody(id)
);

INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (3, 6, '2017-07-11', '2017-07-12', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (19, 1, '2017-08-05', '2017-08-23', false);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (13, 17, '2017-07-01', '2017-07-03', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (18, 4, '2017-07-09', '2017-07-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (18, 12, '2017-08-17', '2017-08-19', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (20, 6, '2017-07-08', '2017-07-08', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (1, 23, '2017-08-15', '2017-08-30', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (14, 5, '2017-07-11', '2017-07-11', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES (21, 14, '2017-07-03', '2017-07-05', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 22, 3, '2017-08-12', '2017-08-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 20, 1, '2017-07-13', '2017-07-23', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 15, 19, '2017-07-11', '2017-07-11', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 1, 23, '2017-07-31', '2017-08-02', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 2, 24, '2017-07-15', '2017-07-15', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 27, 5, '2017-08-14', '2017-08-16', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 9, 14, '2017-07-07', '2017-07-14', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 5, 6, '2017-07-22', '2017-07-28', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 8, 4, '2017-07-01', '2017-07-03', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 15, 19, '2017-07-22', '2017-07-26', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 26, 16, '2017-07-21', '2017-07-27', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 11, 1, '2017-08-03', '2017-08-04', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 6, 23, '2017-07-05', '2017-07-06', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 16, 5, '2017-08-03', '2017-08-04', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 23, 21, '2017-07-12', '2017-07-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 3, 7, '2017-07-15', '2017-07-16', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 4, 16, '2017-08-10', '2017-08-10', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 24, 8, '2017-07-21', '2017-07-24', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 17, 8, '2017-07-11', '2017-07-14', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 29, 7, '2017-07-01', '2017-07-04', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 12, 12, '2017-07-28', '2017-07-30', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 11, 8, '2017-08-15', '2017-08-21', false);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 8, 14, '2017-07-19', '2017-07-20', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 6, 8, '2017-07-25', '2017-07-25', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 15, 15, '2017-08-19', '2017-08-21', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 9, 9, '2017-07-30', '2017-07-31', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 7, 22, '2017-07-09', '2017-07-10', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 29, 8, '2017-08-12', '2017-08-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 24, 12, '2017-07-31', '2017-07-31', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 3, 18, '2017-07-23', '2017-07-25', false);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 23, 12, '2017-07-15', '2017-07-18', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 8, 16, '2017-08-12', '2017-08-19', false);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 7, 6, '2017-07-13', '2017-07-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 11, 10, '2017-08-26', '2017-08-27', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 7, 21, '2017-08-12', '2017-08-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 30, 3, '2017-08-04', '2017-08-05', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 16, 10, '2017-08-23', '2017-08-23', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 1, 18, '2017-07-12', '2017-07-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 2, 3, '2017-07-12', '2017-07-13', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 25, 22, '2017-07-14', '2017-07-15', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 23, 11, '2017-07-23', '2017-07-23', true);
INSERT INTO wypozyczenia (klient_id, samochod_id, data_wypozyczenia, data_oddania, czy_oplacono) VALUES ( 10, 26, '2017-08-07', '2017-08-09', true);

CREATE TABLE karty_klientow (
  id SERIAL PRIMARY KEY,
  klient_id INTEGER,
  data_otrzymania DATE,
  wysokosc_znizki INTEGER,
  FOREIGN KEY (klient_id) REFERENCES klienci(id)
);

INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (15, '2017-08-16', 13);
INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (8, '2017-08-17', 12);
INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (3, '2017-07-15', 11);
INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (11, '2017-08-27', 13);
INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (23, '2017-07-23', 12);
INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (1, '2017-08-02', 11);

CREATE TABLE naprawy (
  id SERIAL PRIMARY KEY,
  samochod_id INTEGER,
  rodzaj_usterki VARCHAR,
  cena_naprawy INTEGER,
  data_naprawy DATE,
  FOREIGN KEY (samochod_id) REFERENCES samochody(id)
);

INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (13, 'wymiana klocków hamulcowych', '250', '2017-08-11');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (5, 'klimatyzacja', '250', '2017-07-03');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (21, 'lakierowanie ubytków', '250', '2017-07-31');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (10, 'wymiana filtrów powietrza', '250', '2017-07-17');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (5, 'wymiana akumulatora', '250', '2017-08-19');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (25, 'kontrola bezpieczników', '250', '2017-08-11');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (20, 'naprawa powypadkowa', '250', '2017-08-11');
INSERT INTO naprawy (samochod_id, rodzaj_usterki, cena_naprawy, data_naprawy) VALUES (23, 'konserwacja', '250', '2017-07-13');
