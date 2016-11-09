#!/bin/bash


INFO_MSG=${INFO_MSG:-"This is simple INFO log"}
WARN_MSG=${WARN_MSG:-"This is simple WARN log"}
ERROR_MSG=${ERROR_MSG:-"This is simple ERROR log"}
SLEEP=${SLEEP:-3}


# Parameters:
#
# $1 - log level
# $2 - tag name
# $3 - log msg

function log {
  #logger -p ${1} -s -t ${2} ${3} 2>&1
  echo "[ $(date +"%Y-%M-%d %H:%m:%S") ] - [ ${1} ] - [ $(hostname -i) ] - [ ${2} ] - ${3}"
}

while true
do

  NUMBER=$(( $RANDOM % 100 ))

  if [[ "$NUMBER" -lt 60 ]]; then
    log "INFO" $(hostname) "${INFO_MSG}"
  elif [[ "$NUMBER" -ge 70 && "$NUMBER" -lt 80 ]]; then
    log "WARN" $(hostname) "${WARN_MSG}"
  elif [[ "$NUMBER" -gt 80 && "$NUMBER" -lt 90 ]]; then
    log "ERROR" $(hostname) "${ERROR_MSG}"
  fi

  sleep $SLEEP

done
