#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

// Arbres binaires dont les étiquettes sont des caractères
struct Noeud {
    char val;
    struct Noeud* gauche;
    struct Noeud* droit;
};


typedef struct Noeud arbre_bin;

// variable globale arbre vide 
arbre_bin* vide = 0;

// constructeur des arbres binaires
arbre_bin* cons(char x, arbre_bin* gauche, arbre_bin* droit){
    arbre_bin* a = malloc(sizeof(arbre_bin));
    a->val = x;
    a->gauche = gauche;
    a->droit = droit;
    return a;
}

// libère la mémoire occupée par un arbre binaire
void libere(arbre_bin* a){
    if (a != 0){
        libere(a->gauche);
        libere(a->droit);
        free(a);
    }
}

////////////////////////////////////////////////////////////////////////////

// Files d'arbres binaires, de capacité capa, non redimensionnables.
struct Queue {
    arbre_bin** data;
    int capa;
    int taille;
    int sortie;
};

typedef struct Queue queue;

// Crée une file vide, de capacité capa
queue* create(int capa){
    queue* f = malloc(sizeof(queue));
    f->data = malloc(capa * sizeof(arbre_bin*));
    f->capa = capa;
    f->taille = 0;
    f->sortie = 0;
    return f;
}

bool is_empty(queue* f){
    return f->taille == 0;
}

// ajoute a en queue de la file f
void add(queue* f, arbre_bin* a){
    assert(f->taille < f-> capa);
    f->data[(f->sortie + f->taille) % f->capa] = a;
    f->taille++;
}

// retire l'arbre binaire en tête de la file f, et le renvoie
arbre_bin* take(queue* f){
    assert(f->taille > 0);
    arbre_bin* a = f->data[f->sortie];
    f->sortie = (f->sortie + 1 % f->capa);
    f->taille--;
    return a;
}

// libère la mémoire occupée par une file d'arbres binaires
void queue_free(queue* f){
    free(f->data);
    free(f);
}

////////////////////////////////////////////////////////////////////////////





int main(){
    // Arbre donné en exemple dans le TP.
    arbre_bin* a = cons('B', cons('A', vide, vide), cons('E', cons('C', vide, cons('D', vide, vide)), 
                                                              cons('G', cons('F', vide, vide), cons('H', vide, vide))));

    //
    //
    //


    // Nettoyage
    libere(a);
}