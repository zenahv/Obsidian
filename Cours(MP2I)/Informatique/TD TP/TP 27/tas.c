#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include <time.h>

struct Couple {
    int prio;
    int valeur;
};
typedef struct Couple couple;

struct Tas {
    int capacite; // toujours une puissance de 2
    int taille;
    couple* tab;
};
typedef struct Tas tas;
// Si t représente un tas binaire, alors t->taille + 1 est l'indice du premier emplacement libre.
// Les éléments du tas binaire ont les indices 1 à t->taille

// crée un tas binaire de hauteur maximale initialement fixée à h (i.e. capacité 2^(h +1))
tas* tas_create(int h){
    assert(h >= -1);
    tas* t = malloc(sizeof(tas));
    t->capacite = 1 << (h + 1); // 2^(h + 1)
    t->tab = malloc(t->capacite * sizeof(couple));
    t->taille = 0;
    return t;
}

void tas_delete(tas* t){
    free(t->tab);
    free(t);
}

bool tas_is_empty(tas* t){
    return t->taille == 0;
}

void tas_incr_max_height(tas* t){
    couple* tab_old = t->tab;
    t->tab = malloc(2 * t->capacite * sizeof(couple));
    for (int i = 1; i <= t->taille; i++){
        t->tab[i] = tab_old[i];
    }
    free(tab_old);
    t->capacite = 2 * t->capacite;
}

void tamisage_haut(tas* t, couple x, int i){
    if (t->tab)
}