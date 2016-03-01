find -type f -name '*.jpg' -exec convert -resize 50%x50% -quality 90 '{}' '{}' ';' #Пожать фоточки, перезапись
