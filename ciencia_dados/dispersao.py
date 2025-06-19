# === 3. Dispersão ===
precos = servicos['preco']
print("\n Medidas de Dispersão")
print("Amplitude:", precos.max() - precos.min())
print("Variância:", precos.var())
print("Desvio Padrão:", precos.std())

# Boxplot - Preço dos serviços
plt.figure(figsize=(6, 5))
sns.boxplot(y=servicos['preco'])
plt.title('Boxplot dos Preços dos Serviços')
plt.ylabel('Preço (R$)')
plt.grid(True)
plt.show()