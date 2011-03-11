class Orange < ActiveRecord::Base
  validates :blueberry, :presence => {:message=>'My custom message'}
  validates :cherry, :numericality => true, :uniqueness => true  
  validates :latitude, :presence => {:message => "is required"}, :format => { :with => /^(-?(90|([0-8]?\d))((\.|,)\d{1,5})?)?$/, :message => "must be between -90 and 90" }
  validates :longitude, :presence => {:message => "is required"}, :format => { :with => /^(-?(180|((1[0-7]|\d?)\d))((\.|,)\d{1,5})?)?$/, :message => "must be between -180 and 180" }
end
