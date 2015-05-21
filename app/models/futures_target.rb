class FuturesTarget < ActiveRecord::Base
  has_many :daily_prices, :dependent => :destroy

end
