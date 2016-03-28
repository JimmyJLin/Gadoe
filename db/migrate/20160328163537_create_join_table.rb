class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :menus, :tables do |t|
      t.index [:menu_id, :table_id]
      t.index [:table_id, :menu_id]
      t.references :user
      t.timestamps
      t.boolean :completed
    end
  end
end
