# https://stackoverflow.com/questions/3004811/how-do-you-run-multiple-programs-in-parallel-from-a-bash-script

npm run backend &
P1=$!
npm run dev -- --host &
P2=$!
wait $P1 $P2