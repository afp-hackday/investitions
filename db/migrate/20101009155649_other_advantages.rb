class OtherAdvantages < ActiveRecord::Migration
  def self.up
    add_column :advantages, :polnodotacie, :float
    add_column :advantages, :privatizacia, :float
    add_column :advantages, :obstaravania, :float
  end

  def self.down
    remove_column :advantages, :obstaravania
    remove_column :advantages, :privatizacia
    remove_column :advantages, :polnodotacie
  end
end
