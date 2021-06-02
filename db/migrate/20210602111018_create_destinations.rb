class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :distance
      t.string :gravity
      t.string :temperature
      t.string :type
      t.string :image_url

      t.timestamps
    end
  end
end
