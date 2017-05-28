require('fluentnode')

module.exports = function (wallaby) {
    return {
        files: [
            './src/server/cert/**.*',
            './src/server/src/**/*.coffee'
        ],

        tests: [
            './src/server/test/**/*.coffee'
        ],

        env: {
            type: 'node'
        },
        setup: function (wallaby)
            {
                console.log('running tests')
                //console.log(wallaby)
            },
        workers: {
            initial: 1,         // without these sometimes the fluentnode apis
            regular: 1          // are not detected
        }
    };
};