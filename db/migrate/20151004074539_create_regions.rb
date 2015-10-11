class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.belong_to :country
      
      t.timestamps null: false
    end
  end
end
