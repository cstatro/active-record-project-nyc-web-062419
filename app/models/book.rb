class Book < ActiveRecord::Base
   belongs_to :author
   belongs_to :category
   has_many :check_outs
   has_many :users,through: :check_outs
   def initialize hash
      super hash
      self.quality = 5
      self.status = "in_stock"
   end
   def order_new
      copy = self.dup 
      copy.quality = 5
      copy.status = "in_stock"
      copy.save
   end
end