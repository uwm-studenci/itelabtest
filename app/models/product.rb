class Product < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true, uniqueness: true

  def name_cycki
  	name + "cycki"
  end
end
