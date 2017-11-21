class RemoveSkillsFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :skills, :string
  end
end
