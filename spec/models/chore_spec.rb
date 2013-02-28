require 'spec_helper'

describe Chore do

	before do
		sign_in
	end

	it "fields should be nonempty" do
		subject.should_not be_valid
	end

	it "date finished/due should be on or later than date added" do
		(subject.dateadded <=> subject.datefinished).should <= 0
		subject.dateadded = Date.parse('2013-02-13')
		subject.datefinished = Date.parse('2013-02-12')
		subject.should_not be_valid
	end
end
