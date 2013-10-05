class Term < ActiveRecord::Base

  has_many :translations, :dependent => :destroy

  accepts_nested_attributes_for :translations, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

end
