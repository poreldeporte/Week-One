class Rooms
	attr_accessor(:description, :exits, :position)
	def initialize(description, exits, position)
		@description = description
		@exits = exits
		@position = 0
	end
end

info = Rooms.new("Rise and shine!", " ", 0)
start = Rooms.new("", "S", 0)
room1 = Rooms.new("This is your wake up call. Every day of your working life, you have given people the news that they are going to die soon. Now you will die if you don’t get out of here. Your aim in this game is to get out alive. You have until six on the clock to do it.", "S", 1)
room2 = Rooms.new("You are a perfectly healthy, sane, middle-class male. Yet last month, you ran a straight razor across your wrists. Did you cut yourself because you truly wanted to die, or did you just want some attention? Tonight, you’ll show me. The irony is that if you want to die, you just have to stay where you are. But if you want to live, you’ll have to move on.  ", "E", 2)
room3 = Rooms.new("Good choice. If you’re so ill, then why do I have so many photos of you up and about? Let’s put your so-called illness to the test. Right now, there is a slow-acting poison in your veins. The antidote is in the next room. Hurry up and get it. But watch your step. And by the way, that’s a flammable substance smeared on your body, so I would be careful with that candle, if I were you...", "N", 3)
room4 = Rooms.new("You're welcome for the antidote. You don’t know me, but I know you. I want to play this game. You know what happens if you lose. The device you’re wearing is hooked into your upper and lower jaws. When the timer at the back goes off, your mouth will be permanently ripped open. Think of it like a reverse bear trap. Here, shall I show you?", "W", 4)
room5 = Rooms.new("Congratulations, you made it. Most people are so ungrateful to be alive. You’re one of the lucky few.", "", 5)

puts info.description
puts ""
puts "You’re probably wondering where you are. I’ll tell you where you might be. You might be in the room that you die in. Up until now, you simply sat in the shadows, watching others live out their lives. But what do voyeurs see when they look into the mirror? Now, I see you as a strange mix of someone angry and yet apathetic. But mostly just pathetic. So are you going to watch yourself die today? Or do something about it?"
puts ""
puts "You will travel through a series of rooms, all with only one exit. Your movements consist of only North (type: 'N'), South (type: 'S'), East (type: 'E'), West (type: 'W'). Choose wisely or you will forever be trapped in the Game of Rooms."
puts start.description 

place =  start.position
current = start.exits

until(place == 5) do
    print "Move >>"
    movement = gets.chomp

    if(current.include?(movement) && place == 0) 
        puts room1.description
        place = place + 1
        current = room1.exits
    
    elsif(current.include?(movement) && place == 1)    
        puts room2.description
        place = place + 1    
        current = room2.exits    

    elsif(current.include?(movement) && place == 2)
        puts room3.description
        place = place + 1
        current = room3.exits

    elsif(current.include?(movement) && place == 3)
        puts room4.description
        place = place + 1
        current = room4.exits

    elsif(current.include?(movement) && place == 4)
        place = place + 1
        puts room5.description
    
    else
        if(place == 0) 
            if(movement == "E")
            	puts "When you are in hell, only the devil can help you out. Try again."
            
            elsif(movement == "W")
            	puts "Live or die, make your choice. Try again."
                        
            elsif(movement == "N")
                puts "Sorry but that exit is forever in the shadows. Move forward or perish"
            end

        elsif(place == 1)    
            if(movement == "W")
            	puts "Death is a surprise party. Unless, of course, you're already dead on the inside. Try again."
            
            elsif(movement == "E")
            	puts "When you're good at anticipating the human mind, you leave nothing to chance. Try again."
                        
            elsif(movement == "N")
                puts "Sorry but that exit is forever in the shadows. Move forward or perish"
            end

        elsif(place == 2)
            if(movement == "S")
            	puts "You think it's over just because I am dead. It's not over. The games have just begun. Try again."
            
            elsif(movement == "W")
            	puts "How much blood will you shed to stay alive? Try again."
                        
            elsif(movement == "N")
                puts "Sorry but that exit is forever in the shadows. Move forward or perish"
            end

        elsif(place == 3)
            if(movement == "E")
            	puts "Don't worry, you're sound asleep and can't feel a thing. Try again."
            
            elsif(movement == "S")
            	puts "It will be like finding a needle in a haystack. Try again."
                        
            elsif(movement == "W")
                puts "Sorry but that exit is forever in the shadows. Move forward or perish"
            end

        elsif(place == 4)
            if(movement == "E")
            	puts "The rules of our game have been made very clear. You need to abide by those rules. Try again."
            
            elsif(movement == "N")
            	puts "Yeah. No. Try again."
                        
            elsif(movement == "S")
                puts "Sorry but that exit is forever in the shadows. Move forward or perish"
            end
        end
    end
end