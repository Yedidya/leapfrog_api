module API
  class App < Grape::API
    version 'v1', using: :header, vendor: 'api'
    format :json
  end
end
