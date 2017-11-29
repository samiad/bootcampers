class AddPaymentToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :payment, :jsonb
  end
end
