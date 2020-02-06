class CreateUserViews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_views do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.boolean :downvoted
      t.boolean :saved

      t.timestamps
    end
  end
end
