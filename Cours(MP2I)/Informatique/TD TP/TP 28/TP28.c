#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdint.h>
#include <myboolean.h>

char* texte (char* nom, int taille) { //taille en Mo
    char* t = malloc((taille << 20) * sizeof(char));
    FILE* f = fopen(nom, "r");
    int c = fgetc(f); // fgetc a 257 valeurs possibles : EOF = -1, et les caractères de 0 à 256
    int i = 0;
    while (c != EOF) {
        t[i] = c;
        i++;
        c = fgetc(f);
    }
    for (int k = i; k < taille << 20; k++)
        t[k] = '\0';
    fclose(f);
    return t;
}


/**************/
/* Exercice 1 */
/**************/

int recherche_naive(char* s, char* t) {
 // À compléter
}

/**************/
/* Exercice 2 */
/**************/

uint64_t hash(int a, int p, char* t, int k){
    uint64_t h = 0;
    for(int i = 0; i < k; i++){
        h = (a * h + ((unsigned char) t[i])) % p;
    }
    return h;
}

/**************/
/*    MAIN    */
/**************/

int main () {
    char* t = texte("À_la_recherche_du_temps_perdu.txt", 8); // 7,7 Mo
    char s[] = "u moment où l";

    clock_t chrono = clock();

    printf("Nombre d'occurences du motif dans le texte : %d\n", recherche_naive(s, t));
    
    chrono = clock() - chrono;
    free(t);
    printf("Résultat obtenu en %fs.\n\n", (double) chrono / CLOCKS_PER_SEC);

}