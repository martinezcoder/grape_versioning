module V1
  module Apidemo
    class Ping < Grape::API
      get :ping do
        { :ping => params[:pong] || 'pong' }.to_json
      end
    end
  end
end
