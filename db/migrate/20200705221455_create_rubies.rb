class CreateRubies < ActiveRecord::Migration[6.0]
  def change
    create_table :rubies do |t|
      t.string :lesson_title
      t.integer :lesson_number
      t.string :question
      t.text :answer
      t.text :example
      t.text :link
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
