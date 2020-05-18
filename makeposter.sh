#!/usr/bin/env bash

# In order to generate the poster, we first need to enter all 
# the information of today in these variables here

# These are general information including the 
# date and the number of active, recovered, deaths and cases
# These counts come in the right side of the poster in boxes 
DATE="X MAY 2020"
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

ACTIVE=""
REC=""
DEAD=""
CAS=""


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


convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,455  '$ACTIVE'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,582  '$REC'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,698  '$DEAD'" output.jpg output.jpg

convert -font ./fonts/Cantarell-Bold.otf -pointsize 23 -gravity North  -draw "text 364,820  '$CAS'" output.jpg output.jpg


# The following code is for inserting the an image, in this example 
# the image of alapuzha, at the location specified by the coordinates
# x_alapuzha and y_alapuzha respectively
	
x_ksr="170"
y_ksr="113"
convert output.jpg \( ./images/ksr_o.png -background none -gravity center \) -gravity northwest -geometry +${x_ksr}+${y_ksr} -composite output.jpg

x_knr="233.75"
y_knr="220.5"
convert output.jpg \( ./images/knr_r.png -background none -gravity center \) -gravity northwest -geometry +${x_knr}+${y_knr} -composite output.jpg

x_wnd="357.74"
y_wnd="291.76"
convert output.jpg \( ./images/wnd_o.png -background none -gravity center \) -gravity northwest -geometry +${x_wnd}+${y_wnd} -composite output.jpg

x_kkd="311.74"
y_kkd="329.51"
convert output.jpg \( ./images/kkd_o.png -background none -gravity center \) -gravity northwest -geometry +${x_kkd}+${y_kkd} -composite output.jpg

x_mlp="372.75"
y_mlp="391.50"
convert output.jpg \( ./images/mlp_o.png -background none -gravity center \) -gravity northwest -geometry +${x_mlp}+${y_mlp} -composite output.jpg

x_ekm="451"
y_ekm="665.125"
convert output.jpg \( ./images/ekm_g.png -background none -gravity center \) -gravity northwest -geometry +${x_ekm}+${y_ekm} -composite output.jpg

x_tsr="401.2"
y_tsr="560.5"
convert output.jpg \( ./images/tsr_g.png -background none -gravity center \) -gravity northwest -geometry +${x_tsr}+${y_tsr} -composite output.jpg

x_pkd=419
y_pkd="459"
convert output.jpg \( ./images/pkd_o.png -background none -gravity center \) -gravity northwest -geometry +${x_pkd}+${y_pkd} -composite output.jpg

x_idk="553.5"
y_idk="653.125"
convert output.jpg \( ./images/idk_o.png -background none -gravity center \) -gravity northwest -geometry +${x_idk}+${y_idk} -composite output.jpg

x_alp="483.5"
y_alp="836"
convert output.jpg \( ./images/alp_g.png -background none -gravity center \) -gravity northwest -geometry +${x_alp}+${y_alp} -composite output.jpg

x_ptm="522"
y_ptm="848"
convert output.jpg \( ./images/ptm_o.png -background none -gravity center \) -gravity northwest -geometry +${x_ptm}+${y_ptm} -composite output.jpg

x_kty="496.6125"
y_kty="762"
convert output.jpg \( ./images/kty_r.png -background none -gravity center \) -gravity northwest -geometry +${x_kty}+${y_kty} -composite output.jpg

x_klm="521.25"
y_klm="919"
convert output.jpg \( ./images/klm_o.png -background none -gravity center \) -gravity northwest -geometry +${x_klm}+${y_klm} -composite output.jpg

x_tvm="566.5"
y_tvm="989"
convert output.jpg \( ./images/tvm_o.png -background none -gravity center \) -gravity northwest -geometry +${x_tvm}+${y_tvm} -composite output.jpg

