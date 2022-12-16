class Book
    attr_accessor :name, :author, :description, :price

    def as_values(options={})
        {
            name: @name,
            author: @author,
            description: @description,
            price: @price
        }
    end

    def to_json(*options)
        as_values(*options).to_json(*options)
    end
end