require 'spec_helper'

describe Post do

  it "initializes" do
    Post.new.should_not be_nil
  end

  it "has a valid factory" do
    post = Factory.build(:post)
    post.should be_valid
  end

  it "should allow mass assignement for title and body" do
    post = Post.new(:title => 'title', :body => 'body')
    post.title.should be_present
    post.body.should be_present
  end

end
