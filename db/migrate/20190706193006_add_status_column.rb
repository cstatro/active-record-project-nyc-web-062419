class AddStatusColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :books,:status,:string
    add_column :books,:quality,:integer
  end
end
