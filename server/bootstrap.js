Meteor.startup(function () {

    /*
     clean up database at startup
     -> DEVELOPMENT ONLY <-
     */

    Fingerprints.remove({});
});
