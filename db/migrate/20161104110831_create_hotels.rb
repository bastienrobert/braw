class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :description
      t.integer :note

      t.timestamps
    end
  end
end
