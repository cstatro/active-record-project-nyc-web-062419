class User < ActiveRecord::Base
    has_many :check_outs
    has_many :books, through: :check_outs

    def check_out(book, time= Time.now)
       CheckOut.create(book: book, user: self, check_out_time: time,due: time+604800)
       book.status = "checked_out"
    end
        
    
end
