###
grunt-coffee-redux-exampleprj

Copyright (c) 2013 Moritz Heuser, contributors
Licensed under the MIT license.
###

module.exports = (grunt)->

  grunt.initConfig
    clean:
      default: [
        'public/lib'
      ]
    coffeeredux:
      options:
        bare: no
        sourceMap: yes
      compile:
        files:
          'public/lib/main.js': [
            'src/foo.coffee'
            'src/bar.coffee'
          ]

  grunt.loadNpmTasks task for task in [
    'grunt-coffee-redux'
    'grunt-contrib-clean'
  ]

  grunt.registerTask 'default', ['clean', 'coffeeredux']

