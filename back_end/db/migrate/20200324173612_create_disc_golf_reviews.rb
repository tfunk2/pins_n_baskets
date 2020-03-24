class CreateDiscGolfReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :disc_golf_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :disc_golf_course, null: false, foreign_key: true
      t.integer :course_condition
      t.integer :difficulty_rating
      t.text :things_liked
      t.text :things_disliked

      t.timestamps
    end
  end
end
