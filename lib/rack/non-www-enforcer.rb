require "rack"
require "rack/request"

module Rack
  class NonWwwEnforcer

    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new(env)
      url = URI(req.url)
      if url.host =~ /^www\./i
        headers = {'Content-Type' => 'text/html', 'Location' => url.to_s.sub(/www\./i, '')}
        [301, headers, []]
      else
        @app.call(env)
      end
    end
  end
end
