module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig pkg: grunt.file.readJSON('package.json')
    less:
      development:
        yuicompress: true
        files:
          "css/stylesheet.css": "css/stylesheet.less"
    uglify:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      build:
        src: 'src/<%= pkg.name %>.js',
        dest: 'build/<%= pkg.name %>.min.js'

  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-less'

  # Default task(s).
  grunt.registerTask 'default', ['less:development':'uglify']

