require 'spec_helper'

describe UserSessionsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "renders the new template" do
      get 'new'
      expect(response).to render_template('new')
    end
  end

  describe "POST 'create'" do
    context "with right login" do


    it "redirects" do
      post :create, email: "nicklohr1@gmail.com", password: "password123"
      expect(response).to be_redirect
      expect(response).to redirect_to(subjects_path)
    end

    it "finds the user" do
      expect(User).to recieve(:find_by).with({email: "nicklohr1@gmail.com"}).and_return(user)
      post :create, email: "nicklohr1@gmail.com", password: "password123"
    end

    it "authenticates the user" do
      expect(user).to recieve(:authenticate)
      post :create, email: "nicklohr1@gmail.com", password: "password123"
      end
    end
  end
end
