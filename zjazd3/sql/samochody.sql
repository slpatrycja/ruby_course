DROP TABLE IF EXISTS samochody;

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
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Citroen', 'Xsara', 1.6, 2008, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Renault', 'Megane', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Mazda', 'MX-3', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Volvo', 'C30', 1.4, 2010, false);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Opel', 'Tigra', 1.6, 2009, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Skoda', 'Fabia', 1.4, 2009, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Opel', 'Corsa', 1.4, 2004, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Volkswagen', 'Golf IV', 1.6, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Kia', 'Sephia', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Opel', 'Astra', 1.8, 2013, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Opel', 'Vectra', 1.8, 2013, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Audi', '800s', 1.8, 2009, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Renault', 'Laguna', 1.8, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Seat', 'Arosa', 1.4, 2012, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Mercedes', 'Benz', 1.4, 2010, true);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Renault', 'Clio', 1.4, 2007, false);
INSERT INTO samochody (marka, model, pojemnosc_silnika, rok_produkcji, jest_sprawne) VALUES ('Seat', 'Cordoba', 1.4, 2010, true);


-- DELETE FROM samochody 
-- WHERE marka = 'Ford';

-- UPDATE samochody
-- SET rok_produkcji = 2005
-- WHERE marka = 'Volkswagen' and model = 'Golf IV';

