require 'rails_helper'

RSpec.describe ReportsController, :type => :controller do

  describe "GET ymd" do
    it "returns http success" do
      get :ymd
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET received_week" do
    it "returns http success" do
      get :received_week
      expect(response).to have_http_status(:success)
    end
  end

end
