class Product < ActiveRecord::Base
  belongs_to :user, :dependent

  validates :name, :presence => true, uniqueness: true

  def name_cycki
  	name + "cycki"
  end
end
