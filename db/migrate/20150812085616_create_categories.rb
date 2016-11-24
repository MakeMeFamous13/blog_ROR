class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.references :parent_id, index: true, foreign_key: true
      t.boolean :is_default
      t.string :slug
      t.integer :atricles_count
    end
  end
end
