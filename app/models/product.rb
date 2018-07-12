class Product < ApplicationRecord
  validates_presence_of :name
  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos, :allow_destroy => true
  #之後要做nested form，先設定接受變更photo底下的attribute
end
