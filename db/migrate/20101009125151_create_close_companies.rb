class CreateCloseCompanies < ActiveRecord::Migration
  def self.up
    create_table :close_companies do |t|
      t.integer :company_id
      t.integer :close_company_id
    end
  end

  def self.down
    drop_table :close_companies
  end
end
