#!/usr/bin/with-contenv bashio

echo "Listing serial ports..."
echo $(ls -l /dev/serial/by-id/ | grep -F -e "->" | awk {'print $9" -> "$11'})

echo "Starting ser2net..."
CONFIG=$(bashio::config 'startup')
EXEC=(/usr/sbin/ser2net -d -u -C "BANNER:banner:\r\nser2net port \p device \d [\s] (Debian GNU/Linux)\r\n\r\n")

IFS=$'\n'
for startup in ${CONFIG[@]}; do
  STARTUP_COMMAND=$(bashio::jq "${startup}" ".command")
  EXEC+=(-C "${STARTUP_COMMAND}")
done
unset IFS

echo "${EXEC[@]@Q}"
"${EXEC[@]}"