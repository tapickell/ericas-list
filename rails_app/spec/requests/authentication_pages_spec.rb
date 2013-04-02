require 'spec_helper'

describe "Authentication" do
  
  subject { page }

  describe "signing page" do
  	before { get signin_path }

  	it { should have_selector('h1', text: 'Sign in') }
  	it { should have_selector('title', test: 'Sign in') }
	end
end
