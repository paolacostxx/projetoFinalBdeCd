-- Criação do banco de dados 
CREATE DATABASE IF NOT EXISTS AgendaSalao;
USE AgendaSalao;

-- Tabela Cliente
CREATE TABLE Cliente (
    cliente_id INT SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)

);
CREATE TABLE cliente_pf(
    cliente_id INT SERIAL FOREIGN KEY,
    cpf VARCHAR (11) UNIQUE NOT NULL,
    dataNasc DATE
);

CREATE TABLE cliente_pj(
    cliente_id INT SERIAL FOREIGN KEY,
    cnpj VARCHAR(14) UNIQUE NOT NULL
);

-- Tabela Funcionário
CREATE TABLE Funcionario (
    funcionario_id INT SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    documento VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    cargo VARCHAR(50),
    especialidade VARCHAR(100),
    dataNasc DATE
);

-- Tabela Serviço
CREATE TABLE Servico (
    servico_id INT SERIAL PRIMARY KEY,
    nomeServico VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL
);

-- Tabela Agendamento
CREATE TABLE Agendamento (
    agendamento_id INT SERIAL PRIMARY KEY,
    dataHora DATETIME NOT NULL,
    cli_id INT NOT NULL,
    funcionario_id INT NOT NULL,
    status VARCHAR(50),

    FOREIGN KEY (cli_id) REFERENCES Cliente(cli_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (funcionario_id) REFERENCES Funcionario(funcionario_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabela associativa AgendamentoServico (N:N)
CREATE TABLE AgendamentoServico (
    agendamento_id INT NOT NULL,
    servico_id INT NOT NULL,
    PRIMARY KEY (agendamento_id, servico_id),

    FOREIGN KEY (agendamento_id) REFERENCES Agendamento(agendamento_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (servico_id) REFERENCES Servico(servico_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);