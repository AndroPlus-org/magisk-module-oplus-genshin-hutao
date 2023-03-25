#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
# This script will be executed in post-fs-data mode

if [ -d /my_product ]; then
	mount -o ro,bind $MODDIR/my_product/bootanimation/bootanimation.zip /my_product/media/bootanimation/bootanimation.zip
	mount -o ro,bind $MODDIR/my_product/bootanimation/rbootanimation.zip /my_product/media/bootanimation/rbootanimation.zip
fi

if [ -d /my_company ]; then
	cp -pR /my_company/* $MODDIR/my_company
	cp -pRf $MODDIR/my_company_ex/* $MODDIR/my_company
	mount -o ro,bind $MODDIR/my_company /my_company
fi