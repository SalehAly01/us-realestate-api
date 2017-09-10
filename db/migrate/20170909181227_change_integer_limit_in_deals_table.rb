# frozen_string_literal: true

class ChangeIntegerLimitInDealsTable < ActiveRecord::Migration[5.0]
  def change
    change_column :deals, :beds, :integer, limit: 8
    change_column :deals, :baths, :integer, limit: 8
    change_column :deals, :sq_ft, :integer, limit: 8
    change_column :deals, :price, :integer, limit: 8
  end
end
