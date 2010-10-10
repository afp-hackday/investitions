require 'lib/foaf_proxy'

class CloseCompany < ActiveRecord::Base

  belongs_to :company,  :class_name => "Company"
  belongs_to :close_company,    :class_name => "Company"

  def self.rebuild
    connection.execute("truncate table close_companies")

    Company.all.each do |company|
      companies = FoafProxy.related_companies(company.name)
      companies.each do |rel_comp|
        ico = Company.find_ico_by_name(rel_comp, nil)
        unless ico.nil?
          comp = Company.create(:name => rel_comp, :ico => ico) if (comp = Company.first(:conditions => ["ico = ?", ico])).nil?
          CloseCompany.create(:company_id => company.id, :close_company_id => comp.id) 
        end
      end
    end
  end


end
