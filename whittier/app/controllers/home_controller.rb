# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    random_number = rand(1..Clothing.count)
    @clothes = Clothing.where(id: random_number)
  end

  def edit; end
end
