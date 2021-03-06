class User < ActiveRecord::Base
	has_many :products, :dependent => :destroy

	has_and_belongs_to_many :tasks 

	accepts_nested_attributes_for :products

	mount_uploader :avatar, AvatarUploader
end
