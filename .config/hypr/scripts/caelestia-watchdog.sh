#!/bin/bash

# Kill any existing instances
qs -c caelestia kill 2>/dev/null

# Loop infinitely to restart the shell if it crashes
while true; do
    echo "Starting Caelestia Shell..."
    # Run in foreground (without -d) so the script waits for it to exit
    caelestia shell
    
    echo "Caelestia Shell exited or crashed. Restarting..."
    sleep 0.1
done
