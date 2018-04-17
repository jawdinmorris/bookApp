class AddCounterToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :counter, :integer
  end
end
