#!/bin/bash



start=2022-01-01
end=2023-01-01
while [ "$start" != $end ]; do
  echo $start
  start=$(date -I -d "$start + 1 day")
  touch $start
  git add .
  git commit -am "my contribution on day $start" --date=$start
done
