require 'spec_helper'

describe UsersController do
	render_views

  describe "GET 'new'" do

		before(:each) do
			@user = Factory(:user)		
		end

#Added the 2 following tests, based on factory girl
    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end

		it "should have the right title" do
			get :show, :id => @user
			response.should have_selector("title", :content => @user.name)
		end

		it "should include the users name" do
			get :show, :id => @user
			response.should have_selector("h1", :content => @user.name)
		end

#	have_selector checks the img tag is in the h1 tag and also the css class is gravatar
		it "should have a profile image" do
			get :show, :id => @user
			response.should have_selector("h1>img", :class => "gravatar")
		end



=begin - Old Not sure this is needed now

    it "should be successful" do
      get 'new'
      response.should be_success
    end

		it "should have the right title" do
			get 'new'
			response.should have_selector("title", :content => "Sign up")
		end

=end
  
	end

end
