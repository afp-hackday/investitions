class PoliticalParty < ActiveRecord::Base

  def self.rebuild
    connection.execute "truncate table political_parties"
    connection.execute "INSERT INTO political_parties(name)
    select
      distinct(strana)
    from
      sponzori_stran"
  end


end
