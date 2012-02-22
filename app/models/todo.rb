class Todo < ActiveRecord::Base
  scope :not_done, :conditions => "done IS NULL OR done is 0"
end
