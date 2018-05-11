class AddColumnToContinents < ActiveRecord::Migration[5.2]
  def change
  	add_column :continents, :name,  :string
  	add_column :continents, :description,  :string
  	
  end
end
