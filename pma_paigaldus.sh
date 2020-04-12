#phpmyadmin paigaldusskript
#
#kontrollib kas tarkvara on juba olemas või vajab instaleerimist
PMA=$(dpkg-query -W -f="${status}" phpmyadmin 2>/dev/null | grep -c "ok installed")
#kui PMA väärtus on null siis ta instaleerib ja paigaldab teenus ning annab sellest ka teate
if [ $PMA -eq 0 ]; then
echo "Paigaldame phpmyadmin ja vajalikud lisad"
apt install phpmyadmin
echo "phpmyadmin on paigaldatud"
#kui PMA väärtus on 1 siis annab sellest teate
echo "phpmyadmin on juba paigaldatud"
fi
#skripti lõpp
