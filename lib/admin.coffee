@AdminConfig = {
  name: 'hyde.js'
  adminEmails: ['jekyll@hyde.js']
  collections: {
    Fingerprints: {
      tableColumns: [
        {label: 'Nickname', name: 'nickname'}
        {label: 'Browser Fingerprint', name: 'browserFP'}
        {label: 'Canvas Fingerprint', name: 'canvasFP'}
        {label: 'WebGL Fingerprint', name: 'webglFP'}
        {label: 'Augur Fingerprint', name: 'augurFP'}
      ]
    }
  }
};