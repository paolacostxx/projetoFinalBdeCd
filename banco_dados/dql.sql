--  Ver todos os agendamentos com cliente e funcionário
SELECT a.id_agendamento, c.nome AS cliente, f.nome AS funcionario, a.data_hora, a.status
FROM agendamento a
INNER JOIN clienteSalao c ON a.cli_id = c.cli_id
INNER JOIN funcionario f ON a.id_funcionario = f.id_funcionario;


--  Ver agendamentos futuros
SELECT * FROM agendamento
WHERE data_hora > CURRENT_TIMESTAMP;

--  Clientes do tipo Pessoa Jurídica
SELECT c.nome, pj.cnpj, pj.razao_social
FROM clienteSalao c
INNER JOIN pessoa_juridica pj ON c.cli_id = pj.id_cliente;

--  Clientes do tipo Pessoa Física
SELECT c.nome, pf.cpf, pf.data_nascimento
FROM clienteSalao c
INNER JOIN pessoa_fisica pf ON c.cli_id = pf.id_cliente;
