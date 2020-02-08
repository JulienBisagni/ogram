class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :contents
  has_many :user_views

  def user_has_seen_content?(content_id)
    self.user_views.map(&:content).include?(Content.find(content_id))
  end
end
