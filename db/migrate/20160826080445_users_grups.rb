class UsersGrups < ActiveRecord::Migration[5.0]

  def up
    create_table :users_grups , id: false do |t|
      t.integer :id_user, :limit => 5, :primary_key => true
      t.integer :id_grup, :limit => 5, :primary_key => true

      # t.index :id_user
      # t.index :id_grup
    end

   add_foreign_key :users_grups, :users, :column => :id_user, :primary_key => :id_user, :on_delete => :cascade, :name => "fk_user6"
   add_foreign_key :users_grups, :grups, :column => :id_grup, :primary_key => :id_grup, :on_delete => :cascade, :name => "fk_grup1"

  end

  def down
    drop_table :users_grups
  end

end
