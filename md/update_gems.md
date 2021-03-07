# Always keep the gems updated

```
#!/bin/bash
git checkout .
git pull
bundle
bundle update
rspec
update_list="$(git diff | grep "^+    \w" | tr -s " " | cut -d" " -f2,3)"
git commit -a -m 'update gems' -m "$update_list"
git push origin master
```
