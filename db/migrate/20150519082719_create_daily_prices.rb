class CreateDailyPrices < ActiveRecord::Migration
  def change
    create_table :daily_prices do |t|
      t.integer :futures_target_id, null: false
      t.date :date, null: false
      t.decimal :open, :default => 0
      t.decimal :high, :default => 0
      t.decimal :low, :default => 0
      t.decimal :close, null: false, :default => 0
      t.integer :volumn, :default => 0
      t.timestamps null: false
    end
  end
end
