class UpdateNullValidationAllColumnsInDealsTable < ActiveRecord::Migration[5.0]
  def change
    change_column_null :deals, :street, false
    change_column_null :deals, :city, false
    change_column_null :deals, :zip, false
    change_column_null :deals, :state, false
    change_column_null :deals, :beds, false
    change_column_null :deals, :baths, false
    change_column_null :deals, :sq_ft, false
    change_column_null :deals, :realty_type, false
    change_column_null :deals, :sale_date, false
    change_column_null :deals, :price, false
    change_column_null :deals, :latitude, false
    change_column_null :deals, :longitude, false
  end
end
