gem 'lolize'
require 'lolize/auto'                                                           #creates rainbow effect

### Part I: The Diamond
puts "............Part I: The Diamond............"
spaces = 4                                                                      #spaces count
asteriks = 1                                                                    #asteriks count
while asteriks <= 9                                                             #top half of the diamond
    puts (' ' * spaces)+('*' * asteriks)
    spaces -= 1                                                                 #removes spaces by one for each row
    asteriks +=2                                                                #adds asteriks to create diamond
end

asteriks = 7                                                                    #resets count
spaces = 1
while asteriks > 0                                                              #bottom half of the diamond
    puts (' ' * spaces)+('*' * asteriks)
    spaces += 1
    asteriks -=2
end


### Part II: User Specified Height              
puts ".......Part II: User Specified Height......."
puts "Enter the height of the diamond."
height = gets.chomp.to_i
while height%2 == 0 || height > 25                                              #checks if height is even or too big
    if height > 25
        puts "Invalid response. That'll be a giant diamond. Think smaller."
    elsif height%2 == 0
        puts "Do you really think you can make a diamond with an even number? Try again."
    else
        puts "Invalid response. Try again."
    end
    puts "Enter the height of the diamond."
    height = gets.chomp.to_i
end

spaces = (height-1)/2                                                                       
asteriks = 1                                                                    
row = 0                                                                         
if (height<=23)
    while row <= height/2                                                       
        row += 1
        puts (" " * spaces)+("*" * asteriks)+(" " * spaces)
        spaces -= 1
        asteriks +=2
    end
else                                
end

asteriks -= 4
spaces = 1
while (row > height/2) && (row < height)                                        
    row += 1
    puts (" " * spaces)+("*" * asteriks)+(" " * spaces)
    spaces += 1
    asteriks -=2
end


### Part III: Chained Diamonds
puts ".........Part III: Chained Diamonds........."
puts "Enter the height of the diamond."
height = gets.chomp.to_i
while height%2 == 0 || height > 25
    if height > 25
        puts "Invalid response. That'll be a giant diamond. Think smaller."
    elsif height%2 == 0
        puts "Do you really think you can make a diamond with an even number? Try again."
    else
        puts "Invalid response. Try again."
    end
    puts "Enter the height of the diamond."
    height = gets.chomp.to_i
end

puts "Enter how many diamonds to chain together."
diamonds = gets.chomp.to_i

chain = 0
while chain < diamonds                                                          #number of diamonds - loops to repeat in order to make a chain
    chain += 1
    spaces = (height-1)/2                                                                 
    asteriks = 1                                                                
    row = 0                                                                     
    if (height%2 != 0) && (height<=23)
        while row <= height/2                                                   
            row += 1
            puts (" " * spaces)+("*" * asteriks)+(" " * spaces)
            spaces -= 1
            asteriks +=2
        end
    else                                
    end
    
    asteriks -= 4
    spaces = 1
    while (row > height/2) && (row < height)                                    
        row += 1
        puts (" " * spaces)+("*" * asteriks)+(" " * spaces)
        spaces += 1
        asteriks -=2
    end
end


### Part IV: Side-by-Side
puts "...........Part IV: Side-by-Side..........."

puts "Enter the height of the diamond."
height = gets.chomp.to_i

while height%2 == 0 || height > 25
    if height > 25
        puts "Invalid response. That'll be a giant diamond. Think smaller."
    elsif height%2 == 0
        puts "Do you really think you can make a diamond with an even number? Try again."
    else
        puts "Invalid response. Try again."
    end
    puts "Enter the height of the diamond."
    height = gets.chomp.to_i
end

puts "How many diamonds to place side-by-side?"
side = gets.chomp.to_i

spaces = (height-1)/2                                                                       
asteriks = 1                                                                    
row = 0                                                                         

if (height<=23)                                                                 
    while row <= height/2
        row += 1
        puts ((" " * spaces)+("*" * asteriks)+(" " * spaces)+(" ")) * side      
        spaces -= 1
        asteriks +=2
    end
else                                
end

asteriks -= 4
spaces = 1
while (row > height/2) && (row < height)                                        
    row += 1
    puts ((" " * spaces)+("*" * asteriks)+(" " * spaces)+(" ")) * side
    spaces += 1
    asteriks -=2
end

puts "............................................"

### Part V: Rainbow Magic

#enabled 'lolize' gem to add colors
