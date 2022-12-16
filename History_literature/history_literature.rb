require 'open-uri'
require 'nokogiri'
require 'json'
require 'csv'
require_relative '../save_to_csv.rb'
require_relative '../create_products.rb'

class HistoryLiterature
    url = 'https://nashformat.ua/catalog/istoriia-viiskova-sprava'
    html = URI.open(url)
    create = Create.new
    products = create.create_products(html)
    save = Save.new
    save.saveToCSV(File.join(File.dirname(__FILE__), "history_literature.csv"), products)
end