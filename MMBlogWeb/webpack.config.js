var webpack = require('webpack');


module.exports = {
    debug: true,
    devtool: 'source-map',
    entry:[
        './Angular/main.ts',
        './Angular/polyfills.ts',
        './Angular/vendor.ts'],

    resolve: {
        extensions: ['', '.ts', '.js']
    },
    output: {
        path: './Scripts',
        filename: 'scripts.bundle.js'
    },
    module: {
        loaders: [
          {
              test: /\.ts$/,
              loaders: ['awesome-typescript-loader', 'angular2-template-loader']
          },
        ]
    }
};