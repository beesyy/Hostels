class Hostel < ActiveRecord::Base
  validates :name, :address, :info, presence: true
  validates :average_price, numericality: { greater_than: 0 }

  belongs_to :location, polymorphic: true
end
