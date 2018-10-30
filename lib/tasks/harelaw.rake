require 'csv'
namespace :harelaw do
  desc "TODO"
  task seed_harelaw: :environment do
	  Harelaw.destroy_all
	  CSV.foreach("lib/assets/CSV_Exported_At_201810171238 (2) - Harelaw.csv", :headers =>true) do |row |
		puts row.inspect
		
		Harelaw.create!(
		timestamp: row[0].to_s,
		value: row[1].to_d
		)
		end

  end

end
