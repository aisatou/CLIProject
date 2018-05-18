require_relative '../lib/models/company.rb'
require_relative '../lib/models/favorites.rb'
require_relative '../lib/models/product.rb'
require_relative '../lib/models/user.rb'

require 'pry'

# seeds
hanan = User.new("hanan", "hanan1")
aisha = User.new("aisha", "aisha2")
dimitri = User.new("dimitri", "dimitri3")
marley = User.new("marley", "marley4")
anaya = User.new("anaya", "anaya5")

fenty = Company.new("Fenty Beauty", "Los Angeles")
anastasia = Company.new("Anastasia Beverly Hills", "Beverly Hills")
dior = Company.new("Dior", "Paris")
korres = Company.new("Korres", "Brooklyn")
elephant = Company.new("Drunk Elephant", "Montreal")
origins = Company.new("Origins", "Manhattan")
yves = Company.new("Yves Saint Laurent", "Paris")
huda = Company.new("Huda Beauty", "Dubai")
nars = Company.new("NARS", "LA")
farmacy = Company.new("Farmacy", "Albany")
roebucks = Company.new("Dr. Roebucks", "NY")
organics = Company.new("Kora Organics", "Williamsburg")
philosophy = Company.new("Philosophy", "Park Avenue")

primer = Product.new(fenty, "Pro Filtr", 32, 1.08)
highlight = Product.new(anastasia, "Amrezy", 28, 0.31)
concealer = Product.new(yves, "All Hours Concealer", 34, 0.17)
foundation = Product.new(huda, "Faux Filter", 40, 1.18)
eyeshadow = Product.new(nars, "NARSissist Wanted", 59, 1.4)
moisturizer = Product.new(origins, "Plantscription", 52, 3.4)
cleanser = Product.new(farmacy, "Green Clean", 34, 3.2)
mask = Product.new(roebucks, "Tama Healing Mask", 28, 1.69)
supplement = Product.new(organics, "Noni Glow Skinfood", 55, 30)
exfoliator = Product.new(philosophy, "Microdelivery Exfoliating Facial Wash", 60, 32)

favorite = Favorites.new(hanan, primer)
favorite2 = Favorites.new(aisha, highlight)
favorite3 = Favorites.new(dimitri, cleanser)
favorite4 = Favorites.new(marley, concealer)
favorite5 = Favorites.new(anaya, foundation)
favorite6 = Favorites.new(hanan, supplement)
favorite7 = Favorites.new(aisha, exfoliator)
favorite8 = Favorites.new(dimitri, mask)
favorite9 = Favorites.new(marley, eyeshadow)
favorite10 = Favorites.new(anaya, moisturizer)
favorite11 = Favorites.new(aisha, foundation)
favorite12 = Favorites.new(marley, mask)
favorite13 = Favorites.new(hanan, exfoliator)
favorite14 = Favorites.new(aisha, cleanser)
favorite15 = Favorites.new(anaya, primer)


fenty.products
# [#<Product:0x007fe32291d158
#   @company=#<Company:0x007fe3230342c0 @location="Los Angeles", @name="Fenty Beauty">,
#   @name="Pro Filtr",
#   @price=32,
#   @weight=1.08>]

fenty.faves
# [#<Favorites:0x007fbd198a1f00
#   @product=
#    #<Product:0x007fbd198a2270
#   @company=#<Company:0x007fbd198a29c8 @location="Los Angeles", @name="Fenty Beauty">,
#   @name="Pro Filtr",
#   @price=32,
#   @weight=1.08>,
#   @user=#<User:0x007fbd198a2d10 @password="hanan1", @username="hanan">>,
#     #<Favorites:0x007fbd198a1cd0
#   @product=
#     #<Product:0x007fbd198a2270
#   @company=#<Company:0x007fbd198a29c8 @location="Los Angeles", @name="Fenty Beauty">,
#   @name="Pro Filtr",
#   @price=32,
#   @weight=1.08>,
#   @user=#<User:0x007fbd198a2a68 @password="anaya5", @username="anaya">>]

fenty.users
# [#<User:0x007f863a0a7a90 @password="hanan1", @username="hanan">,
#  #<User:0x007f863a0a6ed8 @password="anaya5", @username="anaya">]

favorite.product
#<Product:0x007fd87a16f418
# @company="Fenty Beauty",
# @name="Pro Filtr",
# @price=32,
# @weight=1.08>

favorite.user
# <User:0x007fd87a16fd28 @password="hanan1", @username="hanan">

hanan.favorites
# [#<Favorites:0x007fc02c01a7e0
#   @product=
#    #<Product:0x007fc02c018c38
#     @company="Fenty Beauty",
#     @name="Pro Filtr",
#     @price=32,
#     @weight=1.08>,
#   @user=
#    #<User:0x007fc02c01ab50
#     @password="hanan1",
#     @username="hanan">>,
#  #<Favorites:0x007fc02c887f40
#   @product=
#    #<Product:0x007fc02c018170
#     @company="Kora Organics",
#     @name="Noni Glow Skinfood",
#     @price=55,
#     @weight=30>,
#   @user=
#    #<User:0x007fc02c01ab50
#     @password="hanan1",
#     @username="hanan">>,
#  #<Favorites:0x007fc02c887810
#   @product=
#    #<Product:0x007fc02c01b168
#     @company="Philosophy",
#     @name="Microdelivery Exfoliating Facial Wash",
#     @price=60,
#     @weight=32>,
#   @user=
#    #<User:0x007fc02c01ab50
#     @password="hanan1",
#     @username="hanan">>]

hanan.products
# [#<Product:0x007fc02c018c38
#   @company="Fenty Beauty",
#   @name="Pro Filtr",
#   @price=32,
#   @weight=1.08>,
#  #<Product:0x007fc02c018170
#   @company="Kora Organics",
#   @name="Noni Glow Skinfood",
#   @price=55,
#   @weight=30>,
#  #<Product:0x007fc02c01b168
#   @company="Philosophy",
#   @name="Microdelivery Exfoliating Facial Wash",
#   @price=60,
#   @weight=32>]

hanan.companies
# ["Fenty Beauty", "Kora Organics", "Philosophy"]

primer.faves
# [#<Favorites:0x007fc02c01a7e0
#   @product=
#    #<Product:0x007fc02c018c38
#     @company="Fenty Beauty",
#     @name="Pro Filtr",
#     @price=32,
#     @weight=1.08>,
#   @user=
#    #<User:0x007fc02c01ab50
#     @password="hanan1",
#     @username="hanan">>,
#  #<Favorites:0x007fc02c8873b0
#   @product=
#    #<Product:0x007fc02c018c38
#     @company="Fenty Beauty",
#     @name="Pro Filtr",
#     @price=32,
#     @weight=1.08>,
#   @user=
#    #<User:0x007fc02c019070
#     @password="anaya5",
#     @username="anaya">>]

primer.users
# [#<User:0x007fc02c01ab50
#  @password="hanan1",
#  @username="hanan">,
# #<User:0x007fc02c019070
#  @password="anaya5",
#  @username="anaya">]


binding.pry
true
