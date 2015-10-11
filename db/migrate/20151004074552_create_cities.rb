class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.belong_to :region, index: true
      
      t.timestamps null: false
    end
  end
end
