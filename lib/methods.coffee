Meteor.methods

  saveFingerprint: (fingerprint) ->
    if (!Meteor.userId())
      throw new Meteor.Error "not-authorized"
    Fingerprints.insert fingerprint