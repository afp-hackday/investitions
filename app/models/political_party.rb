class PoliticalParty < ActiveRecord::Base
  has_and_belongs_to_many :companies

  def self.rebuild
    connection.execute "truncate table political_parties"
    connection.execute "INSERT INTO political_parties(name)
    select
      distinct(strana)
    from
      sponzori_stran"
  end

  def profits_per_year
    profits = Hash.new(0)
    relevant_companies = companies
    relevant_companies = relevant_companies + companies.collect {|company| company.close_companies}
    relevant_companies = relevant_companies.uniq
    relevant_companies.each do |company|
      company.advantages.each do |advantage|
        profits[advantage.year] += advantage.eurofondy +
                advantage.ine_dotacie +
                advantage.konsolidacna +
                advantage.odpustene_clo +
                advantage.polnodotacie +
                advantage.privatizacia +
                advantage.obstaravania
      end
    end
    profits
  end


end
