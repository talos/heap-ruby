require 'helper'

class ClientSessionTrackTest < MiniTest::Test
  def setup
    @stubs = Faraday::Adapter::Test::Stubs.new do |stub|
    end
    @heap = HeapAPI::Client.new
    @heap.app_id = 'test-app-id'
    @heap.faraday_adapter = :test
    @heap.faraday_adapter_args = [@stubs]
  end

  def teardown
    @stubs.verify_stubbed_calls
  end

  def test_session_track
    env_id = '11'
    user_id = '12'
    session_id = '13'
    pageview_id = '14'
    ses_props = {
      'ts' => '1234',
      'h' => '/landing/page'
    }
    event = 'Server-side track'
    properties = {
      'custom' => 'property'
    }
    @stubs.post '/api/integrations/sessiontrack/8253958574' do |env|
      golden_body = {
        'app_id' => env_id,
        'user_id' => user_id,
        'session_id' => session_id,
        'pageview_id' => pageview_id,
        'ses_props' => ses_props,
        'event' => event,
        'properties' => properties
      }
      assert_equal 'application/json', env[:request_headers]['Content-Type']
      assert_equal @heap.user_agent, env[:request_headers]['User-Agent']
      assert_equal golden_body, JSON.parse(env[:body])
    end

    assert_equal @heap, @heap.session_track(env_id, user_id, session_id,
                                            pageview_id, ses_props, event,
                                            properties)
  end
end
