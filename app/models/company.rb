class Company < ActiveRecord::Base
  def self.load_advantages
    Company.all.each { |company| company.compute_and_store_advantages }
  end

  def compute_and_store_advantages
    advantages = {}

    eurofondy = Eurofondy.sum(:vyska_grantu, :group => :rok, :conditions => ['ico_prijimatela = ?', self[:ico]])
    eurofondy.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:eurofondy] = sum
    end

    ine_dotacie = IneDotacie.sum(:vyska_dotacie, :group => :rok, :conditions => ['ico_prijimatela = ?', self[:ico]])
    ine_dotacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:ine_dotacie] = sum
    end

    odpustene_clo = OdpusteneClo.sum(:celkova_odpustena_suma, :group => :rok, :conditions => ['ico = ?', self[:ico]])
    odpustene_clo.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:odpustene_clo] = sum
    end

    konsolidacne = Konsolidacna.sum(:dlzna_suma, :group => :rok, :conditions => ['ico_dlznika = ?', self[:ico]])
    konsolidacne.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:konsolidacna] = sum
    end

    polnodotacie = Polnodotacie.sum(:pozadovana_suma, :group => :rok, :conditions => ['ico_prijimatela = ?', self[:ico]])
    polnodotacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:polnodotacie] = sum
    end

    privatizacie = Privatizacie.sum(:kupna_cena, :group => :rok, :conditions => ['ico_kupujuceho = ?', self[:ico]])
    privatizacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:privatizacia] = sum
    end

    obstaravania = Obstaravania.sum(:price, :group => :year, :conditions => ['supplier_ico= ?', self[:ico]])
    obstaravania.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:obstaravania] = sum
    end

    obstaravania2 = Obstaravania2.sum(:price, :group => :year, :conditions => ['supplier_ico= ?', self[:ico]])
    obstaravania2.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:obstaravania] = 0 if advantages[year][:obstaravania].nil?
      advantages[year][:obstaravania] += sum
    end


    advantages.each do |year, sum|
      Advantage.create(:company_id => self[:id], :period => year, :eurofondy => sum[:eurofondy], :ine_dotacie => sum[:ine_dotacie], :odpustene_clo => sum[:odpustene_clo], :konsolidacna => sum[:konsolidacna], :polnodotacie => sum[:polnodotacie], :privatizacia => sum[:privatizacia], :obstaravania => sum[:obstaravania])
    end
  end

  def self.rebuild
    connection.execute "truncate table companies"
    connection.execute "INSERT INTO companies (id, ico, name)
    select
      null, ico_darcu,
      (case (firma_darcu)
               when '' then concat(meno_darcu, ' ', priezvisko_darcu) else firma_darcu
      end) as meno
    from
      sponzori_stran
    group by ico_darcu"
  end

  def self.find_ico_by_name(name, address)

    name_parts = name.split(' ')
    searched_name = name_parts.shift

    #print "counting first searched_name: #{searched_name}....."
    result_count = Company.count_by_sql ["SELECT count(ico) FROM organisations WHERE name LIKE ?", "#{searched_name}%"]
    best_result_count = result_count
    best_result_term = searched_name

    #puts "done"

    while (result_count > 1 && name_parts.size > 0)
      searched_name = searched_name + " " + name_parts.shift
      #print "counting next searched_name: #{searched_name}......"
      result_count = Company.count_by_sql ["SELECT ico FROM organisations WHERE name LIKE ?", "#{searched_name}%"]
      if(result_count < best_result_count)
        best_result_count = result_count
        best_result_term = searched_name
      end
      #puts "done"
    end

    result = Company.find_by_sql ["SELECT ico FROM organisations WHERE name LIKE ?", "#{best_result_term}%"]

    if (result.size == 0)
      puts "--------------nikoho sme nenasli------------------"
      #ideas:
      # try to make fulltext search against name
      #result = Company.find_by_sql ["SELECT ico,address FROM regis_main WHERE MATCH(name) against (?)", searched_name];
      # try to make fulltext search against regions to find-out region and try the main loop again
      #puts fields[1]
      nil
    elsif (result.size > 1)
      puts "--------------stale prilis vela, idem na adresu------------------"
      {"ico" => [], "evidence" => nil} if address.nil?
      address_parts = address.split(' ')
      searched_address = address_parts.shift
      result_count = Company.count_by_sql ["SELECT ico FROM organisations WHERE name LIKE ? AND address LIKE ?", "#{best_result_term}%", "#{searched_address}%"]
      best_address_count = result_count
      best_address_term = searched_address
      while (result_count > 1 && address_parts.size > 0)
        searched_address = searched_address + " " + address_parts.shift
        result_count = Company.count_by_sql ["SELECT ico FROM organisations WHERE name LIKE ? AND address LIKE ?", "#{best_result_term}%", "#{searched_address}%"]
        if(result_count < best_address_count)
          best_address_count = result_count
          best_address_term = searched_address
        end
      end

      result = Company.find_by_sql ["SELECT ico FROM organisations WHERE name LIKE ? AND address LIKE ?", "#{best_result_term}%", "#{best_address_term}%"]
      if (result.size > 1)
        puts '----------aj s adresou prilis vela-----------'
        nil
      elsif (result.size == 1)
        puts "--------mame ICO------------"
        result[0].ico
      else
        puts '----------a s adresou sme nikoho nenasli-----------'
        nil
      end
    else
      puts "--------------ICO FOUND------------------"
      result[0].ico
    end
  end

  def self.map_ico_for_sponzori
    puts "starting..."
    SponzoriStran.all(:conditions => ["ico_darcu = ?", ""]).each do |item|
      print "looking for #{item.firma_darcu}..."
      ico = Company.find_ico_by_name(item.firma_darcu, item.adresa_darcu)
      SponzoriStran.update(item._record_id, {:ico_darcu => ico}) unless ico.nil?
      puts "finished"
    end
    puts "finished"
  end
end
