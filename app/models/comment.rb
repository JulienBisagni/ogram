class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :content
  has_many :comment_votes
end
