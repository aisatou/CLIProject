class User

  attr_accessor :username, :password
  @@all = []

  def initialize(username, password)
    @username = username
    @password = password
    @@all << self
  end

  def self.all
    @@all
  end

  def favorites
    # search through Fave.all to find favorite instances where favorite.user == User.new(i.e anna)
    Favorites.all.select do |favorite|
      favorite.user == self
    end
  end

  # user has many products thru faves
  # is this returning the products that were favorited by the user?
  def products
    favorites.map do |fave|
      fave.product
    end
  end

  # user has many companies thru products
  # is this returning the companies that the products that were favorited by the user?
  def companies
    products.map do |product|
      product.company
    end
  end

end
