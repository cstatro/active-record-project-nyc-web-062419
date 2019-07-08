class CheckOut < ActiveRecord::Base
    belongs_to :user
    belongs_to :book

    def process_fee
        seconds_past = (self.returned-self.due).to_i
        if seconds_past > 0
            self.late_fee= (seconds_past/86400).floor * 0.5
        end
    end
end