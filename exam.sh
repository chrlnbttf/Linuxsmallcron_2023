#!/bin/bash

echo "$(date)" >> ~/exam_SALAHUN/sales.txt

card01="rtx3060"
card02="rtx3070"
card03="rtx3080"
card04="rtx3090"
card05="rx6700"

url01="http://0.0.0.0:5000/rtx3060"
url02="http://0.0.0.0:5000/rtx3070"
url03="http://0.0.0.0:5000/rtx3080"
url04="http://0.0.0.0:5000/rtx3090"
url05="http://0.0.0.0:5000/rx6700"

for i in {01..05}
do
    card="card$i"
    url="url$i"
    echo -n "${!card}"":" >> ~/exam_SALAHUN/sales.txt
    curl "${!url}" >> ~/exam_SALAHUN/sales.txt
done