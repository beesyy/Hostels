class RemoveCityidFromHostels < ActiveRecord::Migration
  def change
    change_table :hostels do |t|
      t.remove :city_id
    end      
  end
end
