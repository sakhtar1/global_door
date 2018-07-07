class CountriesTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :countries do |t|
      t.string :name
      t.string :city
      t.text :description
     end
  end
end
