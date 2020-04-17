# frozen_string_literal: true

class ClothingsController < ApplicationController
  before_action :initialize_session
  before_action :load_cart
  add_breadcrumb 'home', :root_path
  def index
    random_number = rand(1..Clothing.count)
    @clothes = Clothing.where(id: random_number)
  end

  def load_cart
    @cart = Clothing.find(session[:cart])
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  def tops
    @clothes = Clothing.where(clothing_type: :top).page(params[:page]).per(30)
    add_breadcrumb 'tops', clothings_tops_path
  end

  def bottoms
    @clothes = Clothing.where(clothing_type: :bottom).page(params[:page]).per(30)
    add_breadcrumb 'bottoms', clothings_bottoms_path
  end

  def accessory
    @clothes = Clothing.where(clothing_type: :accessory).page(params[:page]).per(30)
    add_breadcrumb 'accessory', clothings_accessory_path
  end

  def footwear
    @clothes = Clothing.where(clothing_type: :footwear).page(params[:page]).per(30)
    add_breadcrumb 'footwear', clothings_footwear_path
  end

  def jackets
    @clothes = Clothing.where(clothing_type: :jacket).page(params[:page]).per(30)
    add_breadcrumb 'jackets', clothings_jackets_path
  end

  def show
    @clothes = Clothing.find(params[:id])
    add_breadcrumb @clothes.name, clothing_path(@clothes.id)
  end

  def edit; end

  protected

  def initialize_session
    session[:visit_count] ||= 0
    session[:cart] ||= []
  end
end
