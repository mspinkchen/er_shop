class Category < ApplicationRecord
  validates_presence_of :name
  has_many :bulletins, dependent: :restrict_with_error
end
