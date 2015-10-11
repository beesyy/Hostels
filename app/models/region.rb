class Region < ActiveRecord::Base
  validates :name, presence: true
  
  belongs_to :country
  has_many :city, dependent: :destroy  
  has_many :hostel, as: :location, dependent: :destroy
end
