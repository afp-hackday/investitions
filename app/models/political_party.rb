class PoliticalParty < ActiveRecord::Base
  has_and_belongs_to_many :companies, :join_table => "company_political_parties"

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

    relevant_companies = companies.collect {|company| company.id }
    relevant_companies = relevant_companies + companies.collect { |c| c.close_companies.collect {|company| company.id }}
    
    relevant_companies = relevant_companies.uniq
    Advantage.find(:all, :conditions => {:company_id => relevant_companies}, :group => :period).each do |advantage|
      profits[advantage.period] += advantage.eurofondy +
              advantage.ine_dotacie +
              advantage.konsolidacna +
              advantage.odpustene_clo +
              advantage.polnodotacie +
              advantage.privatizacia +
              advantage.obstaravania
    end

    profits
  end

  def portfolio
    profits = Hash.new(0)

    relevant_companies = companies.collect {|company| company.id }
    relevant_companies = relevant_companies + companies.collect { |c| c.close_companies.collect {|company| company.id }}
    
    relevant_companies = relevant_companies.uniq
    Advantage.find(:all, :conditions => {:company_id => relevant_companies}).each do |advantage|
      profits[:eurofondy] += advantage.eurofondy
      profits[:ine_dotacie] += advantage.ine_dotacie
      profits[:odpustene_clo] += advantage.odpustene_clo
      profits[:polnodotacie] += advantage.polnodotacie
      profits[:privatizacia] += advantage.privatizacia
      profits[:obstaravania] += advantage.obstaravania
    end

    profits
  end

end
