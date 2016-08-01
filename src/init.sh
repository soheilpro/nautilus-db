mongo nautilus --eval '
  db.dropDatabase();
  db.users.insert({"name": "Admin", "username": "admin", "passwordHash": "$2a$10$WlTsJ5UA3uC0mr6k4v9qN.uzXVRgGG08gNAqGGZctK7ioaIGoHPeu"});
  db.states.insert({ "title": "Backlog", "type": "pending", "color": "" });
  db.states.insert({ "title": "To Do", "type": "ready", "color": "#ffe0b2" });
  db.states.insert({ "title": "Doing", "type": "inprogress", "color": "#b3e5fc" });
  db.states.insert({ "title": "In Review", "type": "inprogress", "color": "#b3e5fc" });
  db.states.insert({ "title": "Done", "type": "finished", "color": "#c5e1a5" });
  db.states.insert({ "title": "Blocked", "type": "pending", "color": "#ffcdd2" });
'
