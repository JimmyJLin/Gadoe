class Menu < ActiveRecord::Base
  validates :name, :cuisine, :price, presence: true
end
