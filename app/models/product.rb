class Product < ActiveRecord::Base

  belongs_to :users 

  validates :name, :presence => true, uniqueness: true

  def name_cycki
  	name + "cycki"
  end
end
