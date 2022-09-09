class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :title
      t.references :company_employee, null: false, foreign_key: true
      t.timestamps
    end
  end
end
