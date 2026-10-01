import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("Projetos_Department.csv")

df2 = pd.read_csv("DepartamentosFuncionarios.csv")

print(df2.head())

fig,ax = plt.subplots(nrows=1,ncols=2,figsize=(8,5))

ax[0].bar(df["Dname"],df["Projetos"],color="purple")

ax[0].set_title("Projetos por Departamento")
ax[0].set_xlabel("Departamento")
ax[0].set_ylabel("Qtd Projetos")

ax[1].bar(df2["Dname"],df2["Empregados"],color="blue")

ax[1].set_title("Funcionarios por Departamento")
ax[1].set_xlabel("Departamento")
ax[1].set_ylabel("Qtd Funcionarios")

plt.tight_layout()
plt.show()