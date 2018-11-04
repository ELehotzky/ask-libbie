class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :website
      t.string :description
      t.string :phone
      t.string :image
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
