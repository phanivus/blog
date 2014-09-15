require "active_support"

class Post < ActiveRecord::Base 
		include ActiveModel::Validations
  has_many :comments, dependent: :destroy
  validates_presence_of :title
  validates_presence_of :body 
end
