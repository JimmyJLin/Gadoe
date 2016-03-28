class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :menu
      t.references :table
      t.references :user
      t.timestamps
      t.boolean :completed
    end
  end
end
