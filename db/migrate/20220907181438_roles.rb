class Roles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :character_name
      # the id column is generated automatically for every table! no need to specify it here.
    end
  end
end
