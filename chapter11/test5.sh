#!/bin/bash
today=$(date +%y%m%d)
#将日期显示为两位数年，月，日和组合
ls -al /usr/bin > log.$today
