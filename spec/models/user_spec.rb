require 'spec_helper'

describe User do
  let (:valid_attributes) {
    {
      user_name: "Nick",
      email: "nicklohr1@gmail.com",
      password: "password1234",
      password_confirmation: "password1234"
    }

  }
  context "validations" do
    let(:user) {User.new(valid_attributes)}

    before do
      User.create(valid_attributes)
    end

    it "requires an email" do
      expect(user).to validate_presence_of(:email)
    end

    it "requires a unique email" do
      expect(user).to validate_uniqueness_of(:email)
    end

    it "requires a unique email (case insensitive)" do
      user.email = NICKLOHR1@GMAIL.COM
      expect(user).to validate_uniqueness_of(:email)
    end

    it "requires an email to look like an email" do
      user.email = "something_invalid"
      expect(user).to_not be_valid
    end
end



    describe "#downcase_email" do
      it "makes the email attribute lower case" do
        user = User.new(valid_attributes.merge(email: "NICKLOHR1@gmail.COM"))
        user.downcase_email
        expect(user.email).to eq("nicklohr1@gmail.com")
      end

    it "downcases an email before saving" do
      user = User.new(valid_attributes)
      user.email = "NICK2653@aol.com"
      expect(user.save).to be_true
      expect(user.email).to eq("nick2653@aol.com")
    end


    end

    describe "admin" do
      it "is not an admin by default" do
        user = User.new(valid_attributes)
        expect( user ).not_to be_admin
      end
    end

end
