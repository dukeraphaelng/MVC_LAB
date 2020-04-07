def ask(prompt)
    puts prompt
    input = gets.chomp
    return input
end

def ask_pure(prompt)
    puts prompt
    input = gets
    return input
end