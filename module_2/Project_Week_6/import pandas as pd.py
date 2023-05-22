import pandas as pd
import numpy as np
from plotly import express as px
from sklearn.cluster import KMeans
from sklearn.preprocessing import OneHotEncoder
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler
from matplotlib import pyplot as plt
from mpl_toolkits import mplot3d as m3d


df = pd.read_csv('audio_features_short.csv', sep=',')
print(len(df))
df = df.drop_duplicates()
print(len(df))
df.dropna(subset=["item","genre","id","name","artist","danceability","energy","key","mode","loudness","speechiness","acousticness","instrumentalness","liveness","valence","tempo","duration_ms"], inplace=True)


df1=df[["id","danceability","energy","key","mode","loudness","speechiness","acousticness","instrumentalness","valence","tempo"]]
scaler = StandardScaler()
X_normalized = scaler.fit_transform(df1[["danceability","energy","key","mode","loudness","speechiness","acousticness","instrumentalness","valence","tempo"]])
df_normalized = pd.DataFrame(X_normalized, columns=["danceability","energy","key","mode","loudness","speechiness","acousticness","instrumentalness","valence","tempo"])
pca = PCA(n_components=10)
pca.fit(X_normalized)
X_pca = pca.transform(X_normalized)
kmeans = KMeans(n_clusters=4, n_init=10)
kmeans.fit(X_pca)

cluster_ids = KMeans(n_clusters=20, n_init=10).fit_predict(X_normalized)
cluster_distances = kmeans.transform(X_pca)
cluster_distances = kmeans.transform(X_pca)

plt.figure(figsize=(10,10))
for c in np.unique(cluster_ids):
    plt.scatter(X_pca[cluster_ids == c, 0], X_pca[cluster_ids == c, 1], marker='.', s=12)

