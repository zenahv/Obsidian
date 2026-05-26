#include <stdlib.h>
#include <stdio.h>
#include "listes.h"
#include "graphes.h"

// Implémentation par listes d'adjacence
// On garantit que les listes d'adjacences sont toujours triées par ordre croissant

typedef struct Graphe {
  int taille;
  liste** adj;
} graphe;

graphe* graphe_creer(int n) {
  if (n < 0) { 
    printf("Tentative de créer un graphe avec un nombre négatif de sommets.\n");
    exit(EXIT_FAILURE);
  }
  graphe* g = malloc(sizeof(graphe));
  g->taille = n;
  g->adj = malloc(n * sizeof(liste*));
  for (int i = 0; i < n; i++) {
    g->adj[i] = NULL;
  }
  return g;
}
int graphe_taille(graphe* g) {
  return g->taille;
}

void graphe_ajoute_arete(graphe* g, int u, int v) {
  int n = g->taille;
  if (u < 0 || v < 0 || u >= n || v >= n) { 
    printf("graphe_ajoute_arete : sommets hors des bornes du graphe.\n");
    exit(EXIT_FAILURE);
  }
  g->adj[u] = liste_insere(v, g->adj[u]);
  g->adj[v] = liste_insere(u, g->adj[v]);
}

bool graphe_contient_arete(graphe* g, int u, int v) {
  int n = g->taille;
  if (u < 0 || v < 0 || u >= n || v >= n) { 
    printf("graphe_contient_arete : sommets hors des bornes du graphe.\n");
    exit(EXIT_FAILURE);
  }
  for (liste* l = g->adj[u]; l != liste_vide; l = liste_queue(l)) {
    if (liste_tete(l) == v) return true;
    else if (liste_tete(l) > v) return false;
  }
  return false;
}

liste* graphe_voisins(graphe* g, int u) {
  int n = g->taille;
  if (u < 0 || u >= n) { 
    printf("graphe_voisin : sommet hors des bornes du graphe.\n");
    exit(EXIT_FAILURE);
  }
  return g->adj[u];
}

void graphe_libere(graphe* g) {
  for (int i = 0; i < g->taille; i++) {
    liste_libere(g->adj[i]);
  }
  free(g);
}