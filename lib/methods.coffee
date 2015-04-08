Meteor.methods

  saveFingerprint: (fingerprint, nickname) ->
    if (!Meteor.userId())
      throw new Meteor.Error "not-authorized"
    insert = {nickname: nickname, browserFP: fingerprint.browserFP, canvasFP: fingerprint.canvasFP, webglFP: fingerprint.webglFP}
    Fingerprints.insert insert