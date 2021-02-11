#!/usr/bin/env python
from PIL import Image
import os,sys

mw = 100
ms = 20

msize = mw*ms

toImage = Image.new('RGBA',(2000,2000))

for y in range(1,21):
    for x in range(1,21):
        try:
            fromImage = Image.open(r"../pictures/%s.jpeg" %str(ms*(y-1)+x))
            fromImage = fromImage.resize((100,100),Image.ANTIALIAS)
            toImage.paste(fromImage,((x-1)*mw,(y-1)*mw))
        except IOError:
            fromImage = Image.open(r"../pictures/0.png")

toImage.show()
toImage.save('../MH.png')
