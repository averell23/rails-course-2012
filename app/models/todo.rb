class Todo < ActiveRecord::Base
  scope :not_done, :conditions => "done IS NULL OR done is 0"

  belongs_to :user

  validates_presence_of :user_id
  validates_length_of :description, :minimum => 4
end
