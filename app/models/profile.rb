class Profile < ActiveRecord::Base
  has_many :interests, dependent: :destroy
  belongs_to :user
end
