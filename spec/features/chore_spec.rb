require 'spec_helper'

describe "Trying to add a chore" do
	fixtures :users

	before do
		sign_in
	end

	it "require a nonempty chore" do
		visit chores_path
		click_link "New Chore"
		click_button "Create Chore"

		error_message = "Field must be nonempty"
		page.should have_content error_message
	end
end