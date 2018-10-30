require 'csv'
namespace :allanfearn do
  desc "TODO"
  task seed_allanfearn: :environment do
	  Allanfearn.destroy_all
	  CSV.foreach("lib/assets/CSV_Exported_At_201810171238 - Allanfearn.csv", :headers =>true) do |row |
		puts row.inspect
		
		Allanfearn.create!(
		timestamp: row[0].to_s,
		value: row[1].to_d
		)
		end
  end

end
