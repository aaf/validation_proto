class Orange < ActiveRecord::Base

  validates :blueberry, :presence => {:message=>'My custom message'}
  validates :cherry, :numericality => true, :uniqueness => true  
  validates :latitude, 
    :presence => {:message => "is required"}, 
    :format => { :with => /^(-?(90|([0-8]?\d))((\.|,)\d{1,5})?)?$/, 
    :message => "must be between -90.0 and 90.0" 
  }
  
  validates :longitude, 
    :presence => {:message => "is required"}, 
    :format => { :with => /^(-?(180|((1[0-7]|\d?)\d))((\.|,)\d{1,5})?)?$/, 
    :message => "must be between -180.0 and 180.0" 
  }

  def latitude=(value)
    logger.info "value = " + value.to_s   
    logger.info "value.class = " + value.class.to_s 
    write_attribute :latitude, value.gsub(',','.')
    latitude
  end

  def longitude=(value)
    write_attribute :longitude, value.gsub(',','.')
    longitude
  end

end
