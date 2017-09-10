# frozen_string_literal: true

class DealsController < ApplicationController
  before_action :set_deal, only: %i[show update destroy]

  def index
    @deals = Deal.all
    paginate json: @deals, per_page: 10
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

  def search
    type = params[:realty_type]
    min_price = params[:min_price]
    max_price = params[:max_price]
    min_sq_ft = params[:min_sq_ft]
    max_sq_ft = params[:max_sq_ft]
    deals = Deal.where('realty_type LIKE?', "%#{type}%").where(price: min_price..max_price).where(sq_ft: min_sq_ft..max_sq_ft)
    paginate json: deals, per_page: 10
  end

  private

  def set_deal
    @deal = Deal.find(params[:id])
  end

  def search_params
    params.permit(:realty_type, :min_price, :max_price, :min_sq_ft, :max_sq_ft)
  end

  def deal_params
    params.permit(:sale_date, :price, :beds, :baths, :sq_ft, :realty_type, :street, :zip, :city, :state, :latitude, :longitude)
  end
end
