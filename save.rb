require 'csv'
require 'json'
require 'yaml'

class Save
    def saveToCSV(file, data)
      CSV.open(file, "w", :write_headers => true, :col_sep => "---", :headers => ["Book title", "Author", "Description", "Price"]) do |csv|
          data.each{ |i|
            csv << i.values
          }
        end
    end

    def saveToJson(file, data)
      File.open(file, 'w+') { |f| f.puts data.to_json }
    end

    def saveToYaml(file, data)
      File.open(file, 'w+') { |f| f.puts data.to_yaml }
    end
end