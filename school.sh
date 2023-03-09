#!/bin/bash

head Property_Tax_Roll.csv | grep "MADISON SCHOOLS" Property_Tax_Roll.csv |cut -d',' -f7 Property_Tax_Roll.csv | awk '{sum += $1; count++} END {print "sum=", sum, "avg=", sum/count}'
