gem 'lolize'
require 'lolize/auto'                                                           #creates rainbow effect

### Part I: The Diamond
puts "............Part I: The Diamond............"
sp = 4                                                                          #spaces count
ast = 1                                                                         #asteriks count
while ast <= 9                                                                  #top half of the diamond
    puts (' ' * sp)+('*' * ast)
    sp -= 1                                                                     #removes spaces by one for each row
    ast +=2                                                                     #adds asteriks to create diamond
end

ast = 7                                                                         #resets count
sp = 1
while ast > 0                                                                   #bottom half of the diamond
    puts (' ' * sp)+('*' * ast)
    sp += 1
    ast -=2
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

sp = (height-1)/2                                                               #spaces variable            
ast = 1                                                                         #asteriks variable
row = 0                                                                         #row count
if (height<=23)
    while row <= height/2                                                       #top half of the diamond
        row += 1
        puts (" " * sp)+("*" * ast)+(" " * sp)
        sp -= 1
        ast +=2
    end
else                                
end

ast -= 4
sp = 1
while (row > height/2) && (row < height)                                        #bottom half of the diamond
    row += 1
    puts (" " * sp)+("*" * ast)+(" " * sp)
    sp += 1
    ast -=2
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
dia = gets.chomp.to_i

chain = 0
while chain < dia                                                               #loops to repeat diamonds in order to make a chain
    chain += 1
    sp = (height-1)/2                                                           #spaces variable            
    ast = 1                                                                     #asteriks variable
    row = 0                                                                     #row count
    if (height%2 != 0) && (height<=23)
        while row <= height/2                                                   #top half of the diamond
            row += 1
            puts (" " * sp)+("*" * ast)+(" " * sp)
            sp -= 1
            ast +=2
        end
    else                                
    end
    
    ast -= 4
    sp = 1
    while (row > height/2) && (row < height)                                    #bottom half of the diamond
        row += 1
        puts (" " * sp)+("*" * ast)+(" " * sp)
        sp += 1
        ast -=2
    end
end


### Part IV: Side-by-Side
puts "...........Part IV: Side-by-Side..........."

puts "Enter the height of the diamond."
height = gets.chomp.to_i
#if height%2 == 0
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

sp = (height-1)/2                                                               #spaces variable            
ast = 1                                                                         #asteriks variable
row = 0                                                                         #row count
color = "red".to_sym
if (height<=23)                                                                 #top half of the diamond
    while row <= height/2
        row += 1
        puts ((" " * sp)+("*" * ast)+(" " * sp)+(" ")) * side                   #places diamonds side-by-side
        sp -= 1
        ast +=2
    end
else                                
end

ast -= 4
sp = 1
while (row > height/2) && (row < height)                                        #bottom half of the diamond
    row += 1
    puts ((" " * sp)+("*" * ast)+(" " * sp)+(" ")) * side
    sp += 1
    ast -=2
end

puts "............................................"

### Part V: Rainbow Magic

#enabled 'lolize' gem to add colors
