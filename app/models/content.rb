class Content < ApplicationRecord
  has_many :comments, dependent: :destroy

  belongs_to :user
  has_one_attached :file
  geocoded_by :place
  has_many :user_views
  validates :description, length: { minimum: 1 }
  after_validation :geocode, if: :will_save_change_to_place?

  def downvoted?(user)
    user.user_views.select(&:downvoted).map(&:content).include?(self)
  end
end
