class CreateRelationshipTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gifs_labels do |t|
      t.integer :gif_id
      t.integer :label_id
    end
  end
end
