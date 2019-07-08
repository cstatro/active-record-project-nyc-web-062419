class User < ActiveRecord::Base
    has_many :check_outs
    has_many :books, through: :check_outs

    def check_out(book, time= Time.now)
       if  book_available?(book.name)
       CheckOut.create(book: book, user: self, check_out_time: time,due: time+604800)
       book.status = "checked_out"
       book.save
       else
        puts "I'm Sorry, all copies of #{book.name} are currently checked out..."
       end
    end
    def check_in(book, time= Time.now)
        checkout = CheckOut.find_by(book: book,returned: nil)
        ### process late fee  needed
        checkout.returned = time
        checkout.process_fee
        book.status = "in_stock"
        book.save
        checkout.save
    end
    def fees_paid
        CheckOut.where(user: self).pluck(:late_fee).compact.sum
    end
    def books_out
        # CheckOut.where(user: self,returned: nil).pluck(:book)
        CheckOut.where(user: self,returned: nil).map {|x| x.book}
    end
           
end
