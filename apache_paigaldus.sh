# Apace kontroll ja paigaldus
#
#
#kontrollib kas apache on olemas
APACHE2=$(dpkg-query -W -f="${Status}" apache2 2>/dev/null | grep -c "ok installed")
#kui väärus on kontrolli puhul 0 siis ei ole apache installitud
if [ $APACHE2 -eq 0 ]; then
#väljastab teate et paigaldab apache
echo "Paigaldame apache2"
apt install apache2
echo "Apache on paigaldatud"
#käivitab kohe ka service kui on isntallitud ja annab ka statuse
service apache2 start
service apache2 status
#kui väärtus võrdub 1 siis on apache olemas ja sellele väljastame ka teate
elif [ $APACHE2 -eq 1 ]; then
echo "Apache on seadme juba olemas"
#näitab kas apache töötab
service apache2 start
service apache2 status
fi
#skripti lõpp

