# frozen_string_literal: true

class SearchesController < ApplicationController
  def new
    @search = Search.new
    @categories = Clothing.distinct.pluck(:clothing_type)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :category, :min_price, :max_price)
  end
end
