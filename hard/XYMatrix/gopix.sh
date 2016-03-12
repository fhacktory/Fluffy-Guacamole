for i in *.png
do
	convert $i -flatten +matte $i.txt
done
echo "#define NBRIMG `ls -1 *.txt| wc -l`"
echo "const unsigned char image[$((`ls -1 *.png|wc -l`*192))] PROGMEM={"
for i in *.txt
do
	echo "// $i"
	#cat $i | egrep -v "^#" | sed "s/.*rgb(//;s/)/,/"
	cat $i | egrep -v "^#" | sed -e "s/(  /(/" -e "s/,  /,/g" -e "s/^.*(//" -e "s/).*$/,/"
	echo -e ""
done
echo "};"
rm *.png.txt
