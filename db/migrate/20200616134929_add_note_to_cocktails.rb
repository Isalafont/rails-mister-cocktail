class AddNoteToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :note, :integer
  end
end
