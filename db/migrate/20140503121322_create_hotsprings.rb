class CreateHotsprings < ActiveRecord::Migration
  def change
    create_table :hotsprings do |col|
      col.string :state
	  col.string :location
      col.string :name
      col.string :temperature
    end
  end
end
