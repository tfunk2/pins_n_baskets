class CreateGolfReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :golf_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :golf_course, null: false, foreign_key: true
      t.integer :fairway_rating
      t.integer :green_rating
      t.integer :course_condition
      t.text :things_liked
      t.text :things_disliked

      t.timestamps
    end
  end
end
