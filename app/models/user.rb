class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy


    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
