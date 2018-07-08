class AddColumnsToCountries < ActiveRecord::Migration[5.2]
  def change
  	add_column :countries, :continent_name, :string
  end
end
