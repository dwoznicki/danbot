module SlackBotServer
  module Commands
    class GetBlurb < SlackRubyBot::Commands::Base
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "BLURB")
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end