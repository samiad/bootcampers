class MissionSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :mission
end
