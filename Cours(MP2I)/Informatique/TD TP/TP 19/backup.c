#include <stdio.h>
#include <stdlib.h>

typedef int bool;
#define false 0
#define true 1


// pour tester

void affiche(int n, int* grille) {
  int n2 = n * n;
  for (int x = 0; x < n2; x++) {
    if (x % n == 0) { // ligne horizontale avant la ligne x
      for(int y = 0; y < n2; y++){
        if (y % n == 0) printf("+");
        printf("-");
      }
      printf("+\n");
    }
    for (int y = 0; y < n2; y++) {
      if (y % n == 0) printf("|"); // trait vertical avant le chiffre
      int v = grille[n2 * x + y];
      if (v == 0)      printf(".");
      else if (v <= 9) printf("%d", v);
      else             printf("%c", (char) (v - 10 + 'A'));
    }
    printf("|\n");
  }
  for(int y = 0; y < n2; y++){ // ligne horizontale en base de la grille
    if (y % n == 0) printf("+");
    printf("-");
  }
  printf("+\n");
}

void init_grille(int n, int* grille, char* s) {
  for (int i = 0; i < n * n * n * n; i++) {
    if (s[i] <= '9') grille[i] = (int) (s[i] - '0');
    else grille[i] = (int) (s[i] + 10 - 'A');
  }
}

bool cross(int n, int i, int j){
  int n2 = n * n;
  return (i / n2 == j / n2) || (i % n2 == j % n2)|| (i / (n2 * n) == j/(n2 * n));
}

bool cross (int n, int i, int j) {
    int n2 = n * n;
    return (i/n2 == j / n2) || (i % n2 == j % n2) || ((i / (n2 * n) == j / (n2 * n) )&&((i %n2)/n == (j % n2)/n));
}


bool est_correct (int n, int* grille, int i){
  int n4 = n*n*n*n ;
  if (grille[i]==0)return true;
  for (int j = 0; j < n4; j++){
    if (cross (n,i,j) && grille[i]==grille[j]) return false;
  } 
}

bool backtracking(int n, int* grille, int i){
  int n2 =n * n;
  int taille = n2 * n2;
  if (i==taille-1) 
    return true;
  else {
    if (grille[i+1] != 0)
      return backtracking(n,grille,i+1);
    for (int v = 1; v <= n2; v++){
      grille[i+1]=v;
      if (est_correct(n, grille, i+1) && backtracking(n,grille,i+1))
        return true;
    }
    grille[i+1]=0;
    return false;
  }
}

bool solution(int n, int* grille){
  return backtracking(n,grille,-1);
}

int main(){
  // Exemple de grille avec une unique solution
  int grille[81];
  char s[] = "200000060000075030048090100000300000300010009000008000001020570080730000090000004";
  init_grille(3, grille, s);
  

  // grille de taille 4^4 = 256
  int grille4[256];
  char s4[] = "GF1230AB6000800990000000000000000000200000000000000000000000GABC00B4680000000010000070000420000G08000009000040000000000E00000000000000000000042000051000000000000009F00000000000000080001040000000000000000000GEFG00000000000000A5000420000000832C90000050000076";
  init_grille(4, grille4, s4);
  affiche(4, grille4);
  printf("%d\n",solution(4,grille4));
}
