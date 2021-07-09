#!/usr/bin/env python
# coding: utf-8
# ==================================================================================================

class pyKWClass:
    def courgette(self, arg01, arg02):
        return f"courgette: {arg01} {arg02}"

    def concombre(self, arg01, arg02):
        return f"concombre: {arg01} {arg02}"


# Faire une classe dans une classe ne fonctionne pas
# usage voulu en RF:   ${var}=    pyKWClass.KW01.courgette  coucou    salut
# class pyKWClass:
#     class KW01:
#         def courgette(self, arg01, arg02):
#             return f"courgette: {arg01} {arg02}"

#     class KW02:
#         def concombre(self, arg01, arg02):
#             return f"concombre: {arg01} {arg02}"