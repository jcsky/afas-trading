class DailyPrice < ActiveRecord::Base
  belongs_to :futures_targets
end
