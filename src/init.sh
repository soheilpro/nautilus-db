mongo nautilus --eval '
  db.dropDatabase();
  db.users.insert({"name": "Admin", "username": "admin", "passwordHash": "$2a$10$WlTsJ5UA3uC0mr6k4v9qN.uzXVRgGG08gNAqGGZctK7ioaIGoHPeu"});
  db.counters.insert({ name: "items", value: 0 });
'
