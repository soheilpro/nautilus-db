function update(versionFrom, versionTo, updater) {
  var meta = db.meta.findOne({});
  var version = meta.version || 0;

  if (version === versionFrom) {
    updater();
    db.meta.update({}, {$set: {version: versionTo}});
    print('Updated to version ' + versionTo);
  }
}

update(0, 1, () => {
  db.users.insert({
    name: 'Admin',
    username: 'admin',
    passwordHash: '$2a$10$WlTsJ5UA3uC0mr6k4v9qN.uzXVRgGG08gNAqGGZctK7ioaIGoHPeu'
  });

  db.counters.insert({
    name: 'items',
    value: 0
  });
});
