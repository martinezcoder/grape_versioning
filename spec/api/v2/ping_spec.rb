require 'spec_helper'

describe V2::Apidemo::Ping do
  it "ping" do
    get "api/v2/ping"
    response.body.should == { :ping => "pong" }.to_json
  end
  it "ping with paremeter" do
    get "api/v2/ping?pong=test"
    response.body.should == { :ping => "test" }.to_json
  end
end

describe V2::Apidemo::ApiUser do
  it "respond with all users" do
    get "api/v2/users"
    response.body.should == User.all.to_json
  end
end
