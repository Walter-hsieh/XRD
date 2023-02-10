import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors

colors = mcolors.TABLEAU_COLORS

color_list = list(colors.values())

df = pd.read_csv("5L-all.csv")

print(df["angle"])

df_filtered = df.loc[(df["angle"]>5) & (df["angle"]<29)]

print(df_filtered)

colnames = df_filtered.columns




columns = len(df_filtered.columns)
print(columns)

print(df_filtered.iloc[:,1:columns])



fig, axs = plt.subplots(columns-1)
for i in range(columns-1):
	label = "5L-" + str(i)
	axs[i].plot(df_filtered["angle"], df_filtered.iloc[:,i+1], label=label, color = color_list[i])
	axs[columns-2].set_xlabel("2 Theta")
	axs[2].set_ylabel("Intensity")
	axs[i].legend( 
		loc=7, 
		fontsize=10, 
		)

plt.show()

fig, ax = plt.subplots()
for i in range(columns-1):
	label = "5L-" + str(i)
	plt.plot(df_filtered["angle"], df_filtered.iloc[:,i+1], label=label, color = color_list[i])
	ax.set_xlabel("2 Theta")
	ax.set_ylabel("Intensity")
	ax.legend(loc=7, fontsize=10)
plt.show()
