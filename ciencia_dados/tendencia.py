# === 2. Tendência Central (preços dos serviços) ===
print("\n Tendência Central (Preços dos Serviços)")
print("Média:", servicos['preco'].mean())
print("Mediana:", servicos['preco'].median())
print("Moda:", servicos['preco'].mode()[0])



# Pizza - Status dos agendamentos
status_counts = agendamentos['status'].value_counts()
plt.figure(figsize=(6, 6))
plt.pie(status_counts, labels=status_counts.index, autopct='%1.1f%%', startangle=90)
plt.title('Distribuição dos Status de Agendamento')
plt.axis('equal')
plt.show()