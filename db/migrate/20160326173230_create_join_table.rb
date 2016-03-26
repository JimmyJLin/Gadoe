class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :menus, :tables do |t|
      t.index [:menu_id, :table_id]
      t.index [:table_id, :menu_id]
    end
  end
end
