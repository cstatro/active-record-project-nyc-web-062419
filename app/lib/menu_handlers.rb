####### SIGN IN

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

####### MAIN MENU

def handle_main_menu_input(input,session)  
    case(input.to_i)
    when 1
        print_titles(session.view)
        print_line
        display_sub_options_one
        handle_sub_options_one(session)
    when 2
        display_sub_two
        print_line
        handle_sub_two(session)
        
    when 3
        puts "Goodbye! Please comeback soon!"
        session.toggle_login
    else 
        puts "input not found..."
        session.menu_options
    end
end

    ####### HANDLE MAIN MENU - SUB1

def handle_sub_options_one(session)
    input = STDIN.gets.chomp
    print_line
    case(input.to_i)
    when 1
        subone_one
        handle_sub_one_one(session)
    when 2
        puts "NOT IMPLEMENTED CATEGORY"
    when 3
        session.main_menu
    else
        puts "Option not found."
        handle_sub_options_one(session)
    end
end

       ####### MAIN MENU - SUB1-1
def handle_sub_one_one(session)
    input = STDIN.gets.chomp 
    session.logged_in.check_out(session.view[input.to_i-1])
    puts "Going Back To Main Menu"
    session.main_menu
end

    ####### HANDLE MAIN MENU - SUB2
def handle_sub_two(session)
    input = STDIN.gets.chomp
    case(input.to_i)
    when 1
        print_titles(session.logged_in.books_out)
        print_line
        handle_sub_two_one(session)
    when 2
        puts "Need Handler"
    when 3
        session.main_menu
    end
end
        ####### HANDLE MAIN MENU - SUB2-1
def handle_sub_two_one(session)
    puts "What will you return?"
    input = STDIN.gets.chomp
    session.logged_in.check_in(session.logged_in.books_out[input-1])
    puts "Thank you!"
    print_line
    session.main_menu
end






        
