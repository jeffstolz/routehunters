class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.string :locations
      t.string :length
      t.text :description
      t.timestamps
    end
  end
end
