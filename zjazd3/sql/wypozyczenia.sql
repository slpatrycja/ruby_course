DROP TABLE IF EXISTS wypozyczenia;

CREATE TABLE wypozyczenia (
	id SERIAL PRIMARY KEY,
	data_wypozyczenia DATE,
	data_oddania DATE,
	czy_oplacono BOOLEAN,
	id_samochodu INTEGER,
	id_klienta INTEGER,
	FOREIGN KEY(id_klienta) REFERENCES klienci(id),
	FOREIGN KEY(id_samochodu) REFERENCES samochody(id)
);

INSERT INTO wypozyczenia(data_wypozyczenia, data_oddania, czy_oplacono, id_samochodu, id_klienta)
VALUES 
('2018-07-20', '2018-07-22', true, 20, 1),
('2018-06-20', '2018-06-22', true, 13, 2);