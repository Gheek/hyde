Template.fingerprint.helpers

  getFingerprint: () ->
    browser = 'n/a'
    fp = new Fingerprint2()
    fp.get (result) ->
      console.log result
      browser = result

    canvas = fp.x64hash128(fp.getCanvasFp(), 31);
    webgl = fp.x64hash128(fp.getWebglFp()[0], 31);

    fingerprint = {browserFP: browser, canvasFP: canvas, webglFP: webgl}
    Session.set('fingerprint', fingerprint)

    return [fingerprint]

  fingerprints: () ->
    Fingerprints.find({})

Template.fingerprint.events

  'click #save-button': () ->
    fingerprint = Session.get('fingerprint')
    Meteor.call('saveFingerprint', fingerprint)