require 'spec_helper'

describe PagesController do
   render_views 	#ADDED by LRG per Listing 3.15 to force rendering

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
       get 'home'
       response.should have_selector("title",:content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
       get 'contact'
       response.should have_selector("title",:content=>"Ruby on Rails Tutorial Sample App | Contact")
    end
  end
#Start of section added by lrg to match Listing 3.15 in rails3tutorial
#This should cause a failure (RED) because the About page has not yet
#been added
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
       get 'about'
       response.should have_selector("title",:content=>"Ruby on Rails Tutorial Sample App | About")
    end
  end
  #End of section added by lrg to match Listing 3.15
end
