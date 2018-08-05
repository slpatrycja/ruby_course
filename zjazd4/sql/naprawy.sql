DROP TABLE IF EXISTS naprawy;

CREATE TABLE naprawy (
	id SERIAL PRIMARY KEY,
	data_naprawy DATE,
	cena_naprawy INTEGER,
	rodzaj_usterki VARCHAR,
	id_samochodu INTEGER,
	FOREIGN KEY(id_samochodu) REFERENCES samochody(id)
);
