
takar_a="$(dirname "${0}")"
takar_b="$(cd "${takar_a}" && pwd)"

#echo ": ${takar_a} :"
#echo ": ${takar_b} :"

(

echo "#! $(which perl)"

echo "exec(\"perl\", \"${takar_b}/main-script.pl\""

echo ', @ARGV'
echo ");"

) > ~/bin/qd-crmd2html

chmod 755 ~/bin/qd-crmd2html

