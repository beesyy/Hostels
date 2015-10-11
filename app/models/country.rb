class Country < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { scope: :name, 
                                   message: "Country should be unique" }
             
  has_many :region
  has_many :city, through: :region
  has_many :hostel, through: :city
end
