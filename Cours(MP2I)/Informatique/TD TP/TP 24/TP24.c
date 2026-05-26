#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "listes.h"
#include "graphes.h"

typedef struct Activite {
    int d;
    int f;
} activite;

void activites_glouton(int n, activite* horaires, int m, bool* choix, int i_min){
    if (i_min < m){
        if (horaires[i_min].d >= m ){
            choix[i_min] = true;
            activites_glouton(n, horaires, horaires[i_min].f, choix, i_min + 1);
        } 
    }
    else {
        choix[i_min] = false;
        activites_glouton(n, horaires, m, choix, i_min+1);
    } 
}

bool* choix_activites (int n, activite* horaires){
    if (n >= 1) {
        bool* choix = malloc(n * sizeof(bool));
        int m = horaires[0].d;
        activites_glouton(n,horaires,m,choix,0);
        return choix;
    }
    else return NULL;
}

bool* ensemble_indep_intervalle(graphe* g){
    
}

/**********************************************/
/*                 Pour tester                */
/**********************************************/

// Renvoie un tableau d'horaires d'activités de taille n
// Comme dans l'énoncé, le tableau est trié par ordre croissant de date de fin
// Si le deuxième argument est à true, affiche les éléments du tableau
activite* genere_probleme(int n, bool affiche) {
    if (affiche) printf("Génération d'un tableau d'horaires de %d activités :\n", n);
    activite* t = malloc(n * sizeof(activite));
    for (int i = 0; i < n; i++) {
        if (i == 0) t[i].f = rand() % 100;
        else t[i].f = t[i-1].f + (rand() % 20);
        t[i].d = t[i].f - 1 - (rand() % 100);
        if (t[i].d < 0) t[i].d = 0;
        if (affiche) printf("Activité %d : %d -> %d\n", i, t[i].d, t[i].f);
    }
    printf("\n");
    return t;
}

// renvoie un graphe d'intervalles à n sommets
// Comme dans l'énoncé, ce graphe est généré à partir d'un tuple d'intervalles triés par borne supérieure
// Si le deuxième argument est à true, affiche les adjacences du graphe
graphe* genere_probleme_graphe(int n, bool affiche) {
    if (affiche) printf("Génération d'un graphe d'intervalles à %d sommets :\n", n);
    graphe* g = graphe_creer(n);
    activite* t = malloc(n * sizeof(activite));
    for (int i = 0; i < n; i++) {
        if (i == 0) t[i].f = rand() % 100;
        else t[i].f = t[i-1].f + (rand() % 20);
        t[i].d = t[i].f - 1 - (rand() % 100);
        if (t[i].d < 0) t[i].d = 0;
    }
    for (int i = n - 1; i > 0; i--) {
        int j = i - 1;
        while (t[i].d < t[j].f) {
            graphe_ajoute_arete(g, i, j);
            j--;
        }
    }
    free(t);
    if (affiche) {
        for (int i = 0; i < n; i++) {
            printf("%d voisin de : ", i);
            for(liste* l = graphe_voisins(g, i); l != liste_vide; l = liste_queue(l)) {
                printf("%d ", liste_tete(l));
            }
            printf("\n");
        }
        printf("\n");
    }
    return g;
}

int main () {
    srand(time(NULL));

    activite* t = genere_probleme(42, true);
    graphe* g = genere_probleme_graphe(42, true);

    free(t);
    graphe_libere(g);
}