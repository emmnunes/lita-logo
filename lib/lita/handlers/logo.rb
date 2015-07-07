module Lita
  module Handlers
    class Logo < Handler
      def self.default_config(config)
        config.command_only = false
      end

      route %r{(\w+[.]\w+)\s(?:logo)}i, :logo

      def logo(response)
        query = response.matches[0][0]
        response.reply "https://logo.clearbit.com/" + query
      end
    end

    Lita.register_handler(Logo)
  end
end
