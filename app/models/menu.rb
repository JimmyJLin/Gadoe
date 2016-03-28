class Menu < ActiveRecord::Base
  has_many :orders
  has_many :tables, through: :orders
  validates :name, :cuisine, :price, presence: true
end
