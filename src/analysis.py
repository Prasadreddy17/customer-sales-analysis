#Load Data
import pandas as pd

df = pd.read_csv("sales.csv")

print(df.head())

#Understand Data
print(df.info())
print(df.describe())

#Data Cleaning
df = df.dropna()
df = df.drop_duplicates()

#Analysis
print(df.groupby("City")["Sales"].sum())

#Sales by Category
print(df.groupby("Category")["Sales"].sum())

#Top Customers
print(df.groupby("Customer")["Sales"].sum().sort_values(ascending=False))

#Visualization
import matplotlib.pyplot as plt

df.groupby("City")["Sales"].sum().plot(kind="bar")
plt.title("Sales by City")

plt.savefig("chart.png")   # save chart
plt.show()