class Animal < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30, minimum: 3 }
  validates :sound, presence: true, length: { maximum: 30, minimum: 2 }
end
