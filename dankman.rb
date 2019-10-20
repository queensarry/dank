#bank of answers
#hangman graphic 
#lives and number of lives 
#already guessed letter 
#right and wrong system for letters 
#randomly generated answer each time 
#game loop
    #welcome to dankman
    #representation of how many letters in answer(hidden)
    #hangman graphic
    #guess letters 
    #if right letter is revealed 
    #if wrong hangman graphic appears 
    #if you run out of graphics you lose 
    #if you reveal all letters you win 
    # File.readlines('foo').each do
words = File.readlines("/usr/share/dict/words")
answer = words.select { |word| word.length < 8 && word.length > 5}.sample.strip.downcase

art = [
"
/----\\
|    |
|     
|      
|     
|
----------
",
"
/----\\
|    |
|    o 
|      
|
----------
",
"
/----\\
|    |
|    o
|    | 
|      
|
----------
",
"
/----\\
|    |
|    o
|    |\\ 
|      
|
----------
",
"
/----\\
|    |
|    o
|   /|\\ 
|      
|
----------
",
"
/----\\
|    |
|    o
|   /|\\ 
|   /   
|
----------
",
"
/----\\
|    |
|    o
|   /|\\ 
|   / \\   
|
----------
"
]
artnumber = 0
guesses = []
loop do 
    puts art[artnumber]
    answer.chars.each do |char|
        if guesses.include?(char)
            print(char+" ") 
        else
            print("_ ") 
        end
    end
    puts
    if answer.chars.all? { |char| guesses.include?(char) }
        puts "WINNER!!!"
        break
    end 
    if artnumber>=6 
        puts "LOSER!!! The word was #{answer}"
        break
    end
    puts "Make a guess, bitch!"
    guess = gets.strip.downcase
    alphabet = [*"a".."z"]
    
    if guesses.include?(guess)
        puts "You've already guessed that"
        next
    end
    if alphabet.include?(guess)
        guesses << guess
        if answer.chars.include?(guess)
            puts "Nice!"
        else
            puts "Wrong!"
            artnumber += 1
        end
    else 
      puts  "Invalid!"
    end
end

