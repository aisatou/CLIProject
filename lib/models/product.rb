class Product

  attr_accessor :company, :name, :price, :weight
  @@all = []

  def initialize(company, name, price, weight)
    @company = company
    @name = name
    @price = price
    @weight = weight
    @@all << self
  end

  def self.all
    @@all
  end

  def faves
    # search through Fave.all to find favorite instances where favorite.product == Product.new
    # trying to find all the times the product was favorited
    Favorites.all.select do |favorite|
      favorite.product == self
    end
  end

  # product has many users thru faves
  def users
    faves.map do |fave|
      fave.user
    end
  end

end
