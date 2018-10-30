require 'csv'
namespace :temperature do
  desc "TODO"
  task seed_temperature: :environment do
	  Temperature.destroy_all
	  CSV.foreach("lib/assets/ScotlandMeanTemperature.csv", :headers =>true) do |row |
		puts row.inspect
		
		Temperature.create!(
		timestamp: row[0].to_s,
		value: row[1].to_d
		)
		end

  end

end
