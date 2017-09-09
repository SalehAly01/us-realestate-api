# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Deal, type: :model do
  it { should validate_presence_of(:street) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:beds) }
  it { should validate_numericality_of(:beds) }
  it { should validate_presence_of(:baths) }
  it { should validate_numericality_of(:baths) }
  it { should validate_presence_of(:sq_ft) }
  it { should validate_numericality_of(:sq_ft) }
  it { should validate_presence_of(:realty_type) }
  it { should validate_presence_of(:sale_date) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
end
