class CreateHotsprings < ActiveRecord::Migration
  def change
    create_table :hotsprings do |col|
      col.string :state_code
      col.string :state
      col.string :latitude
      col.string :longitude
	  col.string :location_url
      col.string :name
      col.string :temperature
      col.string :comfort_level
    end
  end
end
