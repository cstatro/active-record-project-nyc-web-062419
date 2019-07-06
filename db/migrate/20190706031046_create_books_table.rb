class CreateBooksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :category_id
      t.integer :author_id
    end
  end
end
