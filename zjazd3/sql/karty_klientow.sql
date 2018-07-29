DROP TABLE IF EXISTS karty_klientow;

CREATE TABLE karty_klientow (
  id SERIAL PRIMARY KEY,
  klient_id INTEGER UNIQUE,
  data_otrzymania DATE,
  wysokosc_znizki FLOAT,
  FOREIGN KEY (klient_id) REFERENCES klienci(id)
);

INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (1, '2018-04-28', 0.2);
INSERT INTO karty_klientow (klient_id, data_otrzymania, wysokosc_znizki) VALUES (2, '2018-07-16', 0.15);


-- SELECT klienci.imie, klienci.nazwisko, data_oddania, samochody.marka, samochody.model
-- FROM wypozyczenia
-- JOIN klienci
-- ON klienci.id = wypozyczenia.id_klienta
-- JOIN samochody  
-- ON samochody.id = wypozyczenia.id_samochodu;
