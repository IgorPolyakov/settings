find -type f -name '*.jpg' -exec convert -resize 50%x50% -quality 90 '{}' '{}' ';' #Пожать фоточки, перезапись
grep -rl 'skypewin' ./ | xargs sed -i 's/skypewin/skype/g'  #Найти и заменить
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1  #Генерация "псевдо"случайной последовательности
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh #Посветка сиснтаксиса в nano
ethtool eth0 | grep -i speed #Скорость подключения в сети
ps -eo pid,pcpu,comm | awk '{if ($2 > 0.001) print }' #Загрузка CPU в текущий момент времени.