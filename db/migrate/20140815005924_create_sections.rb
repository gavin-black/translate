class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :scenario
      t.string :title
      t.string :status
      t.integer :project

      t.timestamps
    end
  end
end
