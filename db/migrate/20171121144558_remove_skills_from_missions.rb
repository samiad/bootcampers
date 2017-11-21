class RemoveSkillsFromMissions < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :skills, :string
  end
end
