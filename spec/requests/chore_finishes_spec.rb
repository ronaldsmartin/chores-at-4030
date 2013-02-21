require 'spec_helper'

describe "ChoreFinishes" do
  describe "GET /chore_finishes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get chore_finishes_path
      response.status.should be(200)
    end
  end
end
