class PoliticalParty < ActiveRecord::Base

  def self.rebuild
    PoliticalParty.delete_all
    connection.execute "INSERT INTO political_parties(name)
    select
      distinct(strana)
    from
      sponzori_stran"
  end


end
