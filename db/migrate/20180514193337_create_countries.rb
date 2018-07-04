class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
    	t.string :name
      	t.string :country
      	t.text :reason
    end
  end
end
