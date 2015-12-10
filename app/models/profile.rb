class Profile < ActiveRecord::Base
  has_many :interests, :through
  has_many :profile_interests
  belongs_to :user
end
