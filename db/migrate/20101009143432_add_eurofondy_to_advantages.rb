class AddEurofondyToAdvantages < ActiveRecord::Migration
  def self.up
    add_column :advantages, :eurofondy, :float
  end

  def self.down
    remove_column :advantages, :eurofondy
  end
end
