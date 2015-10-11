class AddLocationHostels < ActiveRecord::Migration
  def up
    change_table :hostels do |t|
      t.references :location, :polymorphic => true
    end
  end
end
