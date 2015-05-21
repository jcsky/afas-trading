require "csv"

namespace :dev do
  task :input_price => :environment do

    fields_to_insert = %w{ date high low close volumn }

    target = FuturesTarget.where(name: "FT").first

    rows_to_insert = []

    CSV.foreach("price/FT_1.csv", headers: true) do |row|
      row_to_insert = row.to_hash.select { |k, v| fields_to_insert.include?(k) }
      target.daily_prices.create(row_to_insert)
    end
# 未完成唯一性檢查
  end

end
