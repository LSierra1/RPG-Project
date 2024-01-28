/* Lógico_1: */

CREATE TABLE Pessoa (
    CPF VARCHAR(14) PRIMARY KEY,
    Idade INTEGER,
    Nome VARCHAR(80),
    fk_Carro_Placa VARCHAR(7)
);

CREATE TABLE Carro (
    Placa VARCHAR(7) PRIMARY KEY,
    Ano INTEGER,
    Cor VARCHAR(80),
    Modelo VARCHAR(80)
);
 
ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_2
    FOREIGN KEY (fk_Carro_Placa)
    REFERENCES Carro (Placa)
    ON DELETE CASCADE;