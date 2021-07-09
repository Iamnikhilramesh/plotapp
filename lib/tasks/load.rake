namespace :load do
  desc "TODO"
  task orders_data: :environment do
    require 'csv'
  
    csv_text = File.read('/Users/nikhilr/Desktop/orders.csv', :encoding => 'iso-8859-1')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Order.create!(row)
    end
  end

end
