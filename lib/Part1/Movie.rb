require '/Users/k_nori-yagi/NetBeansProjects/Refactoring/lib/Part1/RegularPrice'
require '/Users/k_nori-yagi/NetBeansProjects/Refactoring/lib/Part1/NewReleasePrice'
require '/Users/k_nori-yagi/NetBeansProjects/Refactoring/lib/Part1/ChildrensPrice'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title, :price
  attr_accessor :price_code

  def initialize(title, the_price_code)
    @title, self.price_code = title, the_price_code
  end

#  def price_code=(value)
#    @price_code = value
#    @price = case price_code
#    when REGULAR then RegularPrice.new
#    when NEW_RELEASE then NewReleasePrice.new
#    when CHILDRENS then ChildrensPrice.new
#    end
#  end

  #委譲メソッドになった。
  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
   @price.frequent_renter_points(days_rented)
  end
end