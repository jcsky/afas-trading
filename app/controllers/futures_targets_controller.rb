class FuturesTargetsController < ApplicationController

  def index
    @ft = FuturesTarget.where(:name => "FT").first
    # ft.daily_prices
  end

  private

end
