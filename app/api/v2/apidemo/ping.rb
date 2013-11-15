module V2
  module Apidemo
    class Ping < Grape::API
      get :ping do
        { :ping => params[:pong] || 'pong' }
      end
    end
    class ApiUser < Grape::API
      get :users do
        User.all
      end
    end
  end
end
