# Compile assets

## Fonts

    ./fontconvert vgafont.txt > fontdata.txt
    ./fontconvert vgafont_R.txt > fontdata_R.txt

Copy-paste content to vgafont.vhd

## Macro

    ./macro11 vtbr.mac -l vtbr.lst -o vtbr.obj
    ./genblkram -s 256 -i vtbr.obj >vtbr.txt

Copy-paste content into vtbr.vhd
