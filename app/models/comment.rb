class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :content
  validates :content, presence: true
  validates :comment, length: { minimum: 1 }
end
