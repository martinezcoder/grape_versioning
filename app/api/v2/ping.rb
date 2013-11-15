module V2
  class Ping < Grape::API
    get :ping do
      { :ping => params[:pong] || 'pong' }
    end
  end
end
