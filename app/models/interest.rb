class Interest < ActiveRecord::Base
  has_many :profiles, :through
  has_many :profile_interests
end
