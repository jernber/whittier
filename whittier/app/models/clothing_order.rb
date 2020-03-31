class ClothingOrder < ApplicationRecord
  belongs_to :clothing
  belongs_to :order
end
