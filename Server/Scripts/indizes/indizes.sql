CREATE INDEX adressen_index ON T_ADRESSEN (plz, ort);
CREATE INDEX cars_index ON T_CARS (marke, modell);
CREATE INDEX personen_index ON T_PERSONEN (geburtsdatum, fuehrerschein_valid);
CREATE INDEX mitarbeiter_index ON T_MITARBEITER (gehalt);
CREATE INDEX preise_index ON T_PREISE (preis);
CREATE INDEX schaeden_index ON T_SCHAEDEN (datum, repariert_datum);
CREATE INDEX verfuegbarkeit_index ON T_VERFUEGBARKEIT (verfuegbar);
CREATE INDEX buchungen_index ON T_BUCHUNGEN (datum_von, datum_bis);