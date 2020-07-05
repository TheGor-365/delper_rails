class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :purpose
      t.text :description
      t.integer :popularity

      t.timestamps
    end
  end
end
