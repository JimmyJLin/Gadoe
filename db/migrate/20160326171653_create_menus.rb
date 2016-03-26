class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.text :name
      t.text :cuisine
      t.integer :price
      t.boolean :peanuts
      t.boolean :gluent
      t.boolean :dairy
    end
  end
end
