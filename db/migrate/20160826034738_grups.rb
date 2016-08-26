class Grups < ActiveRecord::Migration[5.0]
  # def change
  def up
    create_table :grups, {:limit => 5, :primary_key => :id_grup} do |t|
      # t.integer :id_grups, :limit => 5
      t.string :nama_grup, :limit => 20
      t.integer :kategori, :limit => 3
      t.timestamps
    end
    # add a CHECK constraint
    # execute <<-SQL
    #  ALTER TABLE grups ADD COLUMN test text NOT NULL;
    # SQL
  end

  def down
    drop_table :grups
  end
end
