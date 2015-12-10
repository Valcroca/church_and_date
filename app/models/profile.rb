class Profile < ActiveRecord::Base
  has_many :interests, through: :profile_interests
  has_many :profile_interests
  belongs_to :user
end
