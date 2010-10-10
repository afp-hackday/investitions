class DashboardController < ApplicationController
  def index
    @parties = []
    PoliticalParty.all.each do |party|
      @parties << party unless party.companies.nil?
    end

    @party_profits = {}

    @parties.each do |party|
      profits =  party.profits_per_year
      @party_profits[party.name] = []

      counter = 0
      (1994..2010).each do |year|
        if profits[year.to_s]
          @party_profits[party.name][counter] = profits[year.to_s]
        else
          @party_profits[party.name][counter] = 0
        end
        counter += 1
      end
    end

    @party_portfolios = {}
    @parties.each do |party|
      @party_portfolios[party.name] = party.portfolio
    end
  end
end
