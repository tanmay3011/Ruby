class Item

  attr_accessor :name, :imported, :exempted_sales_tax, :price

  def to_s
    "#{ name } \t #{ price }"
  end

  def calculate_price
    price + calculate_sales_tax + calculate_import_tax
  end

  private
    def calculate_import_tax
      imported ? price * 0.1 : 0
    end

    def calculate_sales_tax
      exempted_sales_tax ? 0 : price * 0.05
    end
end
