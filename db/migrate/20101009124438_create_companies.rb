class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name, :limit => 200
      t.integer :ico
    end
  end

  def self.down
    drop_table :companies
  end
end
