class FuturesTargetsController < ApplicationController

  def index
    @ft = FuturesTarget.where(:name => "FT").first
    price = @ft.daily_prices.select(:date,:close).to_a
    @future_prices=[]
    price.each { |p|
      @future_prices << [p.date.to_time.to_i*1000,p.close]
    }

  end

  private

end
