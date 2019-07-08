####### GENERAL PURPOSE
def print_line
    puts "--------------------------------------"
end

def print_titles(arg= Book.order(name: :asc))
    arg.pluck(:name).each_with_index {|book,i| puts "#{i+1}. #{book}"}
end



######## MAIN MENU

def display_main_options
    puts "Please choose an option from below:"
    puts "1. View Books"
    puts "2. Return Book(s)"#need to implement multiple return
    puts "3. Logout"
end

    ######## MAIN MENU - SUB1

def display_sub_options_one
    puts "What would you like to do?"
    puts "1. Checkout Book"
    puts "2. View By Category"
    puts "3. Back to Main Menu"
    puts "Enter Choice:"
end

        ####### MAIN MENU - SUB1-1

def subone_one
    puts "Please select book from the list"
end

    ####### MAIN MENU - SUB2
def display_sub_two
    puts "1. View Checked Out Books"
    puts "2. Return All Books"
    puts "3. Back to Main Menu"
end

