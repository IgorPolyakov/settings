find -type f -name '*.jpg' -exec convert -resize 50%x50% -quality 90 '{}' '{}' ';' #Пожать фоточки, перезапись
grep -rl 'skypewin' ./ | xargs sed -i 's/skypewin/skype/g'  #Найти и заменить
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1  #Генерация "псевдо"случайной последовательности
