-- Clientes
INSERT INTO clienteSalao (cli_id, nome, telefone)
VALUES (1, 'Ana Beatriz', '(11) 91234-5678'),
       (2, 'João Silva', '(11) 92345-6789'),
       (3, 'Empresa Beleza Ltda', '(11) 93456-7890');

-- Pessoa Física
INSERT INTO pessoa_fisica (id_cliente, cpf, data_nascimento)
VALUES (1, '12345678900', '1995-05-12'),
       (2, '23456789011', '1988-08-23');

-- Pessoa Jurídica
INSERT INTO pessoa_juridica (cli_id, cnpj, razao_social)
VALUES (3, '12345678000199', 'Empresa Beleza Ltda');

-- Funcionários
INSERT INTO funcionario (nome, cpf, telefone, email, cargo, especialidade, data_nascimento)
VALUES ('Mariana Souza', '34567890122', '(11) 99876-5432', 'mariana@salao.com', 'Cabeleireira', 'Corte e Colorimetria', '1990-03-15'),
       ('Carlos Almeida', '45678901233', '(11) 98765-4321', 'carlos@salao.com', 'Manicure', 'Unhas em gel', '1992-07-20');

-- Serviços
INSERT INTO servico (nome_servico, descricao, preco, duracao_minutos)
VALUES ('Corte de Cabelo Feminino', 'Corte estilizado, inclui lavagem e finalização', 70.00, 60),
       ('Coloração', 'Tingimento dos cabelos, inclui retoque de raiz', 150.00, 120),
       ('Manicure', 'Limpeza, corte, esmaltação e hidratação das unhas', 40.00, 45);

-- Agendamentos
INSERT INTO agendamento (cli_id, id_funcionario, data_hora, status, atualizado_em)
VALUES (1, 1, '2025-06-20 14:00:00', 'Agendado', '2025-06-10'),
       (2, 2, '2025-06-21 10:00:00', 'Concluído', '2025-06-21');

-- Agendamento dos Serviços
INSERT INTO agendamento_servico (id_agendamento, id_servico)
VALUES (1, 1), -- Corte de Cabelo Feminino
       (1, 2), -- Coloração
       (2, 3); -- Manicure