#!/usr/bin/env python
"""
    Si une fonction est déclarée hors class, elle ne pourra pas etre appelée

"""
from robot.api.deco import keyword
from pathlib import Path



# KW en class
class myPythonKW:
    # Si set à False, seules les fonctions décorées avec @keyword sont détectées par robot
    ROBOT_AUTO_KEYWORDS = False
    def addition_a_deux_entrees(self, a, b):
        res = int(a) + int(b)
        string = "class"
        return res, string

    @keyword
    def obtenir_le_chemin_parent(self, fichier):
        string = "class"        
        return Path(fichier).parent, string


    @keyword
    def obtenir_l_extension(self, fichier):
        string = "class"        
        return Path(fichier).suffix, string



