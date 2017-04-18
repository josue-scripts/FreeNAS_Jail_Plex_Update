#!/bin/sh
echo off
echo "This will check repositories and upgrade the Plex Media Server"
echo "**************************************************************"
echo "Stopping Server"
service plexmediaserver stop
echo "Updating Server files"
echo on
pkg update && pkg upgrade multimedia/plexmediaserver
echo "Restarting Server"
service plexmediaserver start
echo "Update complete"
