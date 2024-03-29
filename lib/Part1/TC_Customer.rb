require 'rubygems'
require 'test/unit'
#require 'must'
require '/Users/k_nori-yagi/NetBeansProjects/Refactoring/lib/Part1/Customer'
#require 'kconv'

class TC_Customer < Test::Unit::TestCase

#  def assert(status,msg)
#    if(RUBY_PLATFORM.downcase =~ /mswin(?!ce)|mingw|cygwin|bccwin/)
#      msg=Kconv.tosjis(msg)
#    end
#    super(status,msg)
#  end

  def setup
    @obj = Customer.new("kono")
    @movie1 = Movie.new("Star Wars", RegularPrice.new)
    @movie2 = Movie.new("District 9", NewReleasePrice.new)
    @movie3 = Movie.new("Ponyo", ChildrensPrice.new)
  end

  def test1
    @obj.add_rental(Rental.new(@movie1, 7))
    @obj.add_rental(Rental.new(@movie2, 2))
    @obj.add_rental(Rental.new(@movie3, 5))
    test_result = @obj.statement
    result= "Rental Record for kono\n\tStar Wars\t9.5\n\tDistrict 9\t6\n\tPonyo\t4.5\nAmount owed is 20.0\nYou earned 4 frequent renter points"
    assert_equal(result, test_result)
  end
end