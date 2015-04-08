Meteor.startup(function () {

    /*
     create accounts
     */

    if (Meteor.users.findOne({username: "jekyll"}) == null) {
        Accounts.createUser({username: 'jekyll', email: 'jekyll@hyde.js', password: 'AppAggin14'});
        console.log('created user jekyll@hyde.js');
    }
});