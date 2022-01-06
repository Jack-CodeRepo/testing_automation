***Settings***
Documentation   Comment accéder à une valeur dans un dico autrement que par:
...                 ${mondico}["maclef"]
...             Solution:
...                 ${${mondico}.maclef}


***Variables***
&{magic}  a=a b c D
...         b=la suite

***Keywords***
try things '${ma_dico}' '${makhe}'
    ${aValue}=  Set Variable    ${${ma_dico}.${makhe}}
    Log To Console      \n${aValue}


***Test Cases***
print yay
    try things 'magic' 'b'