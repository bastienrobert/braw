class AddImageToHotels < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :hotels, :image
  end

  def self.down
    remove_attachment :hotels, :image
  end
end
