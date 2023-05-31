#!/bin/bash

for dir in /pc/nhair0a/Built_Environment/BE_Data/Geographic_Data/PRISM_daily/PRISM_data/an/tmax/daily/*; # Change to your directory, 
do
    #echo "$dir"
    #dir1=/pc/n3mhs00/Cindy/For_WilliamK # Change the output directory
    IFS='/' # space is set as delimiter
    read -ra ADDR <<< "$dir" # str is read into an array as tokens separated by IFS
    i="${ADDR[-1]}"
    echo "$i"
    cmd1="raster2pgsql -d -I -C -M -F -t 100x100 -s 4269 $dir/*.bil tmax$i > tmax$i.sql" # May need to change the 4269 coordinate system, 
    #echo "$cmd1"
    eval "$cmd1"
    cmd2="psql -d prod -f tmax$i.sql"
    #echo "$cmd2"
    eval "$cmd2"
    cmd3="rm *.sql"
    eval "$cmd3"
done

