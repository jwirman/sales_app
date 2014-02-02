class SiteController < ApplicationController

  def index
    @groups_reps = SalesGroup.includes(:sales_reps)
    @locations_rep = Location.includes(:sales_rep)
    @groups_reps_location = SalesGroup.includes(sales_reps: [:location])
  end

end
