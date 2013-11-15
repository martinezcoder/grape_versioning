class API < Grape::API
  prefix 'api'
  version 'v1' do
    mount V1::Apidemo::Ping
  end
  version 'v2' do
    format 'json'
    mount V2::Apidemo::Ping
    mount V2::Apidemo::ApiUser
  end
end
