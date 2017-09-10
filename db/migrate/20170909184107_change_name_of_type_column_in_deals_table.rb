# frozen_string_literal: true

class ChangeNameOfTypeColumnInDealsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :deals, :type, :realty_type
  end
end
