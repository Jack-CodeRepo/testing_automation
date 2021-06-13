#!/usr/bin/env python
"""


"""


from robot.api.deco import keyword
from pathlib import Path


# Si set à False, seules les fonctions décorées avec @keyword sont détectées par robot
ROBOT_AUTO_KEYWORDS = False
@keyword
def soustraction_a_deux_entrees(a, b):
    res = int(a) - int(b)
    string = "function"
    return res, string

@keyword
def obtenir_le_nom_du_fichier(fichier):
    string = "function"        
    return Path(fichier).name, string




