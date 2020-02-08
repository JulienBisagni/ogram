class Content < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  geocoded_by :place
  has_many :user_views

  after_validation :geocode, if: :will_save_change_to_place?
end
