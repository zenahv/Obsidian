<mark class=mint>Remarque</mark>
Pour les raccourcis, les Majuscules et minuscules sont importantes

Retourner en mode normal `Esc`
most hotkeys are in normal mode 

Annuler  `u`
Refaire  `Ctrl+r`

Quitter sans sauvegarder `:q!`
Quitter en sauvegardant `:wq`

Déplace le curseur au début de la ligne `0`
Déplace le curseur au début du mot `b`

Supprime le caractère survolé par le curseur `x`
Supprime du curseur jusqu'au prochain début de mot (caractère après un espace $\pm$) `dw`
Supprime du curseur jusqu'à la prochaine fin de mot `de`
Supprime du curseur jusqu'à la fin de la ligne`d$`
Commande `c` :
`c [nombre] [arguments] = d[nombre] [arguments] puis i`

`d` est une "commande" qui prend une ou + motion.s, on peut donc combiner des motions ou en ajouter avant
<mark class=purple>Exemple</mark>
`0d$` supprime la ligne entière (`dd` est un alias plus rapide pour `0d$`)
`bd2e` met le curseur au début du mot actuel, et supprime 2 mots (garde l'espace)
`bce` Supprime le mot actuel, puis active le mode insertion avant le mot suivant

Mode insertion avant le caractère sélectionné `i`
Mode insertion après le caractère sélectionné `a`
Mode insertion à la fin de la ligne `A/Shift+a`
<small>Mode insertion, crée une nouvelle ligne sous la ligne sélectionnée (ne la coupe pas) et déplace le curseur dessous</small> `o`

Paste le registre (par défaut ") `p`
<mark class=cyan>Note</mark> Lorsque l'on supprime quelque chose, il est stocké dans ce même registre, `dd` met le `\n` dans le registre

`r [caractère]` remplace le caractère survolé par celui indiqué

`Ctrl + g` affiche la position dans un fichier