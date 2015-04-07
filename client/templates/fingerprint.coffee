#Fingerprints = new Mongo.Collection("test")

Template.fingerprint.helpers

  getFingerprint: () ->
    fp = 'default'
    new Fingerprint2().get (result) ->
      console.log result
      fp = result
    Fingerprints.insert({fp: fp});
    return fp

  fingerprints: () ->
    Fingerprints.find({});
