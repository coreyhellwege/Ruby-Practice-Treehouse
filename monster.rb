class Monster
    attr_reader :name, :actions

    def initialize(name)
        @name = name
        @actions = {
            scream: 0,
            scare: 0,
            run: 0,
            hide: 0
        }
    end

    def say
        print "#{name} says... "
        yield
    end

    def scream
        actions[:scream] += 1
        print "#{name} screams! "
        yield
    end

    def scare
        actions[:scare] += 1
        print "#{name} scares you! "
        yield
    end

    def run
        actions[:run] += 1
        print "#{name} runs! "
        yield
    end

    def hide
        actions[:hide] += 1
        print "#{name} hides! "
        yield
    end

    def scoreboard
        puts "-----------------------"
        puts "#{name} scoreboard"
        puts "-----------------------"
        puts "- Screams: #{actions[:scream]}"
        puts "- Scares: #{actions[:scare]}"
        puts "- Runs: #{actions[:run]}"
        puts "- Hides: #{actions[:hide]}"
        puts "-----------------------"
    end
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }
monster.scream { puts "BOO!" }
monster.scream { puts "RAWR!" }
monster.scare { puts "Go Away!" }
monster.run { puts "I'm going to get you!" }
monster.hide { puts "You can't find me!" }

# puts monster.actions
monster.scoreboard