class CreateResourceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_categories do |t|
      t.belongs_to :resource, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
