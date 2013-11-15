module V2
  class UserApi < Grape::API
    get :users do
      User.all
    end
  end
end
