class CreateGolfCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :golf_courses do |t|
      t.string :name
      t.string :location
      t.integer :number_of_holes
      t.integer :par
      t.integer :length
      t.integer :slope
      t.float :rating

      t.timestamps
    end
  end
end
