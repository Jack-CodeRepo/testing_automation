*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn



*** Variables ***
${TAG_INFO}     [INFO]
${TAG_SUCCESS}  [SUCCESS]



*** Keywords ***
Naviguer Vers Un Site Web
    [Documentation]     Ouvre un navigateur et navigue vers l'url spécifiée
    ...
    ...     Arg01:  ${webSite}:     site web ciblé par le test
    ...     Arg02:  ${browser}:     navigateur utilisé pendant le test
    [Arguments]     ${webSite}  ${browser}
    Open Browser    ${website}  ${browser}
    Log To Console  \n${TAG_INFO} Accès à ${webSite} .




Fermer Le Navigateur
    [Documentation]
    ...     Ferme le navigateur utilisé par le test
    Close Browser





