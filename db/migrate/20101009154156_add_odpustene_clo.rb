class AddOdpusteneClo < ActiveRecord::Migration
  def self.up
    add_column :advantages, :odpustene_clo, :float
  end

  def self.down
    remove_column :advantages, :odpustene_clo
  end
end
