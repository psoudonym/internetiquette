class User < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :email

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
