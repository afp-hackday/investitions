class AddIneDotacie < ActiveRecord::Migration
  def self.up
    add_column :advantages, :ine_dotacie, :float
  end

  def self.down
    remove_column :advantages, :ine_dotacie
  end
end
