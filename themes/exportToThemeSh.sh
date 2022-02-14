echo > colors.txt
for file in *.conf
do
  echo `basename "$file" .conf` >> colors.txt
  cat "$file" | sed -re 's/color([0-9]+)/\1:/g' | sed -re 's/(background|foreground)/\1:/g' | sed 's/cursor/cursorColor:/' | tr -s ' ' | sed -re  '/(selection_background|selection_foreground|active|url|bell)/d' >> colors.txt
  echo >> colors.txt
done
