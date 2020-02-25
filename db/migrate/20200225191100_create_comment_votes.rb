class CreateCommentVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_votes do |t|
      t.boolean :downvoted
      t.boolean :upvoted
      t.references :user, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
