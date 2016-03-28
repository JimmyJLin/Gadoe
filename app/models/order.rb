class Order < ActiveRecord::Base
  belongs_to :menu
  belongs_to :table


end
