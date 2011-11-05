require '/Users/k_nori-yagi/NetBeansProjects/Refactoring/lib/Part1/DefaultPrice'

class ChildrensPrice
  include DefaultPrice
  def charge(days_rented)
    result += 1.5
    result += (days_rented - 3) * 1.5 if days_rented > 3
    result
  end
end