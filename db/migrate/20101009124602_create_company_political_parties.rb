class CreateCompanyPoliticalParties < ActiveRecord::Migration
  def self.up
    create_table :company_political_parties do |t|
      t.references :political_party
      t.references :company
      t.number :money_transfered
      t.string :period, :limit => 10
    end
  end

  def self.down
    drop_table :company_political_parties
  end
end
