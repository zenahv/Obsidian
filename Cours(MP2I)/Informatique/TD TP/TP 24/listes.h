#include "myboolean.h"

// listes simplement chaînées, avec des éléments de type int

#ifndef LISTE
#define LISTE

typedef struct Maillon liste;

// liste vide
extern liste* liste_vide;

// renvoie la liste formée de x suivi de la liste l
liste* liste_cons(int x, liste* l);

// renvoie la valeur de tête d'une liste l non vide
int liste_tete(liste* l);

// renvoie la queue d'une liste l non vide.
// Aucun effet de bord, ne libère pas le maillon de tête
liste* liste_queue(liste* l);

// Entrée : x entier, l triée par ordre strictement croissant
// Sortie : une liste toujours en ordre strictement croissant, contenant x et les anciennes valeurs de l
//          Si x ne minore pas les valeurs de l, la liste est modifiée et les maillons de tête libérés
liste* liste_insere(int x, liste* l);

// libère la mémoire occupée par l
void liste_libere(liste *l);

#endif