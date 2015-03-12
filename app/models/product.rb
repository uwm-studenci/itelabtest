class Product < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user, :dependent

=======
  belongs_to :user
>>>>>>> 77ec0accb09ad82890ff7dc231755264690442a6
  validates :name, :presence => true, uniqueness: true

  def name_cycki
  	name + "cycki"
  end
end
