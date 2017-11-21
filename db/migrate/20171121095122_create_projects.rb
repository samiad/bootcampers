class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
      t.string :request_title
      t.text :request_description
      t.integer :budget
      t.date :request_delivery_at
      t.date :accepted_at
      t.string :title
      t.text :description
      t.string :category
      t.string :skills
      t.integer :price
      t.date :agreed_delivery_at
      t.date :signed_off_at
      t.date :delivered_at
      t.date :scoped_at
      t.date :paid_off_at

      t.timestamps
    end
  end
end
