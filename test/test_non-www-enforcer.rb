$:.push File.expand_path("../../lib", __FILE__)
require 'rack-non-www-enforcer'

require 'test/unit'
require 'rack/test'

class TestNonWwwEnforcer < Test::Unit::TestCase
  include Rack::Test::Methods

  def mock_app
    lambda { |env|
      headers = {'Content-Type' => "text/html"}
      [200, headers, ["OK"]]
    }
  end

  def app
    @app ||= Rack::NonWwwEnforcer.new(mock_app)
  end
  attr_writer :app

  def test_redirect_www_to_main_domain
    get "http://www.example.org/"
    assert_equal "http://example.org/",
      last_response.headers['Location']
  end
end
