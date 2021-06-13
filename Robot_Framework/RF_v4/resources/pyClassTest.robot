*** Settings ***

Documentation
...     ============================================================
...     Test pour faire une recherche d'un element sur github.com
...
...     ============================================================

Resource             %{ROBOT_PATH}${/}4${/}resources/input_test.robot
Library             %{ROBOT_PATH}${/}4${/}python_kw/pyKWClass.py        WITH NAME    PC




***Keywords***
Premier Test
    ${msg}=     PC.courgette  ratatouille  gateau
    Log To Console  \n${msg}  stream=STDOUT  no_newline=False

Second Test
    ${msg}=     PC.concombre  salade  soupe
    ${msg}=     input_test.Coloriser La String  ${cyan}  ${msg}
    Log To Console  \n${msg}  stream=STDOUT  no_newline=False
