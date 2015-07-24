###
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

  "submit #nickname": (event) ->
    fingerprint = Session.get('fingerprint')
    nickname = event.target.nickname.value;
    Meteor.call('saveFingerprint', fingerprint, nickname)
    event.target.nickname.value = ''
    return false
###


Template.fingerprint.helpers
  getFingerprint: () ->
    fp = new Fingerprint2()
    browser = 'n/a'
    browser = fp.get (result) -> return result

    console.log(browser)
    browserFingerprint = {key: 'Browser Fingerprint', value: browser}
    userAgent = {key: 'User Agent', value: fp.getUserAgentKey()}
    canvas = {key: 'Canvas Fingerprint', value: fp.x64hash128(fp.getCanvasFp(), 31)}
    webgl = {key: 'WebGL Fingerprint', value: fp.x64hash128(fp.getWebglFp(), 31)}
    plugins = {key: 'Plugins', value: fp.getPlugins()}
    storages = {
      key: 'Available Storages',
      value: 'Session Storage: ' + fp.hasSessionStorage() + ', Local Storage: ' + fp.hasLocalStorage() + ', IndexedDB: ' + fp.hasIndexedDB()
    }
    fonts = {key: 'Fonts', value: fp.getFonts()}
    navigator = {
      key: 'Navigator Object',
      value: fp.getNavigatorCpuClass() + ' , ' + fp.getNavigatorPlatform() + ' , ' + fp.getDoNotTrack()
    }
    color = {key: 'Color Depth', value: fp.getColorDepth()}
    screenResolution = {key: 'Screen Resolution', value: fp.getResolution()}

    fingerprint = userAgent
    Session.set('fingerprint', fingerprint)
    return [browserFingerprint, canvas, webgl, userAgent, plugins, storages, fonts, navigator, color, screenResolution]

  fingerprints: () ->
    alert 'not implemented yet'

   getImages: () ->
     fp = new Fingerprint2()
     return [{type: 'Canvas Image', src: fp.getCanvas()}, {type: 'WebGL Image', src: fp.doWebglFP()[0]}]

Template.fingerprint.events
  "submit #nickname": (event) ->
    alert 'not implemented yet'
    return false


