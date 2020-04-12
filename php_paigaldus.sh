#Php paigaldusskript
#
#kotrollia
PHP=$(dpkg-query -W -f="${status}" php7.0 2>/dev/null | grep -c "ok installed")
#php kui  võrdub 0 siis annab teate ja installib php ja vaatab olemas olu
if [ $PHP -eq 0 ]; then
echo "Php paigaldamine ja lisad"
apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
echo "php on paigaldatud"
which php
#kui php väärtus on 1 siis teenus on paigaldatud ja kontrollib selle olemas olu
elif [ $PHP -eq 1]; then
echo "php on paigaldatud"
which php
fi
#skripti lõpp
