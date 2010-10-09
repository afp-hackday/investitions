class CreateAdvantages < ActiveRecord::Migration
  def self.up
    create_table :advantages do |t|
      t.references :company
      t.string :period, :limit => 10
    end
  end

  def self.down
    drop_table :advantages
  end
end
