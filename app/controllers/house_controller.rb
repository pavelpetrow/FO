# frozen_string_literal: true

class HouseController < ApplicationController
  def index
    @houses = House.all
  end

  def create
    @house = House.new(house_params)
    if @house.save
      render json: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  private

  def house_params
    params.require(:house).permit(:number, :city, :country, :street, :created_at, :updated_at)
  end
end
