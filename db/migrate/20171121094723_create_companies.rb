class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :siret
      t.string :vat_number
      t.string :address
      t.string :activity_code
      t.string :website
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
