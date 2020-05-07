#!/usr/bin/env bash

# In order to generate the poster, we first need to enter all 
# the information of today in these variables here

# These are general information including the 
# date and the number of active, recovered, deaths and cases
# These counts come in the right side of the poster in boxes 
DATE="16 MAY 2020"
ACTIVE=""
RECOVERED=""
DEATH=""
CASES=""


# These are the statistics that come under the name of each 
# district in the map The count of each district corresponds
# to each district. 
# Enter number of cases of each district in each variable here
KASARGOD=""
KANNUR=""
KOZHIKOD=""
WAYANAD=""
MALAPPURAM=""
PALAKKAD=""
THRISSUR=""
ERNAKULAM=""
IDUKKI=""
KOTTAYAM=""
ALAPUZHA=""
PATHANAMTHITTA=""
KOLLAM=""
THIRUVANANTHAPURAM=""

# This command is used to enter a piece of text in the blank
# image and produce an output image. Our plan of action is to
# add all the necessary data that we want, iteratively into 
# output image and atlast, produce a final image and then remove 
# the output image.

# This line adds the data from the DATE variable in a size of 20
# with the chosen font from the fonts/ directory to the coordinates
# specified. This coordinates have to selected according to the postiion
# in the tempalte image. The source and destination image are specified
# at the end 
convert -font ./fonts/Cantarell-Bold.otf -pointsize 20 -gravity North -draw "text 450,825 '$DATE'" covid_blank.jpg output.jpg


# The following code is for inserting the an image, in this example 
# the image of alapuzha, at the location specified by the coordinates
# x_alapuzha and y_alapuzha respectively
	
x_alapuzha="450"
y_alapuzha="200"
convert output.jpg \( ./images/alapuzha_g.png -background none -gravity center \) -gravity northwest -geometry +${x1}+${y1} -composite output.jpg
