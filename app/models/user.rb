class User < ActiveRecord::Base

  has_many :todos

  validates_presence_of :name, :email
  validates_uniqueness_of :email
end

