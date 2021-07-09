# coding: utf-8
*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

Resource    github_xpath.robot



*** Keywords ***
Rechercher Sur GitHub
    [Documentation]
    ...     Rechercher un sujet sur youtube
    ...
    ...     Arg01:  ${sujet}:  sujet recherché
    [Arguments]     ${sujet}
    github.Recherche Effective Github  ${sujet}



Rechercher ${type} ${string} sur GitHub
    [Documentation]
    ...     Rechercher un sujet sur youtube
    ...
    ...     Arg01:  ${type}:    le type d'élément cherché sur github (user)
    ...     Arg02:  ${string}:  la string d'élément cherché sur github

    ${sujet}=     Set Variable    ${type}:${string}
    github.Recherche Effective Github  ${sujet}



Recherche Effective Github
    [Documentation]
    ...     Factorisation de la recherche sur Github pour:
    ...         navigation.Rechercher Sur GitHub
    ...         navigation.Rechercher ${type} ${string} sur GitHub
    [Arguments]     ${querry}=${None}

    # On converti l'argument en booleen
    # Si ${querry} a une valeur         -> True
    # Si ${querry} n'a pas de valeur    -> False
    ${boolQuerry}=      Convert To Boolean  ${querry}
    # Si ${querry} est False, on attribu une valeure par défaut
    IF  not ${boolQuerry}
        ${querry}=  Set Variable  user:Yohann-Porhel
    END

    Wait Until Page Contains Element  ${githubSearchInput}  timeout=None  error=None
    Input Text      ${githubSearchInput}      ${querry}
    Click Element  ${githubValidateSearch}     modifier=False
    Wait Until Page Contains  view all results  timeout=None  error=None



Revenir A La Page D Acceuil Github
    [Documentation]
    ...     Revenir sur la page d'acceuil de Github

    [Arguments]     ${connecte}=False 
    Click Element   ${githubLienPageAcceuil}
    IF  not ${connecte}
        Element Should Be Visible  ${githubLienSignIn}  message=None
    END
