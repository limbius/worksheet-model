# CNED Worksheet Model
Modèle de copie (écrit en LaTeX) destiné aux devoirs du CNED.

## Téléchargement
Veillez à conserver l'intégralité des fichiers du dossier `src`, à savoir :
- La *classe* `cned.cls` : "noyau" du modèle
- Le *logo* `cned.png` : image utilisée dans la classe
- Le *fichier source* `main.tex` où vous saisirez votre devoir

## Utilisation
**Attention:** écrivez seulement dans le fichier source `main.tex`.

Avant de saisir votre devoir, veillez à remplir les commandes :
- `\student` avec : votre **N° d'indicatif**, votre **nom**, votre **prénom**, votre **ville** puis votre **pays** de résidence.
- `\work` avec : le **code** de la matière, le **nom** de la matière et le **N°** du devoir.
- *Pour les devoirs de langue étrangère :* `\worklv` avec le **N°** de la LV concernée (LV1, LV2 ou LV3).

Enfin, écrivez votre devoir dans l'environnement `\document`. Veillez toutefois à garder la commande `\maketitle` en *pré-ambule* de cet environnement.
