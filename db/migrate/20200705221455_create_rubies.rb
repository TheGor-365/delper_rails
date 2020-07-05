class CreateRubies < ActiveRecord::Migration[6.0]
  def change
    create_table :rubies do |t|
      t.string :lesson_title
      t.integer :lesson_number
      t.string :question
      t.text :answer
      t.text :example
      t.text :link

      t.timestamps
    end
  end
end
