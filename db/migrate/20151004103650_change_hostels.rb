class ChangeHostels < ActiveRecord::Migration
  def change
    change_table :hostels do |t|
      t.remove :region_id
    end    
  end
end
