class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :avatar
      t.string :status
      t.integer :translated
      t.integer :edited
      t.integer :total
      t.date :patch

      t.timestamps
    end
  end
end
