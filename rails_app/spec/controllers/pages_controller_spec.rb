require 'spec_helper'

describe PagesController do
	render_views

	before(:each) do
		@base_title = "Erica's List"
	end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

		it "should have the right title" do
			get 'home'
		end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
		
		it "should have the right title" do
			get 'contact'
		end
  end

	describe "GET 'about'" do
		it "returns http success" do
			get 'about'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'about'
		end
	end

	describe "GET 'help'" do
		it "returns http success" do
			get 'help'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'help'
		end
	end

end
