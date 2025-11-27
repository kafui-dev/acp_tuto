# ACP Process — Analyse en Composantes Principales (ACP)

Ce dépôt contient une étude d'Analyse en Composantes Principales (ACP) réalisée sur le jeu de données "wine" (fourni par le package `rattle`). L'objectif est d'illustrer les étapes classiques d'une ACP : préparation des données, réalisation de l'ACP avec `FactoMineR`, visualisation avec `factoextra`, et interprétation des résultats.

## Contenu du dépôt

- `main.R` : le code complet permettant de reproduire l'analyse (chargement des données, pré-traitement, exécution de l'ACP et génération des graphiques).
- `acp-process.rmd` : rapport R Markdown contenant l'exposé détaillé de l'analyse, des graphiques et des interprétations (version narrative du travail).

## Comment reproduire l'analyse

Prérequis :
- R (version récente recommandée)
- Packages R : `FactoMineR`, `factoextra`, `rattle` (pour le dataset `wine`).

Exemples de commandes R pour installer les dépendances :

```r
install.packages(c("FactoMineR", "factoextra", "rattle"))
```

Pour exécuter le script principal :

- Dans R / RStudio : ouvrez et lancez `main.R`.
- En ligne de commande (PowerShell) :

```powershell
Rscript "main.R"
```

Pour générer le rapport HTML (optionnel) : ouvrez `acp-process.rmd` dans RStudio et cliquez sur "Knit" ou utilisez `rmarkdown::render("acp-process.rmd")`.

## Jeu de données

L'analyse utilise le jeu de données `wine` fourni par le package `rattle`. Les données incluent 178 observations et 13 variables quantitatives décrivant des propriétés chimiques de vins, ainsi qu'une variable qualitative (Type).

## Remarque sur l'utilisation de l'IA

Pour accélérer la rédaction du rapport, certains paragraphes descriptifs ont été rédigés ou aidés par une intelligence artificielle. Cette aide a uniquement servi à accélérer la rédaction et la mise en forme du document. L'analyse des données, les calculs, les visualisations et les conclusions présentées dans ce dépôt ont été réalisés et validés par l'auteur du projet.

## Contact

Pour toute question concernant l'analyse ou la reproduction des résultats, contactez l'auteur (Kafui Homevo) via les canaux habituels.

