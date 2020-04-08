# frozen_string_literal: true

class Search < ApplicationRecord
  def search_books
    clothes = Clothing.all
    if keywords.present?
      clothes = Clothing.where(['name LIKE ?', "%#{keywords}%"])
    end
    if category.present?
      clothes = Clothing.where(['clothing_Type LIKE ?', category])
    end
    clothes = Clothing.where(['price >= ?', min_price]) if min_price.present?
    clothes = Clothing.where(['price <= ?', max_price]) if max_price.present?
    clothes = Clothing.where(['brand LIKE ?', brand]) if brand.present?

    clothes
  end
end
