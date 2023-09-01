-- ================================================================ --

-- Oracle
-- Projeto de modelagem de Banco de Dados
-- Criando a tabela cliente
CREATE TABLE Cliente (
    CNH VARCHAR2(100) NOT NULL,
    Nome VARCHAR2(100) NOT NULL,
    Cartao INT NOT NULL,
    Telefone VARCHAR2(100) NOT NULL,
    PRIMARY KEY(CNH)
);

-- Inserindo Dados na Tabela Cliente
INSERT INTO Cliente(CNH, Nome, Cartao, Telefone)
VALUES ('111111111', 'André', '123456', '99999-9999');
INSERT INTO Cliente(CNH, Nome, Cartao, Telefone)
VALUES ('222222222', 'José', '654321', '98888-8888');
INSERT INTO Cliente(CNH, Nome, Cartao, Telefone)
VALUES ('333333333', 'Marcela', '123654', '97777-7777');

-- ================================================================ --

-- Criando a Tabela Agencia
CREATE TABLE Agencia (
    NumAg INT NOT NULL,
    Rua VARCHAR2(100) NOT NULL,
    Cidade VARCHAR2(100) NOT NULL,
    Estado VARCHAR2(100) NOT NULL,
    Contato VARCHAR2(100) NOT NULL,
    PRIMARY KEY(NumAg)
);

-- Inserindo Dados na Tabela Agencia
INSERT INTO Agencia(NumAg, Rua, Cidade, Estado, Contato)
VALUES ('1', 'Dias Coelho', 'Rio de Janeiro', 'RJ', '2222-2222');
INSERT INTO Agencia(NumAg, Rua, Cidade, Estado, Contato)
VALUES ('2', 'Alfredo Bittencourt', 'São Paulo', 'SP', '3333-3333');
INSERT INTO Agencia(NumAg, Rua, Cidade, Estado, Contato)
VALUES ('3', 'Rua das Rosas', 'João Pessoa', 'PB', '4444-4444');

-- ================================================================ --

-- Criando Tabela Carro
CREATE TABLE Carro (
    Placa VARCHAR2(100) NOT NULL,
    Modelo VARCHAR2(100) NOT NULL,
    Ano INT NOT NULL,
    NumAg INT NOT NULL,
    PRIMARY KEY(Placa),
    FOREIGN KEY(NumAg) REFERENCES Agencia(NumAg)
);

-- Inserindo Dados na Tabela Carro
INSERT INTO Carro(Placa, Modelo, Ano, NumAg)
VALUES ('MMM-1958', 'Chevrolet Celta', '2012', '1');
INSERT INTO Carro(Placa, Modelo, Ano, NumAg)
VALUES ('MMN-2538', 'Chevrolet Onix', '2017', '1');
INSERT INTO Carro(Placa, Modelo, Ano, NumAg)
VALUES ('MNN-9627', 'VW T-Cross', '2021', '1');

-- ================================================================ --