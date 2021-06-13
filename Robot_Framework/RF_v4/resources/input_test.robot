# coding: utf-8
***Settings***


Library     Dialogs


***Variables***

${red}          \\033[31m
${green}        \\033[32m
${yellow}       \\033[33m
${blue}         \\033[34m
${magenta}      \\033[35m
${cyan}         \\033[36m
${endStyle}     \\033[0;0m




***Keywords***

Obtenir Une Valeure
    ${inputValue}=  Get Value From User  Saisissez une valeure  default_value=  hidden=False
    ${outputValue}=     input_test.Coloriser La String      ${green}    ${inputValue}

    Log To Console  \nLa valeur saisie est: ${outputValue}  stream=STDOUT  no_newline=False


Coloriser La String
    [Arguments]  ${couleur}   ${string}
    ${msg}=     Evaluate  "${couleur}${string}${endStyle}"
    
    [Return]      ${msg}