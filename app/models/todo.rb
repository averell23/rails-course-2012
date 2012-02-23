class Todo < ActiveRecord::Base
  scope :not_done, :conditions => "done IS NULL OR done = 0"

  validates_length_of :description, :minimum => 4
end
