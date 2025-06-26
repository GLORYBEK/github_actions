#!/bin/bash

# Fonction pour récupérer les ventes
scrape_sales() {
    echo "$(date)" >> sales.txt
    for model in rtx3060 rtx3070 rtx3080 rtx3090 rx6700
    do
        count=$(curl -s "http://0.0.0.0:5000/$model")
        echo "$model:$count" >> sales.txt
    done
}

scrape_sales
