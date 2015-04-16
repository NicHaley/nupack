require "rspec"
require_relative "../nupack"

RSpec.describe Job, "#totalRounded" do

	# Outputs as described in problem set
	output1 = Job.new(1299.99,3, "food")
	output2 = Job.new(5432.00,1, "drugs")
	output3 = Job.new(12456.95,4, "books")

	# More tests
	output4 = Job.new(1299.99,3,"FOOD")
	output5 = Job.new(5432,1, "drugs")

	it "should equal 1591.58 for base of 1299.99, 3 people and type food" do
		expect(output1.totalRounded).to eq(1591.58)
	end

	it "should equal 6199.81 for base of 5421.00, 1 person and type drugs" do
		expect(output2.totalRounded).to eq(6199.81)
	end

	it "should equal 13707.63 for base of 12456.95, 4 people and type books" do
		expect(output3.totalRounded).to eq(13707.63)
	end

	it "should equal 1591.58 for base of 1299.99, 3 people and type FOOD (capitalized)" do
		expect(output4.totalRounded).to eq(1591.58)
	end

	it "should equal 6199.81 for base of 5421, 1 person and type drugs" do
		expect(output5.totalRounded).to eq(6199.81)
	end

end