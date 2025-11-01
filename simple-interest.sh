#!/usr/bin/env bash
# simple-interest.sh
# Usage: ./simple-interest.sh principal annual_rate percent years
# Example: ./simple-interest.sh 1000 5 2

if [ $# -lt 3 ]; then
  echo "Usage: $0 principal annual_rate years"
  echo "Example: $0 1000 5 2"
  exit 1
fi

P=$1
R=$2   # percent per year (e.g., 5)
T=$3   # years

# Simple interest = (P * R * T) / 100
SI=$(awk -v p="$P" -v r="$R" -v t="$T" 'BEGIN { printf "%.2f", (p*r*t)/100 }')
echo "Simple Interest: $SI"

