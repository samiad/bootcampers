class CreateMissionSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :mission_skills do |t|
      t.references :skill, foreign_key: true
      t.references :mission, foreign_key: true

      t.timestamps
    end
  end
end
