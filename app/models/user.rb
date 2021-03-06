class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :user_neighborhoods, :dependent=>:destroy
  has_many :neighborhoods, :through => :user_neighborhoods
  has_many :user_categories, :dependent=>:destroy
  has_many :categories, :through => :user_categories

 

end
