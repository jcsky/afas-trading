class CreateFuturesTargets < ActiveRecord::Migration
  def change
    create_table :futures_targets do |t|
      t.string :name, null: false
      t.string :info
      t.timestamps null: false
    end
    add_index :futures_targets,  :name,  :unique => true
  end
end
