***Settings***

Library     RequestsLibrary


***Variables***

${okStatus}     200


***Keywords***

Rennes Open Data
    [Documentation]     Exploitation des données Open Data de la ville de Rennes
    ...     Niveau de fréquentation maximale par ligne STAR 
    [Arguments]     ${ligne}
    ${url}=     Set Variable    https://data.rennesmetropole.fr/api/records/1.0/search
    Create Session      ROD    ${url}
    ${get}=     GET     url=${url}/?dataset=mkt-frequentation-niveau-freq-max-ligne&q=&facet=jour_semaine&facet=ligne&facet=tranche_horaire&facet=frequentation&facet=niveau_frequentation&refine.ligne=${ligne}           expected_status=${okStatus}
    ${json}=    Set Variable    ${get.json()}

    FOR  ${elem}    IN  ${json["records"]}
        FOR     ${field}    IN  @{elem}
            ${jourSemaine}=         Set Variable    ${field["fields"]["jour_semaine"]}
            ${trancheHoraire}=      Set Variable    ${field["fields"]["tranche_horaire"]}
            ${frequentation}=       Set Variable    ${field["fields"]["frequentation"]}
            Log To Console  Sur la ligne ${ligne}, jour ${jourSemaine}, tranche horaire ${trancheHoraire} la fréquentation est ${frequentation}
        END
    END

    