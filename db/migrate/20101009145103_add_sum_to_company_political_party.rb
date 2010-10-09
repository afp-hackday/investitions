class AddSumToCompanyPoliticalParty < ActiveRecord::Migration
  def self.up
    add_column :company_political_parties, :sum, :float
  end

  def self.down
    remove_column :company_political_parties, :sum
  end
end
