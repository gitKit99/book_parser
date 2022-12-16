require 'open-uri'
require 'nokogiri'
require 'json'
require 'csv'
require_relative '../save.rb'
require_relative '../create_products.rb'

class Fiction
    url = 'https://nashformat.ua/catalog/khudozhnia-literatura'
    html = URI.open(url)
    create = Create.new
    products = create.create_products(html)
    save = Save.new
    save.saveToCSV(File.join(File.dirname(__FILE__), "fiction.csv"), products)
    save.saveToJson(File.join(File.dirname(__FILE__), "fiction.json"), products)
    save.saveToYaml(File.join(File.dirname(__FILE__), "fiction.yaml"), products)
end