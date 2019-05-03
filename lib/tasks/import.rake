namespace :import do
  desc "Custom: Import Data From MS SQL 2008 R2 - Adventure Works Sample database"
  task customers: :environment do
  	
  	require 'tiny_tds'


  	puts 'Starting connection to SQL Server...'

  	client = TinyTds::Client.new(
									host: '10.1.1.209', 
									port:  '1433', 
									username: 'rails', 
									password: '12345678', 
									database: 'AdventureWorks2008R2')
		puts 'Connecting to SQL Server...'

		if client.active? == true then
		 puts 'Connected to SQL Server!' 
		end

		puts "Reading data from MSSQL Server table..."
		# sql = "SELECT TOP 10 * FROM AdventureWorks2008R2.Sales.Customer"
		# result = @client.execute(sql)
		result = client.execute("SELECT TOP 10 * FROM AdventureWorks2008R2.Sales.Customer")
		


		if result == [] then 
			puts "ERROR: SQL query has not return data!"
		end

		r = result.each


		if result.affected_rows > 0 then
			puts "#{result.affected_rows} row(s) affected in MSSQL Server"
		end

		result.cancel

		puts 'Closing connection to SQL Server...'
		client.close

		puts "Data to import..."
		# puts "Row 0: #{r[0]}"
		# puts "Customer ID of row 0: #{r[0]["CustomerID"]}"
		r.each { |element|
			element.each { |key, value| 
				print "#{key}:#{value} " 
			}
			print "\n"

		} 
# byebug

  
  end

end