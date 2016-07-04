module.exports = (robot) ->

  robot.respond /setup devise/i, (msg) ->
    msg.send "\n >>> 1. Add: gem 'devise', '~> 3.5'
    \n 2. Bundle install: rails generate devise:install
    \n 3. Rails generate devise User
    \n 4. Rake db:migrate
    \n 5. Git add, commit...
    \n (For more information: https://read.codaisseur.com/topics/day-11-users-with-devise/articles/postal-posts-likes-app-with-devise#9)"

  robot.respond /setup bootstrap/i, (msg) ->
    msg.send "\n >>> 1. Add: gem 'bootstrap-sass', '~> 3.3.6'
    \n 2. Bundle install
    \n 3. Change application.css to .scss
    \n 4. Add //= require bootstrap-sprockets to application.js
    \n 5. Git add, commit...
    \n (For more information: https://read.codaisseur.com/topics/day-11-users-with-devise/articles/postal-posts-likes-app-with-devise#5)"
