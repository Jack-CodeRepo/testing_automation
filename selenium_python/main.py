from selenium import webdriver

from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()
driver.get("https://www.pagesjaunes.fr/")

sujet = "marboeuf"
lieu = "35132"

driver.find_element_by_id("didomi-notice-agree-button").click()

searchBar_01 = driver.find_element_by_id("quoiqui")
searchBar_02 = driver.find_element_by_id("ou")

searchBar_01.send_keys(sujet)
searchBar_02.send_keys(lieu)

searchBar_02.send_keys(Keys.RETURN)

