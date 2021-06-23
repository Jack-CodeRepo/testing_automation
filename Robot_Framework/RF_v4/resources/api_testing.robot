***Settings***

Library     RequestsLibrary


***Variables***
${url}          https://api.github.com
${okStatus}     200


***Keywords***
Connexion Github
    [Arguments]     ${user}
    Create Session  Github  ${url}
    # get request
    ${myGet}=           GET     ${url}/users/${user}    expected_status=${okStatus}
    
    # obtaining json data obtained from previous request
    # the value is fetched from key 'url'
    ${gituserUrl}=      Set Variable    ${myGet.json()}[url]

    # generating a boolean checking if the value from json contains the data stored in ${user} argument
    ${bool}=      Run Keyword And Return Status
    ...     Should Contain      ${gituserUrl}  ${user}  msg=${user} not found in ${gitUserUrl}  values=True  ignore_case=False
    
    Run Keyword If  ${bool}  Log To Console     \n${user} found in ${gitUserUrl}