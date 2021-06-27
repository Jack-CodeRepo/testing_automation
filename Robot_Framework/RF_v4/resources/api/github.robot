***Settings***

Library     RequestsLibrary


***Variables***

${okStatus}     200


***Keywords***

Verifier Que Le Nom Utilisateur Soit Dans Son Url
    [Documentation]     GITHUB
    ...     Lister  les dépôts public d'un utilisateur
    ...     Arguments:
    ...         myUser: le nom de l'utilisateur à chercher
    [Tags]  GITHUB
    [Arguments]     ${myUser}

    ${url}=     Set Variable          https://api.github.com
    Create Session  Github  ${url}
    # get request
    ${myGet}=       GET     ${url}/users/${myUser}            expected_status=${okStatus}

    # obtaining json data obtained from previous request
    # the value is fetched from key 'url'
    ${gituserUrl}=      Set Variable    ${myGet.json()}[url]
    # generating a boolean checking if the value from json contains the data stored in ${user} argument
    ${bool}=      Run Keyword And Return Status
    ...     Should Contain      ${gituserUrl}  ${user}  msg=${user} not found in ${gitUserUrl}  values=True  ignore_case=False
    Run Keyword If  ${bool}  Log To Console     \n${user} found in ${gitUserUrl}



Lister Les Depots Public D Un Utilisateur
    [Documentation]     GITHUB
    ...     Lister  les dépôts public d'un utilisateur
    ...     Arguments:
    ...         myUser: le nom de l'utilisateur à chercher
    [Tags]  GITHUB
    [Arguments]     ${myUser}

    ${url}=         Set Variable    https://api.github.com
    ${myRepos}=     GET             ${url}/users/${myUser}/repos    expected_status=${okStatus}
    ${notRepo}=      Set Variable    ${myUser}/${myUser}

    FOR  ${element}  IN  ${myRepos.json()}
        FOR  ${idx}  ${field}    IN ENUMERATE    @{element}
            Continue For Loop If   """${notRepo}"""=="""${field["full_name"]}"""
            Log To Console  Depot ${idx}: ${field["full_name"]}
        END
    END
