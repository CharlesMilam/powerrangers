# a person, who has a name and a caffeine level, and
# can perform certain actions
class Person
	def initialize(name, caffeine = 0)
		@name = name
		@caffeine_level = caffeine
	end

	# the person runs. person runs faster based on caffeine level
	def run
		case @caffeine_level
		when 0..25
			"#{@name} trots..."
		when 26..50
			"#{@name} runs..."
		when 51..75
			"#{@name} runs fast...gotta love coffee..."
		when 75..100
			"#{@name} runs really, really, fast...too much coffee, man..."
		else
			"#{@name} does nothing...either not enough coffee, or heart has exploded from too much..."
		end
	end

	# a person screams. sceam is enhance by caffeine level
	def scream
		case @caffeine_level
		when 0..25
			"Eeek!..."
		when 26..50
			"Yelp!!..."
		when 51..75
			"Yar!!!..."
		when 75..100
			"Rawr!!!!1!!!11!!!eleven!!!..."
		else
			"Um, errr, more coffee, please..."
		end
	end

	# a person drinks ambrosia, errr coffee, thereby increasing their caffeine
	def drink_coffee
		@caffeine_level += 10
		"#{@name} drinks coffee...yum!"
	end


end

class PowerRanger
end

class EvilNinja
end

person1 = Person.new("Charles", 33)
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts person1.run
puts person1.scream
puts person1.drink_coffee
