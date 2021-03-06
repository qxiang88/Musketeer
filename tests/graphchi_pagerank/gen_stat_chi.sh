#!/bin/bash
# $1 = log file
# $2 = stat file
COMPILE_TIME=`cat $1 | grep "COMPILE TIME:" | cut -d ":" -f 2 | tr -d ' '`
PULLING_TIME=`cat $1 | grep "PULLING DATA:" | cut -d ":" -f 2 | tr -d ' '`
LOAD_TIME=`cat $1 | grep "LOADING DATA:" | cut -d ":" -f 2 | tr -d ' '`
RUN_TIME=`cat $1 | grep "RUN TIME:" | cut -d ":" -f 2 | tr -d ' '`
PUSHING_TIME=`cat $1 | grep "PUSHING DATA:" | cut -d ":" -f 2 | tr -d ' '`
TOTAL_TIME=`cat $1 | grep "TOTAL TIME:" | cut -d ":" -f 2 | tr -d ' '`
echo "# COMP PULL LOAD RUN PUSH TOTAL" > $2
echo $COMPILE_TIME $PULLING_TIME $LOAD_TIME $RUN_TIME $PUSHING_TIME $TOTAL_TIME >> $2