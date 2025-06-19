# === 1. Escalas de Medição ===
print(" Escalas de Medição")
print("""
- Nominal: nome do serviço, status
- Ordinal: status do agendamento (Agendado < Concluído < Cancelado)
- Intervalar: data de nascimento
- Razão: idade, preço, quantidade de agendamentos
""")

import pandas as pd

# Dados simulando clientes e agendamentos
dados = {
    'nome_cliente': ['Amanda', 'Bruna', 'Carlos', 'Daniela', 'Eduardo'],  # Nominal
    'status_agendamento': ['Agendado', 'Concluído', 'Cancelado', 'Concluído', 'Agendado'],  # Ordinal
    'data_nascimento': ['1990-05-10', '1985-08-20', '2000-12-15', '1995-03-30', '1988-07-01'],  # Intervalar
    'idade': [34, 39, 24, 29, 36],  # Razão
    'preco_servico': [120.0, 80.0, 150.0, 200.0, 90.0],  # Razão
    'qtd_agendamentos': [5, 8, 2, 10, 6]  # Razão
}

# Criar DataFrame
df = pd.DataFrame(dados)

# Converter coluna de datas para o tipo datetime
df['data_nascimento'] = pd.to_datetime(df['data_nascimento'])

# Exibir tabela
print("Tabela com diferentes escalas de medição:")
df
