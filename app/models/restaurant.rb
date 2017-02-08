class Restaurant < ApplicationRecord

CATEGORIES = %w(chinese italian japanese french belgian)

 has_many :reviews, dependent: :destroy
 validates :name, presence: true
 validates :address, presence: true
 validates :category, presence: true
 validates :category, inclusion: { in: CATEGORIES, message: "category is not valid", allow_nil: false }
end