{exec} = require 'child_process'

#coffee --join project.js --compile src/*.coffee
task 'build', 'Build project from src/*.coffee to bin/*.js', ->
  exec 'coffee --join bin/project.js --compile src/words.coffee src/hack.coffee', (err, stdout, stderr) ->
    throw err if err
    console.log 'Coffee compiled to JS...'


