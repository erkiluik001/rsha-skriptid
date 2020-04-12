#mysql-serveri paigaldus
#
#otsib ja installerib vajaduse mysql serveri tarkvara
MYSQL=$(dpkg-query -W -f="${status}" mysql-server 2>/dev/null | grep -c "ok installed")
#mysql kui väärtus on 0 siis installib, vajadusel annab teate ning paigaldab teenuse
echo "paigaldame teenuse ja lisad"
apt install mysql-server
echo "mysql on paigaldatud"
#lisame kasutaja mysql ilma kasutaja ja parooli lisamata
touch $HOME/.my.cnf #lisame vajalikud konfikuratsioonid faili kasutaja kodukausta
echo "[client]" >> $HOME/.my.cnf
echo "host = localhost" >> $HOME/.my.cnf
echo "user = root" >> $HOME/.my.cnf
echo "password = qwerty" >> $HOME/.my.cnf
#kui mysql väärtus on 1 siis annab teate et teenus on paigaldatud
echo "mysql-server on paigaldatud"
mysql
fi
#skripti lõpp
