CATEGORIES = %w(chinese italian japanese french belgian)

class Restaurant < ApplicationRecord
 has_many :reviews, dependent: destroy
 validates :name, presence: true
 validates :address, presence: true, uniqueness: true
 validates :category, inclusion: { in: CATEGORIES, message: "%{category} is not valid", allow_nil: false }
end