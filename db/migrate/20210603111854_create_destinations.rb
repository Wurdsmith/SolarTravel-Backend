class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.float :distance
      t.float :gravity
      t.integer :temperature
      t.string :image_url
      t.string :object_type
      t.string :temperature_class
      t.string :gravity_class
      t.string :distance_class
      t.belongs_to :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
