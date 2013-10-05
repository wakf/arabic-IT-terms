class Translation < ActiveRecord::Base

  belongs_to :term
  before_save :default_values
  
  def default_values
    self.votes ||= 0
  end

end
