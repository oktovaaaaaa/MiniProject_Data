import pandas as pd
import matplotlib.pyplot as plt

# 1. Baca data dari file
df = pd.read_csv('penjualan.csv')

# 2. Hitung total jumlah terjual per produk
produk_terlaris = df.groupby('produk')['jumlah_terjual'].sum().sort_values(ascending=False)

# 3. Tampilkan hasil
print("Produk terlaris:")
print(produk_terlaris)

# 4. Visualisasikan
produk_terlaris.plot(kind='bar', color='skyblue')
plt.title('Produk Terlaris')
plt.xlabel('Produk')
plt.ylabel('Jumlah Terjual')
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
