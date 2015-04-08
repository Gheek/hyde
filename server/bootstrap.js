Meteor.startup(function () {

    /*
     clean up database at startup
     -> DEVELOPMENT ONLY <-
     */

    Fingerprints.remove({});

    /*
     create accounts
     */

    if (Meteor.users.findOne({username: "jekyll"}) == null) {
        Accounts.createUser({username: 'jekyll', email: 'jekyll@hyde.js', password: 'AppAggin14'});
        console.log('created user jekyll@hyde.js');
    }
});