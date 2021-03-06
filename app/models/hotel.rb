class Hotel < ApplicationRecord
  has_attached_file :image, styles: {
    medium: "320x210>"
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
