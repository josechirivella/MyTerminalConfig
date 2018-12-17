echo "Dumping all DBs from Mongo"
mongodump --out ~/mongodb/foodlogiq-backup-`date +"%m-%d-%y"`
echo "Done"
