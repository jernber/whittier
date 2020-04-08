# frozen_string_literal: true

class SearchesController < ApplicationController
  def index
    @search = Search.new
  end

  def new
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show; end
end
