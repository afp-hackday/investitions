class CompanyPoliticalParty < ActiveRecord::Base

  def self.rebuild
    CompanyPoliticalParty.delete_all
    connection.execute "INSERT INTO company_political_parties(company_id, political_party_id, sum, period)
    select
      c.id, p.id, hodnota_daru, rok
    from
      sponzori_stran s, companies c, political_parties p
    where
      s.strana = p.name and
      (c.name = concat(s.meno_darcu + ' ' + s.priezvisko_darcu) or (s.firma_darcu = c.name) )"
  end
  
end
