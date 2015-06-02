#!/bin/sh

source ./CONFIG.txt

HERE=$(pwd)

# Get wot version
dirs=$(ls $WOT_INSTALL_PATH/res_mods/)
major=0
minor=0
rev=0
moar=0
version=''
for dir in $dirs; do
    match=$(echo $dir | grep -E '^[0-9]+\.[0-9]+\.[0-9]+.*$')
    if [ ! -z "$match" ]; then
	OLD_IFS=$IFS
	IFS='.'
	set $dir
	IFS=$OLD_IFS
	new_major=$1
	new_minor=$2
	new_rev=$3
	new_moar=$4
	if [ -z $new_moar ]; then
	    new_moar=0
	fi
	if [ $new_major -gt $major ]; then
	    major=$new_major
	    minor=$new_minor
	    rev=$new_rev
	    moar=$new_moar
	    version=$dir
	elif [ $new_major -eq $major ]; then
	    if [ $new_minor -gt $minor ]; then
		minor=$new_minor
		rev=$new_rev
		moar=$new_moar
		version=$dir
	    elif [ $new_minor -eq $minor ]; then
		if [ $new_rev -gt $rev ]; then
		    rev=$new_rev
		    moar=$new_moar
		    version=$dir
		elif [ $new_rev -eq $rev ] && [ $new_moar -gt $moar ]; then
		    moar=$new_moar
		    version=$dir
		fi
	    fi
	fi	
    fi
done

if [ -z "$version" ]; then
    echo "Unable to detect wot version !"
    exit 1
else
    echo "Wot version "$version
fi

# Path of original pyc file
CLIENT_PATH=$WOT_INSTALL_PATH'res/scripts/client/'
ORIG_PATH=$CLIENT_PATH'vehicle.pyc'
# Path of uncompiled version
UNC_PATH=$ORIG_PATH'_dis'
# Path of patch script
PATCH_PATH=$HERE'/vehicle.patch'
# Path of patched version
PATCHED_PATH=$HERE'/vehicle.py'
PATCHED_RECOMPILED_PATH=$PATCHED_PATH'c'
# Path of new pyc file
DEST_DIR=$WOT_INSTALL_PATH'res_mods/'$version'/scripts/client/'


OK=1

# Step 1 : uncompyle
uncompyle2 -o $CLIENT_PATH $ORIG_PATH || OK=0
if [ $OK -eq 0 ]; then
    exit 1
fi

# Step 2 : Patch
patch $UNC_PATH -o $PATCHED_PATH < $PATCH_PATH || OK=0
if [ $OK -eq 0 ]; then
    exit 1
fi

# Step 3 : Compyle
python -m py_compile $PATCHED_PATH || OK=0
if [ $OK -eq 0 ]; then
    exit 1
fi

# Step 4 : Reinstall patched file
cp $PATCHED_RECOMPILED_PATH $DEST_DIR
cp './vehicle_damage.json' $DEST_DIR

# Step 5 : Copy files
if [ ! -d "$version" ]; then
    mkdir $version
fi
cp $PATCHED_PATH $version/vehicle.py
cp $PATCHED_RECOMPILED_PATH $version/vehicle.pyc

# Step 6 : cleanup
rm -f $PATCHED_PATH $UNC_PATH $PATCHED_RECOMPILED_PATH
