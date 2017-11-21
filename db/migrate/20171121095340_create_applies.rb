class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.references :user, foreign_key: true
      t.references :mission, foreign_key: true
      t.date :accepted_at
      t.date :declined_at

      t.timestamps
    end
  end
end
