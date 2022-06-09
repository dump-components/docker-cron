#!/bin/bash

## Go to /app folder
cd /app

## Clear cache at startup
echo "Clear cache"
php artisan schedule:clear-cache > /proc/1/fd/1

## Start cron
echo "Start cron"
cron -f -l -L 8

## Just to non stop
tail -f /dev/null
