# === 5. Visualizações ===

# Histograma - Agendamentos por cliente
plt.figure(figsize=(8, 5))
clientes['agendamentos'].hist(bins=range(1, clientes['agendamentos'].max()+2), rwidth=0.8)
plt.title('Histograma de Agendamentos por Cliente')
plt.xlabel('Número de Agendamentos')
plt.ylabel('Quantidade de Clientes')
plt.grid(True)
plt.show()