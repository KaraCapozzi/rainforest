class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :review, :text
  end
end
