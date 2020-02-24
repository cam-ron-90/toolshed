class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :category
      t.integer :price
      t.text :description
      t.string :photo
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
