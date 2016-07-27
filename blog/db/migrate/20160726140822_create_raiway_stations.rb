class CreateRaiwayStations < ActiveRecord::Migration
  def change
    create_table :raiway_stations do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
