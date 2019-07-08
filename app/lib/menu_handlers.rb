
def book_available?(title)
    Book.find_by(name: title,status: "in_stock")
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
        signed_in_user
        ##list menu options
    else
        signed_in_user = User.create(name: input)
        puts "Thanks for singing up #{input}! Please have a look around at our selection of books."
        signed_in_user
    end
end



def handle_main_menu_input(input,session)  
    case(input.to_i)
    when 1
        print_titles
        print_line
        display_sub_options_one
        handle_sub_options_one(session)
    when 2
       puts "BOTTOM TEXT"
    when 3
        puts "Goodbye! Please comeback soon!"
        session.toggle_login
    else 
        puts "input not found..."
        session.menu_options
    end
end

def handle_sub_options_one(session)
    input = STDIN.gets.chomp
    case(input.to_i)
    when 1
        puts "NOT IMPLEMENTED CHECKOUT"
    when 2
        puts "NOT IMPLEMENTED CATEGORY"
    when 3
        session.main_menu
    else
        puts "Option not found."
        handle_sub_options_one(session)
    end
end


        
