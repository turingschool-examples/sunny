class LegislatorsController < ApplicationController
  def zipcode
    @legislators = Legislator.find_by(location: params[:zipcode])
  end
end
