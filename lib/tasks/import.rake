namespace :import do
  desc "TODO"
  task csv: :environment do
  	spreadsheet = Roo::Spreadsheet.open(File.join(Rails.root, 'vendor', 'Sacramentorealestatetransactions.csv'))
  	
  	header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    property = Property.find_by(street: row["street"])
	    product ||= Property.new
	    product.attributes = row.to_hash
	    product.save!
	  end
  end

end
