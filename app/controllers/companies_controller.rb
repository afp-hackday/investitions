class CompaniesController < ApplicationController
  def index
    @company = Company.find_by_name params[:id]
  end
end
