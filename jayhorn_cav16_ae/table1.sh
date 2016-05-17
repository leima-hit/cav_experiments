#!/bin/bash

cd benchmarks

echo "Running the CBMC benchmarks"
for file in */ ; do 
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "Running CBMC benchmark $file"; 
    time java -jar ../jayhorn.jar -j $file
  fi; 
done

cd ../svcomp_rec
echo "Running the SVCOMP benchmarks"
for file in */ ; do 
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "Running SVCOMP benchmark $file"; 
    time java -jar ../jayhorn.jar -j $file
  fi; 
done

cd ../MinePump/spec1-5/
echo "Running the MinePump benchmarks"
for file in */ ; do 
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "Running MinePump benchmark $file"; 
    time java -jar ../jayhorn.jar -j $file
  fi; 
done