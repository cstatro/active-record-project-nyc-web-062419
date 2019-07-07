signed_in_user = nil


def find_available(title)
    ###find an available book that's checked in
end

def next_available(title)
    ###sort by return date and find the one closest to current time. 
end

def print_titles(arg= Book.order(name: :asc))
    arg.pluck(:name).each_with_index {|book,i| puts "#{i+1}. #{book}"}
end

def greet_user
    puts "Please Enter Name:"
    input = STDIN.gets.chomp
    input.downcase!
    input.capitalize!
    if User.find_by(name: input)
        signed_in_user = User.find_by(name: input)
        puts "Welcome back #{signed_in_user.name}!"
        ##list menu options
    else
        User.create(name: input)
        puts "Thanks for singing up #{input}! Please have a look around at our selection of books."
        ## list menu options
    end
end

        
