# coding: utf-8
***Settings***
Documentation



Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}gherkin${/}gherkin_github.robot
Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}RF_kw${/}navigation.robot
Resource            %{ROBOT_PATH}${/}RF_v4${/}JDD${/}github01.robot



Suite Teardown      navigation.Fermer Le Navigateur


***Test Cases***

L Utilisateur Fait Une Recherche Sur GitHub
    Given Un Visiteur Navigue Vers Github
    Then Un Visiteur Recherche user:Jack-CodeRepo Sur Github