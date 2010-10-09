class AddKonsolidacna < ActiveRecord::Migration
  def self.up
    add_column :advantages, :konsolidacna, :float
  end

  def self.down
    remove_column :advantages, :konsolidacna
  end
end
