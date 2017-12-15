class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.text :bio
      t.integer :age
      t.string :gender
      t.decimal :height

      t.timestamps
    end
  end
end
