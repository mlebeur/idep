#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

# Run rScript
Rscript /usr/local/src/myscripts/librarySetup.R

exec shiny-server >> /var/log/shiny-server.log 2>&1
