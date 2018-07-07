class AddColumnToContinents < ActiveRecord::Migration[5.2]
  def change
  	add_column :continents, :cont_name,  :string
  	add_column :continents, :country_name,  :string
  	add_column :continents, :visit,  :string
  end
end
