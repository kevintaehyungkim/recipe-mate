class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :instruction
      t.references :user, index: true, foreign_key: true
      t.integer :time
      t.integer :total_rating
      t.integer :num_ratings

      t.timestamps
    end
  end
end
