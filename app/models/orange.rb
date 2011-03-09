class Orange < ActiveRecord::Base
#  validates :blueberry, :length => {:is => 2}, :presence => true
  validates :blueberry, :presence => true
#  validates :cherry, :numericality => true, :length => { :minimum => 3 }
  validates :cherry, :numericality => true
end
