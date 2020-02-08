class Comment < ApplicationRecord
  belongs_to :content
  validates :content, presence: true
end
