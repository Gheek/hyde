Template.fingerprint.helpers

  fingerprint: () ->
    fp = 'test'
    new Fingerprint2().get (result) ->
      console.log result
      fp = result
    return fp
