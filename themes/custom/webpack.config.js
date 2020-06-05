const path = require('path');

module.exports = {
    entry: '../bootstrap4-blog/source/js/fontawesome.js',
    output: {
            path: path.resolve(__dirname, 'assets/js'),
            filename: 'fontawesome.min.js'
          },
    mode: 'production'
};
