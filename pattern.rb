### Part I: The Diamond
sp = 4                              #spaces count
ast = 1                             #asteriks count
while ast <= 9                      #top half of the diamond
    puts (' ' * sp)+('*' * ast)
    sp -= 1
    ast +=2
end

ast = 7
sp = 1
while ast > 0                                #bottom half of the diamond
    puts (' ' * sp)+('*' * ast)
    sp += 1
    ast -=2
end


puts "........................."


### Part II: User Specified Height
puts "Enter the height of the diamond."
height = gets.chomp.to_i
if height%2 == 0
    while height%2 == 0
        puts "Do you really think you can make a diamond with an even number? Try again."
        puts "Enter the height of the diamond."
        height = gets.chomp.to_i
    end
end

sp = (height-1)/2                           #spaces variable            
ast = 1                                     #asteriks variable
row = 0                                     #row count
if (height<=23)
    while row <= height/2
        row += 1
        puts (" " * sp)+("*" * ast)+(" " * sp)
        sp -= 1
        ast +=2
    end
else                                
    #puts "Do you really think you can make a diamond with an even number?"
end

ast -= 4
sp = 1
while (row > height/2) && (row < height)         #bottom half of the diamond
    row += 1
    puts (" " * sp)+("*" * ast)+(" " * sp)
    sp += 1
    ast -=2
end


puts "........................."


### Part III: Chained Diamonds
puts "Enter the height of the diamond."
height = gets.chomp.to_i
if height%2 == 0
    while height%2 == 0
        puts "Do you really think you can make a diamond with an even number? Try again."
        puts "Enter the height of the diamond."
        height = gets.chomp.to_i
    end
end
puts "Enter how many diamonds to chain."
dia = gets.chomp.to_i
chain = 0
while chain < dia
    chain += 1
    sp = (height-1)/2                           #spaces variable            
    ast = 1                                     #asteriks variable
    row = 0                                     #row count
    if (height%2 != 0) && (height<=23)
        while row <= height/2
            row += 1
            puts (" " * sp)+("*" * ast)+(" " * sp)
            sp -= 1
            ast +=2
        end
    else                                
        if height > 25
            puts "ok, that diamond is gonna be huge (try again later?) btw fix this code later"
        end
    end
    
    ast -= 4
    sp = 1
    while (row > height/2) && (row < height)          #bottom half of the diamond
        row += 1
        puts (" " * sp)+("*" * ast)+(" " * sp)
        sp += 1
        ast -=2
    end
end


puts "........................."


### Part IV: Side-by-Side
puts "Enter the height of the diamond."
height = gets.chomp.to_i
if height%2 == 0
    while height%2 == 0
        puts "Do you really think you can make a diamond with an even number? Try again."
        puts "Enter the height of the diamond."
        height = gets.chomp.to_i
    end
end
puts "How many diamonds to place side-by-side?"
side = gets.chomp.to_i

sp = (height-1)/2                           #spaces variable            
ast = 1                                     #asteriks variable
row = 0                                     #row count
if (height<=23)
    while row <= height/2
        row += 1
        puts ((" " * sp)+("*" * ast)+(" " * sp)+(" ")) * side
        sp -= 1
        ast +=2
    end
else                                
    #puts "Do you really think you can make a diamond with an even number?"
end

ast -= 4
sp = 1
while (row > height/2) && (row < height)         #bottom half of the diamond
    row += 1
    puts ((" " * sp)+("*" * ast)+(" " * sp)+(" ")) * side
    sp += 1
    ast -=2
end


puts "........................."

