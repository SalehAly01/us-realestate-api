# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'csv'
require 'time'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'sacramento_realestate_transactions.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  t = Deal.new
  t.street = row['street']
  t.city = row['city']
  t.zip = row['zip']
  t.state = row['state']
  t.beds = row['beds'].to_i
  t.baths = row['baths'].to_i
  t.sq_ft = row['sq_ft'].to_i
  t.realty_type = row['type']
  date = Time.parse(row['sale_date'])
  t.sale_date = date.utc
  t.price = row['price']
  t.latitude = row['latitude']
  t.longitude = row['longitude']
  t.save
  puts "#{t.street}, #{t.city} saved"
end

puts "There are now #{Deal.count} rows in the deals table"
