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



# module.exports = (robot) ->
#   match(/^(?<bot>\w*)\s(?<expression>.*)$/) do |client, data, match|
#     expression = match['expression'].strip
#     query = { query: expression }
#     query[:cx] = ENV['GOOGLE_CSE_ID'] if ENV['GOOGLE_CSE_ID']
#     result = ::Google::Search::Web.new(query).first
#     message = result.title + "\n" + result.uri
#     send_message client, data.channel, message
#   end
# end

#
#
#
# module.exports = (robot) ->
#   robot.respond /js2coffee (.*)/i , (msg) ->
#     code = msg.match[1]
#     open_js2coffee msg, code
#
# open_js2coffee = (msg, code) ->
#   data = ""
#
#   msg.http("")
#     .query
#       raw_text: code
#       conversion_type: "coffee"
#     .post( (err, req)->
#       req.addListener "response", (res)->
#         output = res
#
#         output.on 'data', (d)->
#           data  = d.toString('utf-8')
#
#         output.on 'end', ()->
#           parsedData = JSON.parse(data)
#
#           if parsedData.error
#             msg.send "Error: #{parsedData.error}"
#             return
#
#           msg.send parsedData.converted_txt
#
#     )()

# images = [
#   "http://24.media.tumblr.com/tumblr_m35jnyjTco1qikhvso1_100.gif",
#   "http://www.netanimations.net/head2.gif",
#   "http://www.netanimations.net/Animated-Zombie-Reverse.gif",
#   "http://www.freewebs.com/echoeyy/zombie%20getting%20shot.gif",
#   "https://i.chzbgr.com/maxW500/6360720640/h487AE90F/",
#   "https://i.chzbgr.com/maxW500/5912815872/h8AB29CB2/",
#   "https://i.chzbgr.com/maxW500/5299680512/h5120FD0B/"
#   ]
#
# module.exports = (robot) ->
#   robot.hear /zombi(e|es)/i, (msg) ->
#     msg.send msg.random images
