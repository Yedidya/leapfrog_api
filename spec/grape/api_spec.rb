require 'spec_helper'
require './api/api/app'

describe API::App do
  include Rack::Test::Methods

  def app
    API::App
  end

  describe API::App do
    describe "POST /api/users" do
      it "returns an empty array of statuses" do
        post "/api/users?last_name=Weiner&first_name=Yedidya&gender=Male"
        expect(last_response.status).to eq(200)
        expect(JSON.parse(last_response.body)).to eq{"'id':1,'last_name':'Rivers','first_name':'John','gender':'Male'"}
      end
    end   
  end
end