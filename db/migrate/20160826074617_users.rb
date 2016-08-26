class Users < ActiveRecord::Migration[5.0]

  def up
    create_table :users, { :limit => 5, :primary_key => :id_user} do |t|
      t.string :username, :limit => 20
      t.string :nama_lengkap, :limit => 30
      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
