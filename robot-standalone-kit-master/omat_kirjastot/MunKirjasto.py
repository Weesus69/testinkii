# -*- coding: utf-8 -*-
"""
Created on Mon Oct 09 11:40:21 2017

@author: Iso Wee
"""

'''Tämä on testikirjasto robottihommia varten. Ei mitään sen suurempaa ideaa kuin testata että homma
rokkaa'''

#Tätä käytetään kustoimoiduille keywordien nimille
from robot.api.deco import keyword

__version__ = '0.1'
    
def keyword():
    pass

def terve():
    print "tervepä terve!"
        
def hello(name):
    print "Hello you ex- %s!" % name
    
'''seuraava metodi ei ole keyword koska se alkaa alaviivalla'''
def _taaEioleKeyword():
    pass
    
#Kustomoitu keyword, joka ei vittu jostaki syystä toimi. Tai varmaankin vaatii luokkamäärittelyn, Hohhoijaa..
'''@keyword()
   def tulosta_kyba():
       for x in range(1,10):
           print x'''


