CREATE TABLE Bilhete (
    cod_sessao INTEGER NOT NULL,
    id_poltrona INTEGER NOT NULL,
    cod_bilhete INTEGER NOT NULL,
    PRIMARY KEY (cod_sessao, id_poltrona, cod_bilhete),
    FOREIGN KEY (cod_sessao) REFERENCES Sessao (codigo),
    FOREIGN KEY (id_poltrona) REFERENCES Poltrona (idp)
);
