@Schemas = {}

@Fingerprints = new Mongo.Collection("test");

Schemas.Fingerprints = new SimpleSchema
  nickname:
    type: String
    max: 60
  browserFP:
    type: String
    max: 60
    optional: true
  canvasFP:
    type: String
    max: 60
    optional: true
  webglFP:
    type: String
    max: 60
    optional: true

Fingerprints.attachSchema(Schemas.Fingerprints)