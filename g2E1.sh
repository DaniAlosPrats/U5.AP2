#l/bin/bash
contador=0
total_precipitado=0
while read line; do
contador_litros=$(echo $linea | awk'{print $2}')
contador_litros=$((total_precipitados + contador_litros))
((contador++))
done < "precipitados.txt"
if ["$contador"-gt 0]; then
media_precipitaciones=$((contador_litros/contador))
echo "la media es $media_precipitaciones"
fi