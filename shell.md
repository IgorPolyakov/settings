# Найти и заменить
```sh
grep -rl 'old_label' ./ | xargs sed -i 's/old_label/new_label/g'  
```
# Очистить пространство подкачки в Linux?
```sh
swapoff -a && swapon -a
```
# Найти и удалить
``` 
find ./ -xdev -type f -size +100M
```
# Посветка синтаксиса в nano
```sh
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh 
```
# Полное обновление ubuntu
```sh
apt -y dist-upgrade --auto-remove --purge 
```
# Импорт/экспорт ключей gpg
```sh
gpg --export-secret-keys --armor --output "[Name here].asc"
gpg --import "[Name here].asc"
```
# Генерация "псевдо"случайной последовательности
```sh
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1  
```
# Загрузка CPU в текущий момент времени.
```sh
ps -eo pid,pcpu,comm | awk '{if ($2 > 0.001) print }' 
```
# Пройтись по ссылкам из sitemap'а
```sh
wget --quiet http://www.example.com/sitemap.xml --output-document - | egrep -o "http://www\.example\.com[^<]+" | wget --spider -i - --wait 1
```
