require 'csv'
namespace :import_scv do
 	desc "TODO"
	task :upload_data, [:filename] => :environment do    
  	CSV.foreach('Sacramentorealestatetransactions_new.csv', :headers => true) do |row|
    Address.create!(row.to_hash)
  	end
	end
end