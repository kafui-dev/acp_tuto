# ============================================
# 1️⃣ Chargement des packages
# ============================================
install.packages("FactoMineR")
install.packages("factoextra")

library(FactoMineR)
library(factoextra)

# ============================================
# 2️⃣ Chargement du dataset
# Remplacez 'wine' par votre propre dataset si besoin
# ============================================
# Dataset Wine UCI (colonne 1 = classe, colonnes 2-14 = variables numériques)
data(wine)  # ou read.csv("votre_fichier.csv")
head(wine, 5)

# ============================================
# 3️⃣ Séparation des variables
# ============================================
Y <- wine[, 1]      # variable qualitative (classe)
X <- wine[, -1]     # variables quantitatives
sapply(X, class)    # vérifie que toutes les colonnes sont numériques

# ============================================
# 4️⃣ ACP avec FactoMineR
# ============================================
res_pca <- PCA(
  wine,
  scale.unit = TRUE,    # centrage-réduction automatique
  quali.sup = 1,        # colonne 1 = qualitative
  graph = FALSE         # pas de graphiques automatiques
)

# ============================================
# 5️⃣ Valeurs propres et inertie
# ============================================
res_pca$eig             # eigenvalues, % variance, % cumulée
fviz_eig(res_pca, addlabels = TRUE, ylim = c(0, 50))  # scree plot

# ============================================
# 6️⃣ Cercle des corrélations (variables)
# ============================================
fviz_pca_var(
  res_pca,
  col.var = "cos2",                     # couleur selon qualité de représentation
  gradient.cols = c("#00AFBB","#E7B800","#FC4E07"),
  repel = TRUE
)

# Contribution et cos² des variables
res_pca$var$contrib[,1:2]  # contributions aux 2 premiers axes
res_pca$var$cos2[,1:2]     # qualité de représentation

# ============================================
# 7️⃣ Graphique des individus (individus colorés par classe)
# ============================================
fviz_pca_ind(
  res_pca,
  habillage = wine$Class,               # couleur selon classe
  addEllipses = TRUE,
  ellipse.type = "confidence",
  repel = TRUE
)

# Cos² des individus
res_pca$ind$cos2[,1:2]   # qualité de représentation sur axes 1 et 2

# ============================================
# 8️⃣ Biplot complet (individus + variables + classes)
# ============================================
fviz_pca_biplot(
  res_pca,
  habillage = wine$Class,
  addEllipses = TRUE,
  ellipse.type = "confidence",
  col.var = "contrib",                   # couleur des variables selon contribution
  gradient.cols = c("#00AFBB","#E7B800","#FC4E07"),
  repel = TRUE
)

# ============================================
# 9️⃣ Interprétation
# - Examiner eigenvalues et scree plot pour nombre de composantes
# - Identifier variables les plus contributives
# - Vérifier les cos² pour individu et variable
# - Observer séparation des classes / clusters
# ============================================
