var rp = require('request-promise');
var argv = require('yargs')
    .command('add', 'Add new record to the pocket',
        function (yargs) {
            yargs.options({
                'url': {
                    demand: true,
                    alias: 'u',
                    description: 'URL that are going to be saved on pocket',
                    type: 'string'
                },
                'title': {
                    demand: false,
                    alias: 't',
                    description: 'Title of the url that are going to be saved',
                    type: 'string'
                },
                'tags': {
                    demand: false,
                    alias: 'g',
                    description: 'Tags to label the saved record',
                    type: 'string'
                }
            }).help('help');
        })
    .help('help')
    .argv;
var options = {
    method: 'POST',
    uri: 'https://getpocket.com/v3/add',
    form: {
      url : argv.url,
      title : argv.title,
      tags : argv.tags,
      consumer_key : '54394-2e4831af73794181507b27e8',
      access_token : 'a951daa0-e094-cbee-df96-76e492'
    },
    headers: {
        'content-type': 'application/json'
    }
};

rp(options)
    .then(function (parsedBody) {
        // POST succeeded...
        console.log(parsedBody);
    })
    .catch(function (err) {
        // POST failed...
        console.log(err.message);
    });
