# a person, who has a name and a caffeine level, and
# can perform certain actions
class Person
	attr_reader :name
	attr_accessor :caffeine_level

	def initialize(name, caffeine = 0)
		@name = name
		@caffeine_level = caffeine
	end

	# the person runs. person runs faster based on caffeine level
	def run
		case @caffeine_level
		when 0..25
			"#{@name} trots away..."
		when 26..50
			"#{@name} runs away..."
		when 51..75
			"#{@name} runs away fast...gotta love coffee..."
		when 75..100
			"#{@name} runs away really, really, fast...too much coffee, man..."
		else
			"#{@name} does nothing...either not enough coffee, or heart has exploded from too much..."
		end
	end

	# a person screams. sceam is enhance by caffeine level
	def scream
		case @caffeine_level
		when 0..25
			"#{@name} screams Eeek!..."
		when 26..50
			"#{@name} screams Yelp!!..."
		when 51..75
			"#{@name} screams Yar!!!..."
		when 75..100
			"#{@name} screams Rawr!!!!1!!!11!!!eleven!!!..."
		else
			"#{@name} says Um, errr, more coffee, please..."
		end
	end

	# a person drinks ambrosia, errr coffee, thereby increasing their caffeine
	def drink_coffee
		@caffeine_level += 10
		"#{@name} drinks coffee...yum!"
	end


end

class PowerRanger < Person
	def initialize(color, strength = 5)
		super(@caffeine_level)
		@color = color
		@strength = strength
	end

	def punch(person)
		action = []
		@caffeine_level -= 10
		unless @strength > 5
			action << "The #{@color} Power Ranger punches #{person.name}"
			action << "#{person.scream}. #{person.run}."
			person.caffeine_level -= 20
		else
			action << "The #{@color} Power Ranger punches #{person.name}"
			action << "The mighty punch sends #{person.name} somersaulting into the air"
			action << "#{person.scream}. #{person.run}."
			person.caffeine_level -= 30
		end
		action.join(". ")
	end

	def rest
		"The #{@color} Power Ranger rests."
	end

	def use_megazord
		"Uh, oh, looks like the #{@color} Power Ranger is using MEGAZORD, and you know what that means..."
	end
end

class EvilNinja
end

person1 = Person.new("Charles", 33)
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts person1.drink_coffee
puts "************************************\n"
puts person1.run
puts person1.scream
puts "************************************\n"
pr1 = PowerRanger.new("Pink", 10)
puts pr1.punch(person1)
puts "************************************\n"
puts pr1.punch(evil_minion1 = Person.new("Evil Minion One"))
puts "************************************\n"
puts pr1.use_megazord
puts "************************************\n"
puts pr1.punch(person1)
puts pr1.punch(person1)
puts pr1.punch(person1)
puts "************************************\n"