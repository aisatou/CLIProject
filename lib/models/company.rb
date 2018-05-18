class Company

  attr_accessor :name, :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def products
    # search through Product.all to find product instances where product.company == Company.new
    Product.all.select do |prod|
      prod.company == self
    end
  end

  # company has many faves thru products
  # are these the favorites of the company's products?
  # is this an array of favorites?
  def faves
    products.map do |product|
      product.faves
    end.flatten
  end

  # company has many users thru products
  def users
    products.map do |prod|
      prod.users
    end.flatten
  end
end
