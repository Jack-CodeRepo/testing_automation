*** Settings ***

Documentation
...     ============================================================
...     Test pour faire une recherche d'un element sur github.com
...
...     ============================================================

Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}navigation.robot
Library             %{ROBOT_PATH}${/}RF_v4${/}python_kw/myPythonKW.py
Library             %{ROBOT_PATH}${/}RF_v4${/}python_kw/myPythonKWfunc.py

Suite Teardown      navigation.Fermer Le Navigateur


*** Variables ***

${url}          https://github.com/
${browser}      firefox
${TAG_INFO}    [INFO]


*** Test Cases ***

# ==================================================================================================
# tests mis en class python
# ==================================================================================================
Faire Une Addition
    [Documentation]  Faire une addition avec deux elements et renvoies le résultat

    ${valA}=    Set Variable  10
    ${valB}=    Set Variable  5

    # dans ce cas précis, le test echoue à l'execution du KW: non détecté car 
    # - KW dans la class
    # - dans la class est parametré     ROBOT_AUTO_KEYWORDS = False
    # - le decorator @keyword n'est pas positionné sur la methode   addition_a_deux_entrees()
    ${resultat}  ${string}=    myPythonKW.Addition A Deux Entrees  ${valA}  ${valB}

    Run Keyword If  ${resultat}>5       Log To Console  Le resultat est ${resultat} // Appel: ${string}  stream=STDOUT  no_newline=False



Afficher le chemin d'un fichier
    [Documentation]  Afficher le chemin parent d'un fichier

    ${file}=        Set Variable  %{ROBOT_PATH}/test_cases/python_kw_test.robot
    ${chemin}  ${string01}=      myPythonKW.obtenir_le_chemin_parent  ${file}
    ${extension}  ${string02}=   myPythonKW.Obtenir L Extension  ${file}

    ${string}=   Set Variable  \n${TAG_INFO} Le chemin est: ${chemin} // Appel: ${string01} \n${TAG_INFO} L'extension est: ${extension} // Appel: ${string02} 
    Log To Console  ${string}  stream=STDOUT  no_newline=False



# ==================================================================================================
# tests mis en fonction hors class
# ==================================================================================================
Autre Calcul
    ${valA}=    Set Variable  44
    ${valB}=    Set Variable  1235

    ${resultat}  ${string}=    soustraction_a_deux_entrees  ${valA}  ${valB}
    Run Keyword If  ${resultat}>0       Log To Console  \n${TAG_INFO} Le resultat est positif ( ${resultat} ) // Appel: ${string}  stream=STDOUT  no_newline=False
    Run Keyword If  ${resultat}<0       Log To Console  \n${TAG_INFO} Le resultat est negatif ( ${resultat} ) // Appel: ${string}  stream=STDOUT  no_newline=False




Afficher D Autres Choses
    ${file}=        Set Variable  %{ROBOT_PATH}/test_cases/python_kw_test.robot
    ${chemin}  ${string01}=      obtenir_le_nom_du_fichier  ${file}

    ${string}=   Set Variable  \n${TAG_INFO} Le nom du fichier ${file} est: ${chemin} // Appel: ${string01}
    Log To Console  ${string}  stream=STDOUT  no_newline=False