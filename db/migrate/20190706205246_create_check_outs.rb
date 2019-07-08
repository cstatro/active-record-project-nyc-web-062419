class CreateCheckOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :check_outs do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :check_out_time
      t.datetime :due
      t.datetime :returned
      t.float :late_fee
    end
  end
end
