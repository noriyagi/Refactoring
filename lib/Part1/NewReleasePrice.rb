class NewReleasePrice
  def charge(days_rented)
    result += days_rented * 3
  end

  def frequent_renter_points(days_rented)
    days_rentd > 1 ? 2 : 1
  end
end