class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price, precision:6, scale: 1
      t.string :color
      t.integer :status
      t.date :inward_date
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
