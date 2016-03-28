class Table < ActiveRecord::Base
  has_many :orders
  has_many :menus, through: :orders

  validates :guests, :table_num, presence: true
  validates :paid, :inclusion => {:in => [true, false]}
end
