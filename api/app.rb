module API
  class App < Grape::API
    version 'v1', using: :header, vendor: 'api'
    format :json

    resources :users do
      post do 
        User.create({
          gender: params[:gender],
          last_name: params[:last_name],
          first_name: params[:first_name]
          })
      end
    end
  end
end
