# frozen_string_literal: true

class DealsController < ApplicationController
  before_action :set_deal, only: %i[show update destroy]

  def index
    @deals = Deal.all
    json_response(@deals)
  end

  def show
    json_response(@deal)
  end

  def create
    @deal = Deal.create! deal_params
    json_response(@deal, :created)
  end

  def update
    @deal.update(deal_params)
    head :no_content
  end

  def destroy
    @deal.destroy
    head :no_content
  end

  private

  def set_deal
    @deal = Deal.find(params[:id])
  end

  def deal_params
    params.permit(:sale_date, :price, :beds, :baths, :sq_ft, :realty_type, :street, :zip, :city, :state, :latitude, :longitude)
  end
end
