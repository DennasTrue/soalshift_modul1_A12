echo "No 2 A"
echo " "

awk -F ',' '{if($7 == '2012') a[$1]+=$10} END {for(b in a) {print b}}' ~/WA_Sales_Products_2012-14.csv | sort -nr | head -1

echo " "
echo "No 2 B"
echo " "

awk -F ',' '$1 ~/United States/ {if($7 == '2012') a[$4]+=$10} END {for(b in a) {print a[b]" "b}}' ~/WA_Sales_Products_2012-14.csv | sort -nr | head -3

echo " "
echo "No 2 C"
echo " "

awk -F ',' '{if($4 == "Personal Accessories" || $4 == "Camping Equipment" || $4 == "Outdoor Protection") a[$6]+=$10} END {for(b in a) {print a[b]" "b}}' WA_Sales_Products_2012-14.csv | sort -nr | head -3

