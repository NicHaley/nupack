class Job
	@@flat = 1.05
	@@markup = {
		"drugs" => 7.5,
		"electronics" => 2,
		"food" => 13
	}

	attr_accessor :base, :numberPeople, :type

	def initialize(base,numberPeople,type)
	end

	def total
	end

	private
	def base
	end

	def markUp
	end

end