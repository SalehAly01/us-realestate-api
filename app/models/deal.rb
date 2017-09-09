# frozen_string_literal: true

class Deal < ApplicationRecord
  validates :street, presence: true
  validates :zip, presence: true
  validates :city, presence: true
  validates :beds, presence: true, numericality: true
  validates :baths, presence: true, numericality: true
  validates :sq_ft, presence: true, numericality: true
  validates :type, presence: true
  validates :sale_date, presence: true
  validates :price, presence: true, numericality: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
