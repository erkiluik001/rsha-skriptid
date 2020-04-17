# Automatiseeritud skriptid kasutamiseks.
## Paigaldamine
Siin on olemas erinevad automatiseeritud skirptid alates apache serveri paigaldamisest lõpetades Wordpress paigaldusega.
Skripte saab käivitada käsuga
```
sh apache_paigaldus.sh
```
### Git paigaldamine ja seadistamine
```
apt install git
git config --global user.name "Ees Perenimi"
git confug --global user.email email@domeen.com
git config --global core.editor nano
```

iga skripti eesmärk on installeerida või kontrollida mingi tarkvara olemas olu.

Skriptide paigaldamise järjekord
1. apache
2. mysql
3. php
4. phpmyadmin
5. Wordpress

---
Küsimuste korral kirjutada erki.luik.001@khk.ee
---

Asible Skriptide vaatamiseks mine github.com/erkiluik001/ansible-skriptid
