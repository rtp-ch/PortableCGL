/*global module:false*/
module.exports = function (grunt) {
    'use strict';

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        coffee: {
            compile: {
                options: {
                    bare: true
                },
                files: {
                    'jshint/jshintrc.js': 'jshint/jshintrc.litcoffee'
                }
            }
        },
        exec: {
            exportToJSON: {
                command: 'node jshint/jshintrc.js >> jshint/.jshintrc',
                stdout: false,
                stderr: false
            },
            cleanJshint: {
                command: 'rm jshint/jshintrc.js',
                stdout: false,
                stderr: false
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-exec');
    grunt.registerTask('javascript', ['coffee', 'exec:exportToJSON', 'exec:cleanJshint']);
    grunt.registerTask('default', ['javascript']);
};