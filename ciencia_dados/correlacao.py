# === 4. Correlação idade x agendamentos ===
freq_agendamentos = agendamentos['cliente_id'].value_counts().sort_index()
clientes['agendamentos'] = clientes['cliente_id'].map(freq_agendamentos).fillna(0).astype(int)

correlacao, _ = pearsonr(clientes['idade'], clientes['agendamentos'])
print("\n Correlação entre idade e agendamentos (Pearson):", correlacao)