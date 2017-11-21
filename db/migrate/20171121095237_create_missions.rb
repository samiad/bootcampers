class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.text :description
      t.string :skills
      t.integer :price

      t.timestamps
    end
  end
end
