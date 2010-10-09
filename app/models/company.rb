class Company < ActiveRecord::Base

  def self.rebuild
    Company.delete_all
    connection.execute "INSERT INTO companies (id, ico, name)
    select
      null, ico_darcu,
      (case (firma_darcu)
               when '' then concat(meno_darcu, ' ', priezvisko_darcu) else firma_darcu
      end) as meno
    from
      sponzori_stran"
  end

end


