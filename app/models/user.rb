class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :init_profile

  def init_profile
    Profile.create(user_id: self.id)
  end
end
