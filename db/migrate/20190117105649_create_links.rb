class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.integer :company_id
      t.timestamps
    end
  end
end
