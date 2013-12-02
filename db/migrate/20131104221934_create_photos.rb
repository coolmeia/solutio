class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :solution_id
      t.boolean :main

      t.timestamps
    end
  end
end
