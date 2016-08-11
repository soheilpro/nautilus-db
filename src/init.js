var meta = db.meta.findOne({});

if (meta) {
  print('Error: Already initialized.');
  quit();
}

db.meta.insert({});
