require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :user_name => "MyString",
      :email => "MyString",
      :password_digest => "MyString"
    ).as_new_record)
    end
  end
