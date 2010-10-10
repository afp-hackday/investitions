class CompanyPoliticalParty < ActiveRecord::Base


  def self.rebuild
    connection.execute "truncate table company_political_parties"
    connection.execute "INSERT INTO company_political_parties(company_id, political_party_id, sum, period)
    select
      comp.id, part.id, sum(hodnota_daru) as sum, rok
    from
      sponzori_stran sp, companies comp, political_parties part
    where
      sp.strana = part.name
      and
      (concat(sp.meno_darcu, ' ', sp.priezvisko_darcu) = comp.name or sp.firma_darcu = comp.name)
    group by comp.id, part.id, rok"
  end
  
end
