#l/bin/bash
usuario_linux=0
usuario_windows=0
procesow=0
procesol=0
contador=1
proc=0

while read linea; do 
so=$(echo $linea | awk'{print $2}')
proc=$(echo $linea | awk'{print $3}')
if [ $so = "Linux"]; then
usuario_linux=$((usuario_linux+1))
procesol=$((procesol + proc))
else 
usuario_windows=$((usuario_windows+1))
procesow=$((procesow+proc))
fi
done < listado.txt
echo "Linux -> $usuario_linux $procesol"
echo "Windowa -> $usuario_windows $procesow"