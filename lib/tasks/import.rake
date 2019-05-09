namespace :import do
  desc "Custom: Import Data From MS SQL 2008 R2 - ACCPAC PEN001 database"
  task customers: :environment do
  	
  	require 'tiny_tds'


  	puts 'Starting connection to SQL Server...'

  	client = TinyTds::Client.new(
									host: '192.168.1.8', 
									port:  '1433', 
									username: 'readonly', 
									password: '12345678', 
									database: 'PEN001')
		puts 'Connecting to SQL Server...'

		if client.active? == true then
		 puts 'Connected to SQL Server!' 
		end

		puts "Reading data from MSSQL Server table..."
		# sql = "SELECT TOP 10 * FROM AdventureWorks2008R2.Sales.Customer"
		# result = @client.execute(sql)
		result = client.execute("	SELECT * 
															FROM PEN001.dbo.ARCUS
															WHERE SWACTV = '1'
														")

		if result == [] then 
			puts "ERROR: SQL query has not return data!"
		end
# byebug
		r = result.each


		if result.affected_rows > 0 then
			puts "#{result.affected_rows} row(s) affected in MSSQL Server"
		end

		result.cancel

		puts 'Closing connection to SQL Server...'
		client.close

		puts "Total ACCPAC ARCUS table records to import: #{r.size}"
		
		Arcu.import r, validate: true

		#Customer.delete_all
		#puts "Data to import..."
		#puts "Row 0: #{r[0]}"
		
		# puts "Customer ID of row 0: #{r[0]["CustomerID"]}"
		
# 		r.each { |element|
# 			c = Customer.new
# 			element.each { |key, value|
# 				c[key] = value 
# # byebug
# 				print "#{key}:#{value} "
# 			}
# 			c.save
		
# byebug
		# } 

# byebug
	
		#customers = Customer.all
		puts "Total Rails Arcu table records imported: #{Arcu.all.count}"

byebug

  end

end