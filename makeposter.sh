#!/usr/bin/env bash

# In order to generate the poster, we first need to enter all 
# the information of today in these variables here

# These are general information including the 
# date and the number of active, recovered, deaths and cases
# These counts come in the right side of the poster in boxes 
DATE="9 MAY 2020"
ACTIVE=""
RECOVERED=""
DEATH=""
CASES=""
FIX="17:00 Hours"


# These are the statistics that come under the name of each 
# district in the map The count of each district corresponds
# to each district. 
# Enter number of cases of each district in each variable here
KASARGOD=""
KANNUR=""
KOZHIKODE=""
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
TVM=""


#THE X-Y CORDINATES ARE AS  -X 0 +X AND Y CORDINATES ARE INCREASING DOWNWARDS.

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

#TEXT GENERATED FOR THE STATES

convert -font ./fonts/Cantarell-Bold.otf -pointsize 20 -gravity North -fill white -draw "text 440,180 '$DATE'" covid_blank.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 20 -gravity North -fill white -draw "text 440,215 '$FIX'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -370,230  '$KASARGOD'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -310,345  '$KANNUR'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -260,445  '$KOZHIKODE'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 10,340  '$WAYANAD'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -220,540  '$MALAPPURAM'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 140,548  '$PALAKKAD'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -140,650  '$THRISSUR'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 210,675  '$IDUKKI'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -125,755  '$ERNAKULAM'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -100,850  '$KOTTAYAM'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 270,940  '$PATHANAMTHITTA'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -80,925  '$ALAPUZHA'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text -35,995  '$KOLLAM'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 300,1065  '$TVM'" output.jpg output.jpg

#TEXT GENERATED FOR THE 4 STATUS

ACTIVE=""
REC=""
DEAD=""
CAS=""

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,455  '$ACTIVE'" output.jpg output.jpg


convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,582  '$REC'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,698  '$DEAD'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,820  '$CAS'" output.jpg output.jpg


# The following code is for inserting the an image, in this example 
# the image of alapuzha, at the location specified by the coordinates
# x_alapuzha and y_alapuzha respectively
	
x_alapuzha="450"
y_alapuzha="200"
#convert output.jpg \( ./images/alapuzha_g.png -background none -gravity center \) -gravity northwest -geometry +${x_alapuzha}+${y_alapuzha} -composite output.jpg
