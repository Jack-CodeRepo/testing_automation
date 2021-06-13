*** Settings ***

Documentation
...     ============================================================
...     Test pour faire une recherche d'un element sur github.com
...
...     ============================================================

Resource            %{ROBOT_PATH}${/}3_2_2${/}resources${/}navigation.robot


Suite Teardown      Run Keywords
...                 navigation.Fermer Le Navigateur
...                 Run Keyword If All Tests Passed  Log To Console  ${TAG_SUCCESS} Victoire du codeur amateur Jack-CodeRepo.    



*** Variables ***

${url}          https://github.com/
${browser}      firefox
${TAG_INFO}     [INFO]
${TAG_SUCCESS}  [SUCCESS]


*** Test Cases ***
Test De Navigation Sur Url
    [Documentation]
    ...     On navigue vers le site spécifié

    navigation.Naviguer Vers Un Site Web    ${url}      ${browser}
    Log To Console  \n${TAG_INFO} Accès à ${url} .





Test De Recherche D Un Sujet Sur Github
    [Documentation]
    ...     On recherche un sujet spécifié en argument

    ${recherche}=   Set Variable  user:Jack-CodeRepo
    navigation.Rechercher Sur GitHub    user:Jack-CodeRepo
    Log To Console  \n${TAG_INFO} Recherche de ${recherche} sur ${url} .





Test Pour Revenir Sur La Page D Acceuil Github
    [Documentation]
    ...     Revenir sur la page d'acceuil de Github

    navigation.Revenir A La Page D Acceuil GitHub
    Log To Console  \n${TAG_INFO} Retour sur la page d'acceuil de ${url} .
 




Test De Recherche D Un Sujet Sur Github Avec Autre Methode
    [Documentation]
    ...     On recherche un sujet spécifié en argument
    ...     La différence se fait que le nom du KW appelé est composé de deux variables ${type} et ${string}.
    ...     "user:Jack-CodeRepo" est donc décomposé en deux éléments distincts "user" et "Jack-CodeRepo"
    ...     Le mot clef     navigation.Rechercher ${type} ${string} sur GitHub  fera une recherche en ajoutant ":"
    ...     entre les deux éléments.

    navigation.Rechercher user Jack-CodeRepo sur GitHub
    Log To Console  \n${TAG_INFO} Execution du KW qui contient les arguments dans son appel .
