require 'csv'
require_relative 'book.rb'

class Create
    def create_products(html)
        products = []
        doc = Nokogiri::HTML(html)
            doc.css(".row.list.item").each do |product|
                book = Book.new()
                book.name = product.css('.product-list_title').map { |name| name.text.strip }
                book.author = product.css('.product-list_author.h4').map{ |author| author.text.strip }
                book.description = product.css('.row.product-list_desc').map { |description| description.text.strip }
                book.price = product.css('.cost-count').map { |price| price.text.strip }
                products.push(book)
            end
        return products
    end
end