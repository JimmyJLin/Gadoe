class Table < ActiveRecord::Base
  validates :guests, :table_num, presence: true
  validates :paid, :inclusion => {:in => [true, false]}
end
