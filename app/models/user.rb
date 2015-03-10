class User < ActiveRecord::Base
	has_many :products
	has_and_belongs_to_many :tasks
	accepts_nested_attributes_for :products
end
