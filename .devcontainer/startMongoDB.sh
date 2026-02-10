#!/bin/bash

# Ensure MongoDB directories exist
sudo mkdir -p /data/db /var/log/mongodb
sudo chown -R $(whoami) /data/db /var/log/mongodb

# Start MongoDB service
mongod --fork --logpath /var/log/mongodb/mongod.log --dbpath /data/db

echo "MongoDB has been started successfully!"
mongod --version