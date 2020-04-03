# frozen_string_literal: true

ActiveAdmin.register Clothing do
  permit_params :image, :brand, :name, :clothing_type, :sale_type, :price

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
