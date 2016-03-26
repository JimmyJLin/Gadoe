class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :table_num
      t.integer :guests
      t.boolean :paid, :default => false
      t.references :users

      t.timestamps
    end
  end
end
