# frozen_string_literal: true

class ClothingsController < ApplicationController
  def index
    @clothes = Clothing.page(params[:page]).per(50)
  end

  def tops
    @clothes = Clothing.where(clothing_type: :top).page(params[:page]).per(9)
  end

  def bottoms
    @clothes = Clothing.where(clothing_type: :bottom).page(params[:page]).per(30)
  end

  def accessory
    @clothes = Clothing.where(clothing_type: :accessory).page(params[:page]).per(30)
  end

  def footwear
    @clothes = Clothing.where(clothing_type: :footwear).page(params[:page]).per(30)
  end

  def jackets
    @clothes = Clothing.where(clothing_type: :jacket).page(params[:page]).per(30)
  end

  def show
    @clothess = Clothing.find(params[:id])
  end

  def edit; end
end
