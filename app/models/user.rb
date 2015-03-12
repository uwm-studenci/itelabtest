class User < ActiveRecord::Base
	has_many :products
<<<<<<< HEAD
	
=======
	has_and_belongs_to_many :tasks
>>>>>>> 77ec0accb09ad82890ff7dc231755264690442a6
	accepts_nested_attributes_for :products
end
