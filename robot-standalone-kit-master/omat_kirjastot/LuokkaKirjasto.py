# -*- coding: utf-8 -*-
"""
Created on Tue Oct 10 12:03:57 2017

@author: Iso Wee
"""

'''Tämä on testikirjasto robottihommia varten. Ei mitään sen suurempaa ideaa kuin testata että homma
rokkaa'''

#Tätä käytetään kustoimoiduille keywordien nimille
from robot.api.deco import keyword

__version__ = '0.1'
    
class LuokkaKirjasto:

    tyyppi = 'pääluokka'         # class variable shared by all instances

    def __init__(self):
        self.name = "ewrtert"    # instance variable unique to each instance
       
    def shaibaa(self):
        print "No terve"
    
    @keyword('Tassapa Sulle Uus keywordi')
    def pillu(self):
        print "tereve"

        
'''    
print Luokka.tyyppi

d = Luokka('alaluokka')

print d.name
print d.tyyppi'''