class CreateDiscGolfCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :disc_golf_courses do |t|
      t.string :name
      t.string :location
      t.integer :number_of_holes
      t.integer :par
      t.integer :length
      t.string :terrain

      t.timestamps
    end
  end
end
