require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "creation" do
  	before do
  		@employee = Employee.create(email: "test@test.com", first_name: "capy", last_name: "bara", password: "asdfasdf", password_confirmation: "asdfasdf")
  	end

  	it "can be created" do
  		expect(@employee).to be_valid
  	end

  	it "cannot be created without cannot be created without first_name, last_name, type" do
  		 @employee.first_name =  nil
         @employee.last_name =  nil
         @employee.type = nil
  		expect(@employee).to_not be_valid
  	end
  end
end