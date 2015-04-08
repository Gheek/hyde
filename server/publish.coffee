Meteor.publish "fingerprints", () ->
  return Fingerprints.find()
