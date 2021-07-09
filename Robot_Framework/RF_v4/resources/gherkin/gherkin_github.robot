# coding: utf-8
*** Settings ***
Documentation


Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}RF_kw${/}github.robot
Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}RF_kw${/}navigation.robot



***Variables***
${url}      https://github.com/



***Keywords***
Un Visiteur Recherche ${recherche} Sur Github
    [Documentation]
    ...     On recherche un sujet spécifié en argument
    ...     name_variables:
    ...         ${recherche}    recherche à faire dans GitHub
    github.Rechercher Sur GitHub    ${recherche}
    Log To Console  \n${TAG_INFO} Recherche de ${recherche} sur Github .



Un Visiteur Revient Sur La Page D Acceuil Github
    [Documentation]
    ...     Revenir sur la page d'acceuil de GitHub
    github.Revenir A La Page D Acceuil Github
    Log To Console  \n${TAG_INFO} Retour sur la page d'acceuil de Github.



Un Visiteur Navigue Vers Github
    [Documentation]
    ...     Naviguer vers GitHub
    navigation.Naviguer Vers Un Site Web    ${url}  ${MY_BROWSER}