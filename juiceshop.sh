#!/bin/bash

CONTAINER="juiceshop"

case "$1" in

    start)
        if docker ps --format '{{.Names}}' | grep -qx "$CONTAINER"; then
            echo "Juice Shop è già avviato."
        else
            echo "Avvio Juice Shop..."
            docker start "$CONTAINER"
        fi
        ;;

    stop)
        if docker ps --format '{{.Names}}' | grep -qx "$CONTAINER"; then
            echo "Arresto Juice Shop..."
            docker stop "$CONTAINER"
        else
            echo "Juice Shop non è avviato."
        fi
        ;;

    status)
        if docker ps --format '{{.Names}}' | grep -qx "$CONTAINER"; then
            echo "Juice Shop: AVVIATO"
        elif docker ps -a --format '{{.Names}}' | grep -qx "$CONTAINER"; then
            echo "Juice Shop: FERMO"
        else
            echo "Juice Shop: CONTAINER NON ESISTENTE"
        fi
        ;;

    *)
        echo "Uso: $0 {start|stop|status}"
        exit 1
        ;;

esac
