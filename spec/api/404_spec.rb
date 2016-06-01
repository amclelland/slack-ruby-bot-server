require 'spec_helper'

describe SlackBotServer::Api do
  include SlackBotServer::Api::Test::EndpointTest

  context '404' do
    it 'returns a plain 404' do
      get '/foobar'
      expect(last_response.status).to eq 404
      expect(last_response.body).to eq 'Not Found'
    end
  end
end