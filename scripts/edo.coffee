# Description:
#   I'm edo!!!
#
# Commands:
#   hubot edo こんにちは
#   hubot zudo 俺がzudoだ！

module.exports = (robot) ->
  robot.respond /(edo|zudo) (.+)/i, (msg) ->
    type = msg.match[1]
    text = (msg.match[2] || '').trim()
    return unless text
    msg.send("http://128.199.136.148:4000/#{type}?text=#{encodeURIComponent(text)}")
