#include "myboolean.h"
#include "listes.h"

// graphe non orienté

// les sommets sont les entiers 0, 1, ..., n-1


#ifndef GRAPHE
#define GRAPHE

typedef struct Graphe graphe;

// Crée un graphe à n >= 0 sommets ne contenant aucune arête
graphe* graphe_creer(int n);

// Nombre de sommets du graphe
int graphe_taille(graphe* g); 

// Ajoute l'arête {u,v} dans le graphe si elle n'y est pas déjà
void graphe_ajoute_arete(graphe* g, int u, int v);

// indique si l'arête {u, v} est dans le graphe g
bool graphe_contient_arete(graphe* g, int u, int v);

// renvoie la liste des voisins de u dans g, triée par ordre croissant
liste* graphe_voisins(graphe* g, int u);

// libère toute la mémoire occupée par le graphe g.
// Ceci inclut les listes de voisins
void graphe_libere(graphe* g);


#endif
