#include <stdlib.h>
#include <stdio.h>
#include "listes.h"
#include "myboolean.h"

typedef struct Maillon {
    int val;
    struct Maillon* suivant;
} liste;

liste* liste_vide = NULL;

liste* liste_cons(int x, liste* l) {
  liste* m = malloc(sizeof(liste));
  m->val = x;
  m->suivant = l;
  return m;
}

int liste_tete(liste* l){
    if (l == NULL) {
        printf("Tentative de trouver la tête d'une liste vide.\n");
        exit(EXIT_FAILURE);
    }
    return l->val;
}

liste* liste_queue(liste* l){
    if (l == NULL) {
        printf("Tentative de trouver la queue d'une liste vide.\n");
        exit(EXIT_FAILURE);
    }
    return l->suivant;
}

liste* liste_insere(int x, liste* l){
    if (l == NULL || l->val > x) return liste_cons(x, l);
    else if (l->val == x) return l;
    else {
        int v = l->val;
        liste* q = l->suivant;
        free(l);
        return liste_cons(v, liste_insere(x, q));
    }
}

void liste_libere(liste *l){
    while (l != NULL) {
        liste* m = l->suivant;
        free(l);
        l = m;
    }
}