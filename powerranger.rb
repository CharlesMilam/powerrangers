# module for mixin use
module Actions
	def punch(person)
		action = []
		@caffeine_level -= 10
		unless @strength > 5
			action << "The #{@name} punches #{person.name}"
			action << "#{person.scream}. #{person.run}."
			person.caffeine_level -= 20
		else
			action << "The #{@name} punches #{person.name}"
			action << "The mighty punch sends #{person.name} somersaulting into the air"
			action << "#{person.scream}. #{person.run}."
			person.caffeine_level -= 30
		end
		action.join(". ")
	end
end

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
	include Actions

	def initialize(color, strength = 5)
		super(name)
		@color = color
		@strength = strength
		@name = color + " Power Ranger"
	end

	def rest
		"The #{@name} rests."
	end

	def use_megazord
		"Uh, oh, looks like the #{@name} is using MEGAZORD, and you know what that means..."
	end
end

class EvilNinja < Person
	include Actions

	def initialize(evilness, strength = 5)
		super(name)
		@evilness = evilness
		@strength = strength
		@name = evilness + " Evil Ninja"
	end

	def cause_mayhem(person)
		person.caffeine_level = 0
		"Egads! The #{@name} is causing mayhem! #{person.name}'s caffeine level has been completely drained. Surely the end is nigh."
	end
end

def fight_scene
	innocent1 = Person.new("Innocent Bystander One", 35)
	minion1 = Person.new("Evil Minion One", 10)
	power1 = PowerRanger.new("Pink", 10)
	power2 = PowerRanger.new("Blue", 3)
	evil1 = EvilNinja.new("Monkey Death Punch", 7)
	evil2 = EvilNinja.new("Dragon Fighting Stance", 1)

	puts innocent1.drink_coffee
	puts minion1.drink_coffee
	puts power1.drink_coffee
	puts evil2.drink_coffee

	puts evil1.punch(innocent1)
	puts evil2.punch(power2)
	puts power1.punch(minion1)
	puts power2.punch(evil2)

	puts evil1.cause_mayhem(power1)
	puts power1.use_megazord
end


# person1 = Person.new("Charles", 33)
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts person1.drink_coffee
# puts "************************************"
# puts person1.run
# puts person1.scream
# puts "************************************"
# pr1 = PowerRanger.new("Pink", 10)
# puts pr1.name
# puts pr1.punch(person1)
# puts "************************************"
# puts pr1.punch(evil_minion1 = Person.new("Evil Minion One"))
# puts "************************************"
# puts pr1.use_megazord
# puts "************************************"
# puts pr1.punch(person1)
# puts pr1.punch(person1)
# puts pr1.punch(person1)
# puts "************************************"
# en1 = EvilNinja.new("Monkey Death Punch")
# puts en1.punch(person1)
# puts en1.cause_mayhem(person1)
puts "************************************"
fight_scene