class ChangeHabtmToRanking < ActiveRecord::Migration[6.0]
  def change
    rename_table :gifs_labels, :rankings
    add_column :rankings, :rank, :integer, default: 0

  end
end
