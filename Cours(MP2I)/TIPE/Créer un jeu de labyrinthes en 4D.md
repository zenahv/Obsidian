- Labyrinthes
	Renderer : Vulkan
	Slicing + projection 3D en 2D

# Principe
On lance le jeu, on a un labyrinthe $5\times{5}\times{5}\times{5}$ généré aléatoirement, et il faut en sortir 

Pour stocker les murs, on prend 4 tableaux de $4\times 5\times 5 \times 5$  (1 par dimension, sans les bordures du labyrinthes)

# Algorithme de génération de labyrinthe
- Wilson's Algorithm
- Origin shift algorithm
