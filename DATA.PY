import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('penjualan.csv')

produk_terlaris = df.groupby('produk')['jumlah_terjual'].sum().sort_values(ascending=False)

print("Produk terlaris:")
print(produk_terlaris)

produk_terlaris.plot(kind='bar', color='skyblue')
plt.title('Produk Terlaris')
plt.xlabel('Produk')
plt.ylabel('Jumlah Terjual')
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
