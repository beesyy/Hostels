class CreateHostels < ActiveRecord::Migration
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :address
      t.string :info
      t.decimal :average_price
      t.belong_to :city, index: true
      
      t.timestamps null: false
    end
  end
end
