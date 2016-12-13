#!/bin/bash
function convert(){
 for fspec in $(find ./ktx -name '*.ktx')
 do 
 filename="${fspec##*/}"  # get filename
 filename=${filename/.ktx/.png}
 opath="./output/$filename"
 ./PVRTexToolCLI -i $fspec -d $opath -f r8g8b8a8 
 done
}
convert