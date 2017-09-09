# frozen_string_literal: true

class Deal < ApplicationRecord
  validates :street, presence: true, allow_blank: false, allow_nil: false
  validates :zip, presence: true, allow_blank: false, allow_nil: false
  validates :city, presence: true, allow_blank: false, allow_nil: false
  validates :beds, presence: true, numericality: true, allow_blank: false, allow_nil: false
  validates :baths, presence: true, numericality: true, allow_blank: false, allow_nil: false
  validates :sq_ft, presence: true, numericality: true, allow_blank: false, allow_nil: false
  validates :realty_type, presence: true, allow_blank: false, allow_nil: false
  validates :sale_date, presence: true, allow_blank: false, allow_nil: false
  validates :price, presence: true, numericality: true, allow_blank: false, allow_nil: false
  validates :latitude, presence: true, allow_blank: false, allow_nil: false
  validates :longitude, presence: true, allow_blank: false, allow_nil: false
end
