class Contact < ApplicationRecord
  validates_presence_of :name, :message
  validates :phone, format:{with: /\A09\d{8}\Z/}
  validates :email, format: { with: /\A[^@]+@[^@]+\z/}

end

