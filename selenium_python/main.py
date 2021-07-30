from selenium import webdriver

from selenium.webdriver.common.keys import Keys



# ==================================================================================================
# Fonctions
# ==================================================================================================

def aller_sur_une_url(myDriver, myUrl):
    myDriver.get(myUrl)

def get_driver(myBrowser):
    if myBrowser == "Firefox":
        return webdriver.Firefox()

def obtenir_un_element_par_son_id(myDriver, myID):
    return myDriver.find_element_by_id(myID)

def saisir_du_texte(myElem, myText):
    myElem.send_keys(myText)

def appuyer_sur_une_touche(myElem, myKey):
    if myKey == "RETURN":
        myElem.send_keys(Keys.RETURN)



# ==================================================================================================
# Script
# ==================================================================================================

sujet = "marboeuf"
lieu = "35132"

# init du webdriver
curDriver = get_driver('Firefox')
# init url testée
aller_sur_une_url(curDriver, "https://www.pagesjaunes.fr/")

# bypass le block des RGPD en le validant (tout accepter)
curDriver.find_element_by_id("didomi-notice-agree-button").click()


searchBar_01 = obtenir_un_element_par_son_id(curDriver, "quoiqui")
searchBar_02 = obtenir_un_element_par_son_id(curDriver, "ou")


saisir_du_texte(searchBar_01, sujet)
saisir_du_texte(searchBar_02, lieu)

appuyer_sur_une_touche(searchBar_02, "RETURN")