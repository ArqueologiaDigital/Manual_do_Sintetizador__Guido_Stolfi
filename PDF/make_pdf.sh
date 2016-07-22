echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 1200 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/C*.lowres.jpg ../originais/P*.lowres.jpg Manual_do_Sintetizador__Guido_Stolfi.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
