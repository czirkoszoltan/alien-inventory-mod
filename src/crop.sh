#!/bin/sh
convert Unitsmasks.png -crop 155x200+0+0 +repage sectoid_mask.png
convert Unitsmasks.png -crop 155x200+156+0 +repage muton_mask.png
convert Unitsmasks.png -crop 155x200+312+0 +repage floater_mask.png
convert Unitsmasks.png -crop 155x200+468+0 +repage snakeman_mask.png
convert Unitsmasks.png -crop 155x200+624+0 +repage ethereal_mask.png

convert \
    -size 320x200 xc:black \
    \( UP024.png -crop 155x200+165+0 +repage \
       sectoid_mask.png -composite \
       -resize 320x140 \
    \) -geometry +30+20 -composite \
    sectoid24.png

convert \
    -size 320x200 xc:black \
    \( UP020.png -crop 155x200+165+0 +repage \
       muton_mask.png -composite \
       -resize 320x110 \
    \) -geometry +38+36 -composite \
    muton24.png

convert \
    -size 320x200 xc:black \
    \( UP018.png -crop 155x200+165+0 +repage \
       floater_mask.png -composite \
       -resize 320x110 \
    \) -geometry +40+36 -composite \
    floater24.png

convert \
    -size 320x200 xc:black \
    \( UP030.png -crop 155x200+165+0 +repage \
       snakeman_mask.png -composite \
       -resize 320x110 \
    \) -geometry +40+36 -composite \
    snakeman24.png

convert \
    -size 320x200 xc:black \
    \( UP016.png -crop 155x200+165+0 +repage \
       ethereal_mask.png -composite \
       -resize 320x110 \
    \) -geometry +40+40 -composite \
    ethereal24.png
