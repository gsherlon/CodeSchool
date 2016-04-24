class Tweet < ActiveRecord::Base
  before_save :check

  def check
    self.show_location = true if self.location?
  end
  
end
