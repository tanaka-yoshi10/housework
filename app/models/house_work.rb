class HouseWork < ActiveRecord::Base
  belongs_to :recipe
  has_many :work_logs
end
