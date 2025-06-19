# Projetos de Banco de Dados - Faculdade Senai Gaspar Ricardo Junior – Sorocaba

Este repositório contém dois projetos desenvolvidos nas disciplinas de Banco e Ciência de Dados, cada um com focos semelhantes de aplicação prática dos conceitos aprendidos.

---

## 📌 Projeto 1: Sistema de Agendamento para Salão de Beleza

### Integrantes
- Eloisa Lopes Gomes  
- Giovana Amaro Lima  
- Paola da Costa  
- Lauren Julia Reis  

### Tema
**Sistema de Agendamento para Salão de Beleza**

Este sistema tem como objetivo gerenciar clientes, funcionários, serviços e agendamentos de um salão de beleza. Ele demonstra, na prática, a aplicação dos principais conceitos de **banco de dados relacionais**, incluindo:

- Modelagem conceitual e lógica
- Normalização
- Chaves primárias e estrangeiras
- Linguagens SQL: DDL, DML, DQL, DCL e DTL

---

### Modelagem de Dados
- Entidades: Cliente, Pessoa Física, Pessoa Jurídica, Funcionário, Serviço, Agendamento
- Relacionamentos bem definidos com uso de integridade referencial

### Normalização
Banco normalizado até a **Terceira Forma Normal (3FN)**.

### Scripts SQL
- 📂 **DDL:** Criação de tabelas e restrições
- 📂 **DML:** Inserção de dados
- 📂 **DQL:** Consultas
- 📂 **DCL / DTL:** Bônus

### Diagrama Entidade-Relacionamento (DER)
Disponível na pasta `/docs`.

### Documentação ABNT
No arquivo.

### Requisitos Técnicos
- SGBD: PostgreSQL (versão recomendada: 15+)
- Ferramentas utilizadas: PgAdmin, DBeaver, VSCode, Draw.io, bddiagram.io

---

## 📌 Projeto 2: Análise Estatística e Visualização de Dados de um Salão de Beleza

### Tema
**Análise de Dados utilizando Python (Pandas, Matplotlib, Seaborn, SciPy)**

Este trabalho envolve a construção de um banco de dados com dados de clientes, serviços e agendamentos de um salão de beleza, seguido de uma análise estatística com foco em:

- Escalas de medição
- Tendência central
- Dispersão
- Correlação
- Séries temporais
- Visualizações gráficas

---

### Conteúdo Desenvolvido

#### Banco de Dados (SQLite):
- Criação de tabelas: Cliente, ClientePF, ClientePJ, Funcionário, Serviço, Agendamento
- Inserção de dados fictícios para testes
- Scripts de criação e inserção desenvolvidos em Python com uso de SQLite3

#### Análises Realizadas (Python):
- Cálculo de **média**, **mediana**, **moda**, **amplitude**, **variância** e **desvio padrão**
- **Boxplot** dos preços dos serviços
- **Gráficos de pizza** para distribuição de status dos agendamentos
- **Histograma** de agendamentos por cliente
- **Série temporal** mostrando evolução dos agendamentos por data
- **Correlação de Pearson** entre idade dos clientes e número de agendamentos
- Classificação das variáveis segundo as **escalas de medição** (nominal, ordinal, intervalar, razão)

---

### Tecnologias Utilizadas
- **Linguagem:** Python 3
- **Bibliotecas:** Pandas, NumPy, Matplotlib, Seaborn, SciPy
- **Banco:** SQLite3

---

## Observações Finais

Estes dois projetos abordam **diferentes aspectos do mundo de banco de dados**:

- O **primeiro** com foco em modelagem e comandos SQL (relacional puro - PostgreSQL)
- O **segundo** com foco em **análise estatística**, **visualização de dados** e manipulação de dados usando **Python**

Ambos foram desenvolvidos com o intuito de aplicar na prática os conceitos teóricos vistos durante o curso.
