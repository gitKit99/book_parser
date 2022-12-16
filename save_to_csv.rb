require 'csv'

class Save
    def saveToCSV(file, data)
      CSV.open(file, "w", :write_headers => true, :col_sep => "---", :headers => ["Book title", "Author", "Description", "Price"]) do |csv|
          data.each{ |i|
            csv << i.values
          }
        end
    end
end