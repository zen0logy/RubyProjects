require 'discordrb'
config = File.foreach('config').map(&:strip)

bottoken = config[0]
client_id = config[1]
prefix = config[2]

bot = Discordrb::Commands::CommandBot.new token: bottoken, client_id: client_id, prefix: prefix

bot.command :ping do |msg|
  msg.respond "pong."
end


at_exit { bot.stop }
bot.run # runs the bot