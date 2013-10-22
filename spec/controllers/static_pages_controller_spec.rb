require 'spec_helper'

describe StaticPagesController do

  describe "GET 'lobby'" do
    it "returns http success" do
      get 'lobby'
      response.should be_success
    end
  end

end
