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


end
