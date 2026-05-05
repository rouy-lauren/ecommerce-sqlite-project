import pandas as pd

df = pd.read_csv("dataset/df_Products.csv")

# Keep one row per product_id
df_clean = df.drop_duplicates(subset=["product_id"])

df_clean.to_csv("dataset/df_Products_clean.csv", index=False)

print("Original rows:", len(df))
print("Clean rows:", len(df_clean))