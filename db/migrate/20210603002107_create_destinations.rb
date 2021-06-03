class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.integer :distance
      t.integer :gravity
      t.integer :temperature
      t.string :object_type
      t.string :image_url
      t.belongs_to :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
