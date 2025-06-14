--  Ver todos os agendamentos com cliente e funcionário
SELECT a.id_agendamento, c.nome AS cliente, f.nome AS funcionario, a.data_hora, a.status
FROM agendamento a
INNER JOIN clienteSalao c ON a.cli_id = c.cli_id
INNER JOIN funcionario f ON a.id_funcionario = f.id_funcionario;

--  Ver os serviços de um agendamento específico
SELECT a.id_agendamento, s.nome_servico, s.preco
FROM agendamento_servico ag
INNER JOIN servico s ON ag.id_servico = s.id_servico
INNER JOIN agendamento a ON ag.id_agendamento = a.id_agendamento
WHERE a.id_agendamento = 1;

--  Ver agendamentos futuros
SELECT * FROM agendamento
WHERE data_hora > CURRENT_TIMESTAMP;

--  Clientes do tipo Pessoa Jurídica
SELECT c.nome, pj.cnpj, pj.razao_social
FROM clienteSalao c
INNER JOIN pessoa_juridica pj ON c.cli_id = pj.cli_id;

--  Clientes do tipo Pessoa Física
SELECT c.nome, pf.cpf, pf.data_nascimento
FROM clienteSalao c
INNER JOIN pessoa_fisica pf ON c.cli_id = pf.id_cliente;

-- 🔎 Consultar faturamento (total de serviços concluídos)
SELECT SUM(s.preco) AS total_faturado
FROM agendamento a
INNER JOIN agendamento_servico ags ON a.id_agendamento = ags.id_agendamento
INNER JOIN servico s ON ags.id_servico = s.id_servico
WHERE a.status = 'Concluído';
