class Review < ApplicationRecord
 belongs_to :restaurant
 validates :rating, inclusion: { in: %w(0..5), message: "%{rating} must be between 0 and 5" }
end