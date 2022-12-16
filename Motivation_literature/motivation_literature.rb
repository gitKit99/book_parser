require 'nokogiri'
require 'json'
require 'csv'
require_relative '../save_to_csv.rb'
require_relative '../create_products.rb'

class MotivationLiterature
    url = 'https://nashformat.ua/catalog/motyvatsiina-literatura'
    html = URI.open(url)
    create = Create.new
    products = create.create_products(html)
    save = Save.new
    save.saveToCSV(File.join(File.dirname(__FILE__), "motivation_literature.csv"), products)
end