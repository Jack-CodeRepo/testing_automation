# coding: utf-8

***Settings***

Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}keywords${/}api${/}github.robot
Resource            %{ROBOT_PATH}${/}RF_v4${/}resources${/}keywords${/}api${/}OpenData_Rennes.robot


***Test Cases***

Test API GITHUB
    github.Lister Les Depots Public D Un Utilisateur  Jack-CodeRepo
    github.Verifier Que Le Nom Utilisateur Soit Dans Son Url  Jack-CodeRepo


Test API OpenData_Rennes
    OpenData_Rennes.Rennes Open Data  53
    OpenData_Rennes.Rennes Open Data  76