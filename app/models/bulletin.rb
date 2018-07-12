class Bulletin < ApplicationRecord
  validates_presence_of :title

  belongs_to :category, optional: true
  mount_uploader :picture, ImageUploader

end

