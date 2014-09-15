require "active_support"

class Comment < ActiveRecord::Base
		include ActiveModel::Validations
  belongs_to :post
  validates_presence_of :post_id
  validates_presence_of :body
end
