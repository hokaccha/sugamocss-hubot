# Description:
#   I'm edo!!!
#
# Commands:
#   hubot edo こんにちは

module.exports = (robot) ->
  robot.respond /edo (.+)/i, (msg) ->
    text = (msg.match[1] || '').trim()
    return unless text
    msg.send("http://128.199.136.148:4000/edo?text=#{text}")
