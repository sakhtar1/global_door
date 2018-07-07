class ContinentsTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :continents do |t|
      t.string :continent_name
      t.string :country_name
      t.text :description
     end
  end
end
