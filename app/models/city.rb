class City < ActiveRecord::Base
  validates :name, presence: true
  
  belongs_to :region
  has_many :hostel, as: :location, dependent: :destroy
end
