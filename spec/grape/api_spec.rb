ENV['RACK_ENV'] = 'test'
require 'grape'
require 'spec_helper'
require 'rack/test'
require './api/api/app'

describe API::App do
  include Rack::Test::Methods

  def app
    API::App
  end

  describe API::App do
    describe "GET /users" do
      it "retrieves users from database" do
        get "/users"
        expect(last_response.status).to eq(200)
        expect(JSON.parse(last_response.body)).to eq []
      end
    end 

    describe "POST /users" do
      it "should create a new user in the database" do
        post "/users?last_name=Weiner&first_name=Yedidya&gender=Male"
        expect(last_response.status).to eq(200)
        expect(JSON.parse(last_response.body)).to eq {"id": 6,"last_name": "Rivers","first_name": "John","gender": "Male"}
      end
    end
  end
end