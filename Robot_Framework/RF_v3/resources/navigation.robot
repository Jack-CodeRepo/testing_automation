*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn



*** Keywords ***

Naviguer Vers Un Site Web
    [Documentation]     Ouvre un navigateur et navigue vers l'url spécifiée
    ...
    ...     Arg01:  ${webSite}:     site web ciblé par le test
    ...     Arg02:  ${browser}:     navigateur utilisé pendant le test

    [Arguments]     ${webSite}  ${browser}

    Open Browser    ${website}  ${browser}




Rechercher Sur GitHub
    [Documentation]
    ...     Rechercher un sujet sur youtube
    ...
    ...     Arg01:  ${sujet}:  sujet recherché

    [Arguments]     ${sujet}

    navigation.Recherche Effective Gituhb  ${sujet}




Rechercher ${type} ${string} sur GitHub
    [Documentation]
    ...     Rechercher un sujet sur youtube
    ...
    ...     Arg01:  ${type}:    le type d'élément cherché sur github (user)
    ...     Arg02:  ${string}:  la string d'élément cherché sur github

    ${sujet}=     Set Variable    ${type}:${string}

    navigation.Recherche Effective Gituhb  ${sujet}





Recherche Effective Gituhb
    [Documentation]
    ...     Factorisation de la recherche sur Github pour:
    ...         navigation.Rechercher Sur GitHub
    ...         navigation.Rechercher ${type} ${string} sur GitHub

    [Arguments]     ${querry}

    ${locator}=                 Set Variable    //*/label/input[@name="q"]
    ${search_validation}=       Set Variable    //*/label/*/ul[@id="jump-to-results"]

    Wait Until Page Contains Element  ${locator}  timeout=None  error=None
    Input Text      ${locator}      ${querry}
    Click Element  ${search_validation}     modifier=False
    Wait Until Page Contains  view all results  timeout=None  error=None





Revenir A La Page D Acceuil GitHub
    [Documentation]
    ...     Revenir sur la page d'acceuil de Github

    ${locator}=     Set Variable  //*/a[@class="mr-4"]

    Click Element  ${locator}     modifier=False





Fermer Le Navigateur
    [Documentation]
    ...     Ferme le navigateur utilisé par le test

    Close Browser





