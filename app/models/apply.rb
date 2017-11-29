class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  # validates_uniqueness_of :mission, scope: :user
end
