#how many guesses?
guesses=7
#we need a randomly generated number
answer=rand 50
has_won=false
#Are there points?
#Get a guess 
7.times do
    puts "Make a guess!!!!!!!!!!!!!!!!"

    valid_guess = false
    until valid_guess do
        guess = gets.to_i  
        valid_guess = (1..50).include? guess
        puts "error" unless valid_guess
    end

    
    #puts error for everything that isn't (1..50) and does not use a guess 
   

    if guess > answer
        puts "lower"
    end
    if guess < answer
        puts "higher"
    end
    if guess == answer
        has_won=true
        break
    end
end

if has_won
    puts "WINNER!!!!"
else
    puts "LOSER!!!!"
end

#What happens if the guess is right?
#compare guess to the rand 100
#tell guesser if they need to reguess higher or lower 
#If the guess is right it should let you know 
#If it's wrong it should tell you if higher or lower 
#Guess again 


