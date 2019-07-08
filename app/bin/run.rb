class Session 
    attr_accessor :logged_in,:view
    def initialize
        puts "Hello welcome to the Library!"
        toggle_login
    end
    def toggle_login
        if !logged_in
            @logged_in = greet_user
        else
            logged_in = nil
        end
    end
end