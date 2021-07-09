from selenium import webdriver

TAG_SUCCESS = "[SUCCESS]"
TAG_ERROR = "[ERROR]"

url_tested = "https://github.com/Jack-CodeRepo"

separator = "-----------------------------------------------------------------"

def launchBrowser():
    print(f"{separator}\nBrowser launched")
    myBrowser = webdriver.Firefox()
    return myBrowser


def closeBrowser(myBrowser):
    print(f"Browser closed\n{separator}")
    myBrowser.quit()


def goToUrl(url, myBrowser):
    myBrowser.get(url)
    return myBrowser


def checkTitle(url, expectedString, myBrowser):
    myBrowser = goToUrl(url, myBrowser)
    if expectedString in myBrowser.title:
        print(f"{TAG_SUCCESS} text '{expectedString}' found in title of {url}")
    else:
        print(f"{TAG_ERROR} text '{expectedString}' not found in title of {url}")


# first test
print("First test")
browser = launchBrowser()
checkTitle(url_tested, "Jack-CodeRepo", browser)
closeBrowser(browser)

# second test
print("Second test")
browser = launchBrowser()
checkTitle(url_tested, "Jean", browser)
closeBrowser(browser)

# Third test
print("Third test")
browser = launchBrowser()
checkTitle(url_tested, "Jack-CodeRepo", browser)
checkTitle(url_tested, "Jean", browser)
closeBrowser(browser)
