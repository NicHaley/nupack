class Job
	@@flat = 1.05
	@@markup = {
		"drugs" => 7.5,
		"electronics" => 2,
		"food" => 13
	}

	attr_accessor :base, :numberPeople, :type

	def initialize(base,numberPeople=1,type="ZeroMarkup")
		@base = base
		@numberPeople = numberPeople
		@type = type.downcase
	end

	def totalRounded
		(base * markUp * 100).round / 100.0
	end

	private
	def base
		@base * @@flat
	end

	def markUp
		numPercent = @numberPeople * 1.2
		((@@markup[@type] ? @@markup[@type] : 0 ) + numPercent) / 100 + 1
	end
end