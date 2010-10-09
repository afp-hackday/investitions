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

    odpustene_clo = OdpusteneClo.sum(:celkova_odpustena_suma, :group => :rok, :conditions => ['ico', self[:ico]])
    odpustene_clo.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:odpustene_clo] = sum
    end

    konsolidacne = Konsolidacna.sum(:dlzna_suma, :group => :rok, :conditions => ['ico_dlznika = ?', self[:ico]])
    konsolidacne.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:konsolidacne] = sum
    end

    polnodotacie = Polnodotacie.sum(:pozadovana_suma, :group => :rok, :conditions => ['ico_prijimatela = ?', self[:ico]])
    polnodotacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:polnodotacie] = sum
    end

    privatizacie = Privatizacie.sum(:kupna_cena, :group => :rok, :conditions => ['ico_kupujuceho = ?', self[:ico]])
    privatizacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:privatizacie] = sum
    end

    obstaravania = Obstaravania.sum(:price, :group => :year, :conditions => ['supplier_ico= ?', self[:ico]])
    privatizacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:obstaravania] = sum
    end

    obstaravania2 = Obstaravania2.sum(:price, :group => :year, :conditions => ['supplier_ico= ?', self[:ico]])
    privatizacie.each do |year, sum|
      advantages[year] = {} if advantages[year].nil?
      advantages[year][:obstaravania] = sum
    end


    advantages.each do |year, sum|
      Advantage.create(:company_id => self[:id], :period => year, :eurofondy => sum[:eurofondy], :ine_dotacie => sum[:ine_dotacie], :odpustene_clo => sum[:odpustene_clo], :konsolidacne => sum[:konsolidacne], :polnodotacie => sum[:polnodotacie], :privatizacie => sum[:privatizacie], :obstaravania => sum[:obstaravania])
    end
  end
end
