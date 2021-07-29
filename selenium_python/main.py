from selenium import webdriver

from selenium.webdriver.common.keys import Keys



def obtenir_un_element_par_son_id(myID):
    return driver.find_element_by_id(myID)

def saisir_du_texte(myElem, myText):
    myElem.send_keys(myText)

def appuyer_sur_une_touche(myElem, myKey):
    if myKey == "RETURN":
        myElem.send_keys(Keys.RETURN)





driver = webdriver.Firefox()
driver.get("https://www.pagesjaunes.fr/")

sujet = "marboeuf"
lieu = "35132"

# bypass le block des RGPD en le validant (tout accepter)
driver.find_element_by_id("didomi-notice-agree-button").click()

searchBar_01 = obtenir_un_element_par_son_id("quoiqui")
searchBar_02 = obtenir_un_element_par_son_id("ou")

saisir_du_texte(searchBar_01, sujet)
saisir_du_texte(searchBar_02, lieu)

appuyer_sur_une_touche(searchBar_02, "RETURN")