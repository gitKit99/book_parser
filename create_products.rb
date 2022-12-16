require 'csv'

class Create
    def create_products(html)
        products = []
        doc = Nokogiri::HTML(html)
            doc.css(".row.list.item").each do |product|
            name = product.css('.product-list_title').map { |name| name.text.strip }
            author = product.css('.product-list_author.h4').map{ |author| author.text.strip }
            description = product.css('.row.product-list_desc').map { |description| description.text.strip }
            price = product.css('.cost-count').map { |price| price.text.strip }
            products.push(
                name: name.first,
                author: author.first,
                description: description.first,
                price: price.first
            )
        end
        return products
    end
end