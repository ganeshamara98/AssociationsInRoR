class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :duration_in_months

      t.timestamps
    end
  end
end
