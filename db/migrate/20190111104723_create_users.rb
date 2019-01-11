class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :uid
      t.integer :company_id
      t.timestamps
    end
  end
end
