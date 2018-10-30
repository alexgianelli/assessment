require 'csv'
namespace :rainfall do
  desc "TODO"
  task seed_rainfall: :environment do
	  Rainfall.destroy_all
	  CSV.foreach("lib/assets/ScotlandRainfall.csv", :headers =>true) do |row |
		puts row.inspect
		
		Rainfall.create!(
		timestamp: row[0].to_s,
		value: row[1].to_d
		)
		end

  end

end
