#!/bin/bash



start_date=2022-01-01
end=2023-01-01
while [ "$start" != $end ]; do
  echo $start
  $RANGE=365
  number=$RANDOM
  let "number %= $RANGE"
  start=$(date -I -d "$start_date + $number day")
  touch $start$RANDOM
  git add .
  git commit -am "my contribution on day $start" --date=$start
done
