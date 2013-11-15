require 'spec_helper'

describe V1::Apidemo::Ping do
  it "ping" do
    get "api/v1/ping"
    response.body.should == { :ping => "pong" }.to_json
  end
  it "ping with paremeter" do
    get "api/v1/ping?pong=test"
    response.body.should == { :ping => "test" }.to_json
  end
end
