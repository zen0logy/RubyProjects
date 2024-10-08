require 'discordrb'
config = File.foreach('config').map(&:strip)

# Extra config file with token and prefix
bottoken = 'YOUR_TOKEN'
prefix = '!' # You can use special characters for prefix

bot = Discordrb::Commands::CommandBot.new token: bottoken, prefix: prefix

bot.command :ping do |msg|
  msg.respond "pong."
end


at_exit { bot.stop }
bot.run 
