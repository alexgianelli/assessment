require 'csv'
namespace :dalmarnock do
  desc "TODO"
  task seed_dalmarnock: :environment do
	  	  Dalmarnock.destroy_all
	  CSV.foreach("lib/assets/CSV_Exported_At_201810171238 (1) - Dalmarnock STW.csv", :headers =>true) do |row |
		puts row.inspect
		
		Dalmarnock.create!(
		timestamp: row[0].to_s,
		value: row[1].to_d
		)
		end
  end

end
