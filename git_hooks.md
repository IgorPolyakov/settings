Run test before `push` commit

```sh
#!/bin/sh
echo "Running Tests"
bundle exec rake test
test=$?

if [ $test -eq 0 ] ; then
  echo "\\033[32mTests are green, pushing...\\033[0;39m"
  exit 0
else
  echo "\\033[1;31mCannot push, tests are failing. Use --no-verify to force push.\\033[0;39m"
  exit 1
fi

```
