CREATE DATABASE "AgendaSalao";

CREATE TABLE clienteSalao (
    cli_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)

);

CREATE TABLE pessoa_fisica (
    id_cliente INTEGER NOT NULL REFERENCES clienteSalao(cli_id),
    cpf VARCHAR(11)UNIQUE,
    data_nascimento DATE
);

CREATE TABLE pessoa_juridica (
    id_cliente INTEGER NOT NULL REFERENCES clienteSalao(cli_id),
    cnpj CHAR(14) UNIQUE,
    razao_social VARCHAR(100)
);

CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    cargo VARCHAR(50), -- Ex: Cabeleireiro, Manicure, Depiladora
    especialidade VARCHAR(100), -- Descrição da especialidade
    data_nascimento DATE
);


-- Serviço
CREATE TABLE servico (
    id_servico SERIAL PRIMARY KEY,
    nome_servico VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL
);


CREATE TABLE agendamento (
    id_agendamento SERIAL PRIMARY KEY,
    cli_id INTEGER NOT NULL REFERENCES clienteSalao(cli_id),
    id_funcionario INTEGER NOT NULL REFERENCES funcionario(id_funcionario),
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(50) -- Ex: 'Agendado', 'Concluído', 'Cancelado',
);

ALTER TABLE Agendamento  
	ADD CONSTRAINT clientefk 
	FOREIGN KEY (cli_id) 
	REFERENCES clienteSalao(cli_id)
	ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Agendamento  
	ADD CONSTRAINT funcionariofk 
	FOREIGN KEY (id_funcionario) 
	REFERENCES Funcionario(id_funcionario)
	ON DELETE CASCADE ON UPDATE CASCADE;
